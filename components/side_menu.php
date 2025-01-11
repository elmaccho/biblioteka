<nav class="nav-content">
    <div class="nav-title">
        <i class="fa-solid fa-book-open"></i>
        <h2 class="m-0">Biblioteka</h2>
    </div>
    <div class="nav-links">
        <a href="main.php" class="nav-link">
            <i class="fa-solid fa-book-bookmark"></i> Zarezerwuj książkę
        </a>
        <?php
        if ($isLoggedIn) {
            echo '
                            <a href="profile.php" class="nav-link nav-active">
                                <i class="fa-regular fa-calendar-check"></i> Moje rezerwacje
                            </a>
                            <a href="hisreserv.php" class="nav-link">
                                <i class="fa-solid fa-clock-rotate-left"></i> Historia rezerwacji
                            </a>
                        ';
        }
        ?>
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
                        <a href="settings.php" class="nav-link">Ustawienia</a>
                        <a href="logout.php" class="nav-link">Wyloguj się</a>
                        </div>
                        </div>
                        ';
        } else {
            echo '
                            <a href="login.php" class="button-main text-decoration-none mb-4">Zaloguj się</a>
                            <a href="register.php" class="button-main text-decoration-none">Zarejestruj się</a>';
        }
        ?>
    </div>
</nav>