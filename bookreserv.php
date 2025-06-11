<?php
session_start();

// Sprawdzenie czy istnieje juz zalogowany uzytkownik
$isLoggedIn = isset($_SESSION['user_id']);
if ($isLoggedIn) {
    $userid = $_SESSION['user_id'];
    $name = $_SESSION['name'];
    $surname = $_SESSION['surname'];
    $email = $_SESSION['email'];
}

  require_once("db_connection.php");

if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $readid = (int) $_GET['id'];
} else {
    header("Location: main.php");
    exit;
}

$info = "";

$today = date('Y-m-d');
$enddate = date('Y-m-d', strtotime('+1 month'));

$checkQuery = "SELECT dostepnosc FROM ksiazki WHERE id = $readid";
$checkResult = $conn->query($checkQuery);

if ($checkResult && $checkResult->num_rows > 0) {
    $row = $checkResult->fetch_assoc();
    if ($row['dostepnosc'] == 1) {
        // Dodanie rezerwacji
        $query = "INSERT INTO rezerwacje (id_ksiazka, id_uzytkownik, data_wypozyczenia, data_wygasniecia) VALUES ($readid, $userid, '$today', '$enddate')";
        
        if ($conn->query($query)) {
            // Zmiana dostępności książki na 0
            $updateQuery = "UPDATE ksiazki SET dostepnosc = 0 WHERE id = $readid";
            if ($conn->query($updateQuery)) {
                $info = "Rezerwacja zakończona sukcesem.";
            } else {
                $info = "Rezerwacja zakończona, ale nie udało się zaktualizować dostępności: " . $conn->error;
            }

            header("Refresh: 1; url=" . $_SERVER['HTTP_REFERER']);
        } else {
            echo "Błąd podczas rezerwacji: " . $conn->error;
        }
    } else {
        $info = "Książka nie jest dostępna do rezerwacji.";
        header("Refresh: 1; url=main.php");
    }
} else {
    $info = "Nie znaleziono książki o podanym ID.";
    header("Refresh: 1; url=" . $_SERVER['HTTP_REFERER']);
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trwa rezerwowanie...</title>

<!-- BOOTSTRAP -->
<link
  href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
  rel="stylesheet"
  integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
  crossorigin="anonymous" />

<!-- FontAwesome Icons -->
<script
  src="https://kit.fontawesome.com/4798a03daf.js"
  crossorigin="anonymous"></script>

<link rel="stylesheet" href="assets/css/main/style.css" />
</head>
<body class="d-flex flex-column justify-content-center align-center">
<div class="spinner-border text-success" style="width: 100px; height: 100px;" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<p><?php echo $info ?></p>
  <!-- BOOTSTRAP -->
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"></script>
</body>
</html>
