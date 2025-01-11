<?php

session_start();

$isLoggedIn = isset($_SESSION['user_id']);
if ($isLoggedIn) {
    $name = $_SESSION['name'];
    $surname = $_SESSION['surname'];
    $email = $_SESSION['email'];
    $userid = $_SESSION['user_id'];
} else {
    header("Location: login.php");
}

$host = 'localhost';
$username = 'root';
$password = '';
$dbname = 'biblioteka';

$conn = new mysqli($host, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Błąd połączenia: " . $conn->connect_error);
}

$query = "SELECT rezerwacje.id, ksiazki.tytul, ksiazki.opis, ksiazki.img_src, rezerwacje.data_wygasniecia, rezerwacje.data_wypozyczenia, rezerwacje.id_ksiazka, rezerwacje.id_uzytkownik from ksiazki inner join rezerwacje on ksiazki.id = rezerwacje.id_ksiazka where CURRENT_DATE >= rezerwacje.data_wygasniecia and id_uzytkownik = $userid;";

$result = $conn->query($query);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

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

<body>
    <main>
        <?php
            include("components/side_menu.php");
        ?>
        <div class="main-content">
            <div class="title-wrapper mb-3">
                <h2 class="m-0">Historia Twoich rezerwacji</h2>
            </div>
            <div class="content overflow-auto">
                <?php
                    if($result->num_rows>0){
                        while ($row = $result->fetch_assoc()) {
                            $tytul = $row['tytul'];
                            $opis = $row['opis'];
                            $imgSrc = $row['img_src'];
                            $datawypo = $row['data_wypozyczenia'];
                            $datawyga = $row['data_wygasniecia'];

                            echo '
                            <div class="book-card">
                              <div class="book-img">
                              ';
                            if (is_null($imgSrc)) {
                              echo '<p style="font-size:10px;">Brak zdjęcia</p>';
                            } else {
                              echo '<img src="assets/images/' . $imgSrc . '" alt="" />';
                            }
                            echo "
                                </div>
                              <div class='book-body'>
                                <div class='book-title'>
                                  <p>$tytul</p>
                                </div>
                                <p>Data wypożyczenia: $datawypo</p>
                                <p>Data wygaśnięcia: $datawyga</p>
                                <div class='book-description'>
                                  <p class='text-truncate'>";
                
                            if ($opis) {
                              echo $opis;
                            } else {
                              echo '<p class="m-0" style="font-size:10px;">Brak opisu</p>';
                            }
                            echo "</p>
                                </div>";
                            echo "
                            <div class='book-action'>
                                <button class='btn btn-success w-100' type='button'>
                                    Zarezerwuj ponownie
                                </button>
                            </div>
                            ";

                        }
                    } else {
                        echo "<p class='h5 mt-4'>Nie wypożyczyłeś jeszcze książki</p>";
                    }
                ?>
            </div>
        </div>
    </main>


    <!-- BOOTSTRAP -->
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
</body>

</html>