<?php
session_start();

$host = 'localhost';
$dbname = 'biblioteka';
$user = 'root';
$pass = '';

$conn = new mysqli($host, $user, $pass, $dbname);

if ($conn->connect_error) {
    die("Błąd połączenia: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = trim($_POST['email']);
    $password = trim($_POST['password']);
    $rpassword = trim($_POST['rpassword']);
    $name = trim($_POST['name']);
    $surname = trim($_POST['surname']);
    $data_zal = date('Y-m-d');
    $status = "aktywny";

    $errorEmail = "";

    $stmt = $conn->prepare("SELECT id FROM uzytkownicy WHERE adres_email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $stmt->store_result();

      if ($stmt->num_rows > 0) {
        $errorEmail = "Ten email już istnieje w bazie danych";
      } else {

        if($password !== $rpassword){
          $errorPassword = "Hasła nie mogą sie różnić";
        } else {
          $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
  
          $stmt = $conn->prepare(
              "INSERT INTO uzytkownicy (imie, nazwisko, adres_email, haslo, data_zal, status) 
               VALUES (?, ?, ?, ?, ?, ?)"
          );
          $stmt->bind_param("ssssss", $name, $surname, $email, $hashedPassword, $data_zal, $status);
  
          if ($stmt->execute()) {

              $userId = $stmt->insert_id;

              $_SESSION['user_id'] = $userId;
              $_SESSION['email'] = $email;
              $_SESSION['name'] = $name;
              $_SESSION['surname'] = $surname;

              header("Location: main.php");
              exit;
          } else {
              echo "Błąd podczas rejestracji: " . $stmt->error;
          }
        }
      }
      $stmt->close();
    }

$conn->close();
?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Rejestracja</title>
    <link rel="stylesheet" href="assets/css/index/style.css" />
    <!-- FontAwesome Icons -->
    <script src="https://kit.fontawesome.com/4798a03daf.js" crossorigin="anonymous"></script>
  </head>
  <body>
    <div class="form-wrapper">
      <div class="form">
        <h2 class="form-title">Rejestracja</h2>
        <form action="" method="POST">
            <div class="double-row">
                <div class="col">
                    <label for="name">Imię</label>
                    <div class="input">
                      <input
                        type="text"
                        name="name"
                        id="name"
                        placeholder="Podaj imię"
                        required
                      />
                    </div>
                </div>
                <div class="col">
                    <label for="surname">Nazwisko</label>
                    <div class="input">
                      <input
                        type="text"
                        name="surname"
                        id="surname"
                        placeholder="Podaj Nazwisko"
                        required
                      />
                    </div>
                </div>
            </div>
          <div class="form-row">
            <label for="email">Email</label>
            <div class="input">
              <input
                type="email"
                name="email"
                id="email"
                placeholder="Podaj Email"
                required
              />
            </div>
          </div>
          <div class="form-row">
            <label for="password">Hasło</label>
            <div class="input">
              <input
                type="password"
                name="password"
                id="password"
                placeholder="Podaj Hasło"
                required
              />
            </div>
          </div>
          <div class="form-row">
            <label for="rpassword">Powtórz hasło</label>
            <div class="input">
              <input
                type="password"
                name="rpassword"
                id="rpassword"
                placeholder="Powtórz hasło"
                required
              />
            </div>
          </div>
          <div class="form-row">
            <button type="submit">Zarejestruj się</button>
          </div>

          <?php
            if(isset($errorEmail)){
              echo '<p style="color:red; font-size:15px;" class="m-0">'.$errorEmail.'</p>';
            }

            if(isset($errorPassword)){
              echo '<p style="color:red; font-size:15px;" class="m-0">'.$errorPassword.'</p>';
            }
          ?>
        </form>
        <p class="link_to">
          Masz już konto?
          <a href="login.php" class="link">Zaloguj się!</a>
        </p>
      </div>
      <div class="form-image">
        <img src="assets/images/a-book-2306181_1920.webp" alt="book" />
      </div>
    </div>
    <script src="assets/js/script.js"></script>
  </body>
</html>