<?php
  session_start();

  // Sprawdzenie czy istnieje juz zalogowany uzytkownik
  $isLoggedIn = isset($_SESSION['user_id']);
  if ($isLoggedIn) {
    $userid = $_SESSION['user_id'];
    $name = $_SESSION['name'];
    $surname = $_SESSION['surname'];
  } else {
    header("Location: login.php");
  }

  require_once("db_connection.php");

  $stmt = $conn->prepare("SELECT imie, nazwisko, nr_tel, adres_email FROM uzytkownicy WHERE id = ?");
  $stmt->bind_param('i', $userid);
  $stmt->execute();

  $result = $stmt->get_result();

  if ($result->num_rows > 0) {
    $user = $result->fetch_assoc();

    $imie = $user['imie'];
    $nazwisko = $user['nazwisko'];
    $nrTel = $user['nr_tel'];
    $email = $user['adres_email'];
  }

  $hasloError = "";

  if($_SERVER['REQUEST_METHOD'] === 'POST'){
    $newName = $_POST['imie'];
    $newNazwisko = $_POST['nazwisko'];
    $newTel = $_POST['tel'];
    $newHaslo = $_POST['haslo'];
    $powthaslo = $_POST['powthaslo'];

    $name = $newName;
    $surname = $newNazwisko;

    echo "test";
    if (!empty($newHaslo) || !empty($powthaslo)) {
      if ($newHaslo == $powthaslo) {
        $hashedPassword = password_hash($newHaslo, PASSWORD_DEFAULT);

        // Definiowanie zapytania SQL do aktualizacji danych użytkownika w tabeli 'uzytkownicy'
        // Zmieniane będą kolumny: imie, nazwisko, nr_tel, haslo dla użytkownika o podanym id
        $updateQuery = "UPDATE uzytkownicy SET imie = ?, nazwisko = ?, nr_tel = ?, haslo = ? WHERE id = ?";

        // Przygotowanie zapytania, aby uniknąć problemów z SQL Injection
        $stmt = $conn->prepare($updateQuery);

        // s - string (tekst) dla imienia, nazwiska, numeru telefonu i hasła
        // i - integer (liczba całkowita) dla id użytkownika
        $stmt->bind_param("ssssi", $newName, $newNazwisko, $newTel, $hashedPassword, $userid);

        if ($stmt->execute()) {
            header('Location: settings.php');
            exit;
        } else {
            echo "Błąd podczas aktualizacji: " . $conn->error;
        }

        $stmt->close();
      } else {
          $hasloError = "Hasła muszą być identyczne.";
        }
    } else {
      $updateQuery = "UPDATE uzytkownicy SET imie = ?, nazwisko = ?, nr_tel = ? WHERE id = ?";
      $stmt = $conn->prepare($updateQuery);
      $stmt->bind_param("sssi", $newName, $newNazwisko, $newTel, $userid);

      if ($stmt->execute()) {
        header('Location: settings.php');
        exit;
      } else {
          echo "Błąd podczas aktualizacji: " . $conn->error;
      }
      $stmt->close();
    }
  }

  $stmt->close();
  $conn->close();
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Ustawienia <?php echo $imie." ".$nazwisko?></title>

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
        <h2 class="m-0">Ustawienia użytkownika</h2>
      </div>
      <div class="content settings-content overflow-auto gap-1 p-5">
        <form method="POST">
          <div class="user-info w-100">
            <p class="user-welcome">Witaj <?php echo $imie ?>!</p>
          </div>
          <div class="user-settings">
            <ul class="list-of-parameters">
              <li class="form-row">
                <label for="imie">Imię</label>
                <div class="input">
                  <div class="icon-wrapper">
                    <i class="fa-solid fa-user"></i>
                  </div>
                  <input
                    type="text"
                    name="imie"
                    id="imie"
                    placeholder="Imię"
                    value="<?php echo $imie ?>" />
                </div>
              </li>
              <li class="form-row">
                <label for="email">Nazwisko</label>
                <div class="input">
                  <div class="icon-wrapper">
                    <i class="fa-solid fa-user"></i>
                  </div>
                  <input
                    type="text"
                    name="nazwisko"
                    id="nazwisko"
                    placeholder="Nazwisko"
                    value="<?php echo $nazwisko ?>" />
                </div>
              </li>
              <li class="form-row">
                <label for="email">Email</label>
                <div class="input">
                  <div class="icon-wrapper">
                    <i class="fa-solid fa-envelope"></i>
                  </div>
                  <input
                    type="email"
                    name="email"
                    disabled
                    id="email"
                    placeholder="Email"
                    readonly
                    value="<?php echo $email ?>" />
                </div>
              </li>
              <li class="form-row">
                <label for="tel">Telefon</label>
                <div class="input">
                  <div class="icon-wrapper">
                    <i class="fa-solid fa-phone"></i>
                  </div>
                  <input
                    type="tel"
                    name="tel"
                    id="tel"
                    placeholder="Telefon"
                    value="<?php echo $nrTel ?>" />
                </div>
              </li>
              <li class="form-row">
                <label for="haslo">Hasło</label>
                <div class="input">
                  <div class="icon-wrapper">
                    <i class="fa-solid fa-lock"></i>
                  </div>
                  <input
                    type="password"
                    name="haslo"
                    id="haslo"
                    placeholder="Hasło" />
                </div>
                <?php if($hasloError) echo "<p class='text-danger'>$hasloError</p>"; ?>

              </li>
              <li class="form-row">
                <label for="powt-haslo">Powtórz hasło</label>
                <div class="input">
                  <div class="icon-wrapper">
                    <i class="fa-solid fa-lock"></i>
                  </div>
                  <input
                    type="password"
                    name="powthaslo"
                    id="powt-haslo"
                    placeholder="Powtórz hasło" />
                  </div>
                  <?php if($hasloError) echo "<p class='text-danger'>$hasloError</p>"; ?>
              </li>
            </ul>
          </div>
          <div class="button-section">
            <button class="button-main" type="submit">Zapisz zmiany</button>
          </div>
        </form>
      </div>
  </main>
    <!-- BOOTSTRAP -->
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
</body>
