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

  // Sprawdzenie czy w parametrze jest id ksiazki
  if (isset($_GET['id'])) {
    $readid = $_GET['id'];
  }

  $tytul = "Książka";

  $query = "SELECT 
        ksiazki.id AS ksiazki_id,
        ksiazki.tytul AS ksiazki_tytul,
        ksiazki.id_autor AS ksiazki_autor,
        ksiazki.wydawnictwo AS ksiazki_wydawnictwo,
        ksiazki.data_wydania AS ksiazki_data,
        ksiazki.opis AS ksiazki_opis,
        ksiazki.img_src AS ksiazki_img,
        ksiazki.dostepnosc AS ksiazki_dostepnosc,
        ksiazki.jezyk AS ksiazki_jezyk,
        autorzy.id AS autorzy_id,
        autorzy.imie AS autorzy_imie,
        autorzy.nazwisko AS autorzy_nazwisko,
        SUM(recenzje.ocena = 'pozytywna') AS ile_poleca,
        SUM(recenzje.ocena = 'negatywna') AS ile_nie_poleca
    FROM 
        ksiazki
    LEFT JOIN 
        recenzje ON recenzje.id_ksiazka = ksiazki.id
    LEFT JOIN
        autorzy ON ksiazki.id_autor = autorzy.id
    WHERE 
        ksiazki.id = $readid
    GROUP BY 
        ksiazki.id, autorzy.id";
  $result = $conn->query($query);

  $queryRec = "SELECT data_dodania, recenzja, ocena, uzytkownicy.imie AS user_imie, uzytkownicy.nazwisko AS user_nazwisko FROM recenzje inner join uzytkownicy on recenzje.id_uzytkownik = uzytkownicy.id WHERE id_ksiazka  = $readid ORDER BY data_dodania ASC";
  $resultRec = $conn->query($queryRec);

  if (isset($_POST['recenzjauzytkownika']) && isset($_POST['ocenauzytkownika']) && !empty($_POST['recenzjauzytkownika']) && !empty($_POST['ocenauzytkownika'])) {
    $data_dod = date('Y-m-d');
    
    $recenzjauzytkownika = $_POST['recenzjauzytkownika'];
    $ocenauzytkownika = $_POST['ocenauzytkownika'];

    $query = "INSERT INTO recenzje (id_ksiazka, id_uzytkownik, data_dodania, recenzja, ocena) 
              VALUES ($readid, $userid, '$data_dod', '$recenzjauzytkownika', '$ocenauzytkownika')";


    if ($conn->query($query) === TRUE) {
      header("Location: book.php?id=$readid");
      exit();
    } else {
        echo "Błąd: " . $conn->error;
    }
}
  $conn->close();
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Atlas</title>

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
        <h2 class="m-0">Zarezerwuj książkę</h2>
      </div>
      <div class="content overflow-auto">
        <?php
        while ($row = mysqli_fetch_assoc($result)) {
          $bookid = $row['ksiazki_id'];
          $tytul = $row['ksiazki_tytul'];
          $autorimie = $row['autorzy_imie'];
          $autornazwisko = $row['autorzy_nazwisko'];
          $opis = $row['ksiazki_opis'];
          $data = $row['ksiazki_data'];
          $wydawnictwo = $row['ksiazki_wydawnictwo'];
          $ile_poleca = $row['ile_poleca'];
          $ile_nie_poleca = $row['ile_nie_poleca'];
          $imgSrc = $row['ksiazki_img'];
          $jezyk = $row['ksiazki_jezyk'];
          $dostepnosc = $row['ksiazki_dostepnosc'];


          $ocena = $ile_poleca + $ile_nie_poleca;

          if ($ocena == 0)
            $ocena_wsp = "Brak ocen";
          else if ($ocena > 0 && $ile_poleca > 0)
            $ocena_wsp = round(5 * $ile_poleca / $ocena, 1);
          else
            $ocena_wsp = "Brak ocen";

          if ($dostepnosc == 1)
            $dostepne = "<p class='text-success'>Dostępna</p>";
          else
            $dostepne = "<p class='text-danger'>Niedostępna</p>";

          if ($readid == $bookid) {

            echo  '<div class="book-desc-book">
                              <div class="book-desc-desc">
                                <div class="book-desc-photo">';
            if (is_null($imgSrc)) {
              echo "
                                    <div class='no-photo'>Brak zdjęcia</div>
                                  ";
            } else {
              echo '
                                    <img src="assets/images/' . $imgSrc . '" alt="" />';
            }
            echo '</div>
                              <div class="book-desc-reserve-main">';
            echo  "<h3 class=\"book-desc-title\">$tytul</h3>";
            echo  '<div class="book-desc-reserve">
                                <div class="book-desc-authline">
                                  <div class="book-desc-author">';
            echo "<p>$autorimie $autornazwisko</p>";
            echo '</div>
                                  <div class="book-desc-rating">
                                    <div class="book-desc-rating-rating">';
            echo "<p>$ocena_wsp</p>";
            echo '</div>
                                    <div class="book-desc-rating-stars">
                                      <i class="fa-solid fa-star"></i>
                                    </div>
                                  </div>
                                  <div class="book-desc-opinions">';
            echo "<p>$ocena</p>";
            echo '</div>
                                </div>
                                <div class="book-desc-publisher">';
            echo  "<p>$wydawnictwo</p>";
            echo '</div>
                                <div class="book-desc-releasedate">';
            echo  "<p>Data wydania: $data</p>";
            echo '</div>
                                <div class="book-desc-language">';
            echo "<p>Język: $jezyk</p>";
            echo '</div>
                                <div class="book-desc-availability">';
            echo  "$dostepne";
            echo '</div>
                                <div class="book-desc-reserve-button">';
            if($isLoggedIn){
              if ($dostepnosc == 1) {
                echo  "
                        <a href='bookreserv.php?id=$readid' class='btn btn-success w-100 btn-lg'>Zarezerwuj</a>
                      ";
              } else {
                echo '
                      <button class="btn btn-danger w-100 btn-lg">Książka niedostępna</button>
                    ';
              }
                  } else {
                    
                    echo  "
                            <a href='register.php' class='btn btn-warning w-100 btn-lg'>Wymagana rejestracja</a>
                          ";
            }


            echo '</div>
                              </div>
                            </div>
                      </div>';
            if (!is_null($opis)) {
              echo "<div class=\"book-desc-desc\">
                          <div class=\"book-desc-desc-text\">
                            <h4>Opis książki</h4> <br>
                            <p>$opis</p>
                        </div>";
            } else
              echo '<div class="book-desc-desc-text">
                          <h4>Opis książki</h4> <br>
                            <p>Brak opisu</p>
                        </div>';
          }
        }
        ?>
        <div class="recenzje-wrapper mt-5">
          <h3>Recenzje</h3>
          <?php
            if($isLoggedIn){
              echo '
              <form method="POST">
                  <input class="form-control" type="text" name="recenzjauzytkownika" id="">
                  <select name="ocenauzytkownika" id="">
                    <option value="pozytywna" selected>Pozytywna</option>
                    <option value="negatywna">Negatywna</option>
                  </select>
                  <button class="btn btn-success" type="submit">Dodaj</button>
              </form>
              ';
            } else {
              echo "<p>Aby dodać recenzje należy się zalogować</p>";
            }
          ?>
          <?php
                if($resultRec->num_rows>0){
                  while($row = $resultRec->fetch_assoc()){
                    $dataDodania = $row['data_dodania'];
                    $recenzja = $row['recenzja'];
                    $ocena = $row['ocena'];
                    $userImie = $row['user_imie'];
                    $userNazwisko = $row['user_nazwisko'];
                  
                    echo "
                      <div class='comment'>
                        <div class='img'>
                          <i class='fa-solid fa-user' style='font-size:30px;'></i>
                        </div>
                        <div class='comment-details'>

                          <div class='comment-header'>
                            <span class='name'>$userImie $userNazwisko</span>
                            <span class='date'>
                              <span class='review text-bold'>Ocena: $ocena</span>
                              $dataDodania
                            </span>
                          </div>
                          $recenzja
                        </div>
                      </div>
                    ";
                  }
                } else {
                  echo "<p>Brak recenzji</p>";
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