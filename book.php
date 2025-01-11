<?php
  session_start();

  $isLoggedIn = isset($_SESSION['user_id']);
  if ($isLoggedIn) {
    $name = $_SESSION['name'];
    $surname = $_SESSION['surname'];
    $email = $_SESSION['email'];
  }
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
    <nav class="nav-content">
      <div class="nav-title">
        <i class="fa-solid fa-book-open"></i>
        <h2 class="m-0">Biblioteka</h2>
      </div>
      <div class="nav-links">
        <button class="nav-link nav-active">
          <i class="fa-solid fa-book-bookmark"></i> Zarezerwuj książkę
        </button>
        <button class="nav-link">
          <i class="fa-regular fa-calendar-check"></i> Moje rezerwacje
        </button>
        <button class="nav-link">
          <i class="fa-solid fa-clock-rotate-left"></i> Historia rezerwacji
        </button>
      </div>
      <div class="user-link w-100">
        <?php
        if ($isLoggedIn) {
          echo '
          <div class="accordion accordion-flush" id="accordionFlushExample">
            <div class="accordion-item">
              <button
                class="nav-link user-link-btn accordion-button collapsed"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#flush-collapseOne"
                aria-expanded="false"
                aria-controls="flush-collapseOne"
              >
              
                      <i class="fa-solid fa-user me-2"></i>
                      <p class="m-0 text-truncate user-name">' . $name . ' ' . $surname . '</p>
                      </button>
                      <div
                      id="flush-collapseOne"
                      class="accordion-collapse collapse"
                      aria-labelledby="flush-headingOne"
                      data-bs-parent="#accordionFlushExample"
                      >
                      <div class="accordion-body d-flex flex-column gap-3">
                      <button class="nav-link">Ustawienia</button>
                      <a href="logout.php" class="nav-link">Wyloguj się</a>
                      </div>
                      </div>
                      ';
        }else {
          echo '
            <a href="login.php" class="button-main text-decoration-none mb-4">Zaloguj się</a>
            <a href="register.php" class="button-main text-decoration-none">Zarejestruj się</a>
          ';
        }
        ?>
      </div>
      </div>
      </div>
    </nav>
    <div class="main-content">
      <div class="title-wrapper mb-3">
        <h2 class="m-0">Zarezerwuj książkę</h2>
      </div>
      <div class="content">
        <div class="book-desc-book">
          <div class="book-desc-desc">
                <div class="book-desc-photo">
                  <img src="assets/images/ksiazki/solaris.jpg" alt="" />
                </div>
                <div class="book-desc-reserve-main">
                  <h3 class="book-desc-title">Solaris</h3>
                  <div class="book-desc-reserve">
                    <div class="book-desc-authline">
                      <div class="book-desc-author">
                          <p>Stanisław Lem</p>
                      </div>
                      <div class="book-desc-rating">
                            <div class="book-desc-rating-rating">
                              <p>5.0</p>
                            </div>
                            <div class="book-desc-rating-stars">
                              <img src="assets/images/star.svg" alt="" width="22" height="21">
                              <img src="assets/images/star.svg" alt="" width="22" height="21">
                              <img src="assets/images/star.svg" alt="" width="22" height="21">
                              <img src="assets/images/star.svg" alt="" width="22" height="21">
                              <img src="assets/images/star.svg" alt="" width="22" height="21">
                            </div>
                      </div>
                      <div class="book-desc-opinions">
                          <p>(1234)</p>
                      </div>
                    </div>
                    <div class="book-desc-publisher">
                      <p>Wydawnictwo</p>
                    </div>
                    <div class="book-desc-releasedate">
                      <p>Data wydania: </p>
                    </div>
                    <div class="book-desc-language">
                      <p>Język: </p>
                    </div>
                    <div class="book-desc-availability">
                      <p>Dostępny</p>
                    </div>
                    <div class="book-desc-reserve-button">
                      <button class="button-reserve">ZAREZERWUJ</button>
                    </div>
                  </div>

                </div>
          </div>
          <div class="book-desc-desc">
            <div class="book-desc-desc-text">
              <h4>Opis książki</h4> <br>
              <p>
                „Solaris” Stanisława Lema to klasyka literatury science fiction, której akcja rozgrywa się na tajemniczej planecie Solaris. 
                Naukowcy badający planetę stają w obliczu nieznanych form życia, które materializują ich najgłębsze lęki i pragnienia. Główny bohater, Krzysztof Kelvin, zmaga się z własnymi traumami i relacjami, 
                szczególnie <br>z zjawiskami wywołanymi przez ocean Solaris. Książka porusza filozoficzne pytania o naturę ludzką, granice poznania i niemożność pełnej komunikacji z obcą inteligencją. 
                To głęboka refleksja na temat izolacji, tożsamości i naszych lęków.</p>
            </div>
        </div>
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