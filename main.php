<?php
session_start();

$isLoggedIn = isset($_SESSION['user_id']);
if ($isLoggedIn) {
  $name = $_SESSION['name'];
  $surname = $_SESSION['surname'];
  $email = $_SESSION['email'];
}

$host = 'localhost';
$username = 'root';
$password = '';
$dbname = 'biblioteka';

$conn = new mysqli($host, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Błąd połączenia: " . $conn->connect_error);
}

$query = "SELECT 
          ksiazki.id,
          ksiazki.tytul, 
          ksiazki.opis, 
          ksiazki.img_src, 
          ksiazki.dostepnosc,
          SUM(recenzje.ocena = 'pozytywna') AS ile_poleca,
          SUM(recenzje.ocena = 'negatywna') AS ile_nie_poleca
      FROM 
          ksiazki
      LEFT JOIN 
          recenzje ON ksiazki.id = recenzje.id_ksiazka
      GROUP BY 
          ksiazki.id";
$result = $conn->query($query);
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
        <h2 class="m-0">Dostępne książki</h2>
      </div>
      <div class="content">

        <?php
          if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
              $bookid = $row['id'];
              $tytul = $row['tytul'];
              $opis = $row['opis'];
              $imgSrc = $row['img_src'];
              $ilePozyt = $row['ile_poleca'];
              $ileNegat = $row['ile_nie_poleca'];
              echo "
              <a class='text-decoration-none text-dark' href='book.php?id=$bookid'>
              <div class='book-card'>
                <div class='book-img'>
                ";
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
                  <div class='book-description'>
                    <p class='text-truncate'>";

              if ($opis) {
                echo $opis;
              } else {
                echo '<p class="m-0" style="font-size:10px;">Brak opisu</p>';
              }

              echo "</p>
                  </div>
                  <div class='reviews m-0'>";
              if (is_null($ilePozyt)) {
                echo "Brak ocen";
              } else if ($ilePozyt >= $ileNegat) {
                echo "
                    <p>$ilePozyt użytkowników poleca</p>
                    ";
              } else {
                echo "
                    <p>$ileNegat użytkowników nie poleca</p>
                    ";
              }
              echo "
                    </div>
                  <div class='book-action'>";

              if ($isLoggedIn) {
                if ($row['dostepnosc'] == 1) {
                  echo '<button class="button-main">Zarezerwuj książkę</button>';
                } else {
                  echo '              
                      <a href="bookreserv.php" class="btn btn-danger w-100">
                        Książka niedostępna
                        <i class="fa-solid fa-ban"></i>
                      </a>';
                }
              } else {
                echo '              
                      <a href="register.php" class="btn btn-warning w-100">
                        Wymagana rejestracja
                      </a>';
              }

              echo '
                  </div>
                  </div>
                </div>
                </a>
              ';
            }
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