-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sty 11, 2025 at 09:08 PM
-- Wersja serwera: 8.0.30
-- Wersja PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biblioteka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autorzy`
--

CREATE TABLE `autorzy` (
  `id` int NOT NULL,
  `imie` varchar(20) COLLATE utf8mb3_polish_ci NOT NULL,
  `nazwisko` varchar(30) COLLATE utf8mb3_polish_ci NOT NULL,
  `data_ur` date NOT NULL,
  `data_zm` date NOT NULL,
  `narodowosc` varchar(20) COLLATE utf8mb3_polish_ci NOT NULL,
  `biografia` text COLLATE utf8mb3_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_polish_ci;

--
-- Dumping data for table `autorzy`
--

INSERT INTO `autorzy` (`id`, `imie`, `nazwisko`, `data_ur`, `data_zm`, `narodowosc`, `biografia`) VALUES
(1, 'Adam', 'Smith', '1723-06-16', '1790-07-17', 'Brytyjska', 'Filozof i ekonomista, autor \"Badania nad naturą i przyczynami bogactwa narodów\".'),
(2, 'Jane', 'Austen', '1775-12-16', '1817-07-18', 'Brytyjska', 'Autorka \"Dumy i uprzedzenia\", \"Emma\", \"Opactwa Northanger\".'),
(3, 'Leo', 'Tolstoy', '1828-09-09', '1910-11-20', 'Rosyjska', 'Pisarz, autor powieści \"Wojna i pokój\", \"Anna Karenina\".'),
(4, 'Gabriel', 'García Márquez', '1927-03-06', '2014-04-17', 'Kolumbijska', 'Autor \"Sto lat samotności\", mistrz realizmu magicznego.'),
(5, 'Charles', 'Dickens', '1812-02-07', '1870-06-09', 'Brytyjska', 'Autor \"Oliver Twist\", \"Wielkie nadzieje\", \"David Copperfield\".'),
(6, 'George', 'Orwell', '1903-06-25', '1950-01-21', 'Brytyjska', 'Autor \"Roku 1984\", \"Folwark zwierzęcy\", krytyk totalitaryzmów.'),
(7, 'Franz', 'Kafka', '1883-07-03', '1924-06-03', 'Czeska', 'Autor \"Procesu\", \"Zamek\", tworzył literaturę absurdalną i egzystencjalną.'),
(8, 'Herman', 'Melville', '1819-08-01', '1891-09-28', 'Amerykańska', 'Pisarz, autor \"Moby Dick\", \"Barty Doblby\".'),
(9, 'J.K.', 'Rowling', '1965-07-31', '0000-00-00', 'Brytyjska', 'Autorka serii o Harrym Potterze, laureatka wielu nagród literackich.'),
(10, 'Mark', 'Twain', '1835-11-30', '1910-04-21', 'Amerykańska', 'Autor \"Przygód Tomka Sawyera\", \"Huckleberry Finn\".'),
(11, 'Oscar', 'Wilde', '1854-10-16', '1900-11-30', 'Irlandzka', 'Autor \"Portretu Doriana Graya\", \"Baldy i inne opowiadania\".'),
(12, 'Virginia', 'Woolf', '1882-01-25', '1941-03-28', 'Brytyjska', 'Autorka \"Pani Dalloway\", \"Do latarni morskiej\", feministka literacka.'),
(13, 'James', 'Joyce', '1882-02-02', '1941-01-13', 'Irlandzka', 'Autor \"Ulisses\", uważany za mistrza modernizmu literackiego.'),
(14, 'H.G.', 'Wells', '1866-09-21', '1946-08-13', 'Brytyjska', 'Pionier science fiction, autor \"Wehikuł czasu\", \"Wojna światów\".'),
(15, 'William', 'Shakespeare', '1564-04-23', '1616-04-23', 'Angielska', 'Dramatopisarz, autor \"Hamleta\", \"Makbeta\", \"Romea i Julii\".'),
(16, 'Toni', 'Morrison', '1931-02-18', '2019-08-05', 'Amerykańska', 'Pisarka, laureatka Nagrody Nobla, autorka \"Beloved\".'),
(17, 'Dante', 'Alighieri', '1265-06-01', '1321-09-14', 'Włoska', 'Autor \"Boskiej komedii\", jeden z najwybitniejszych poetów średniowiecza.'),
(18, 'Ray', 'Bradbury', '1920-08-22', '2012-06-05', 'Amerykańska', 'Pisarz science fiction, autor \"451° Fahrenheita\".'),
(19, 'F. Scott', 'Fitzgerald', '1896-09-24', '1940-12-21', 'Amerykańska', 'Autor \"Wielkiego Gatsby\'ego\", krytyk amerykańskiego społeczeństwa lat 20.'),
(20, 'Sylvia', 'Plath', '1932-10-27', '1963-02-11', 'Amerykańska', 'Poetka i pisarka, autorka \"Szklanego klosza\".'),
(21, 'Homer', 'Smith', '0800-01-01', '0750-01-01', 'Grecka', 'Antyczny poeta, autor \"Iliady\", \"Odysei\".'),
(22, 'John', 'Steinbeck', '1902-02-27', '1968-12-20', 'Amerykańska', 'Pisarz, laureat Nagrody Nobla, autor \"Grona gniewu\".'),
(23, 'Margaret', 'Atwood', '1939-11-18', '0000-00-00', 'Kanadyjska', 'Autorka \"Opowieści podręcznej\", \"Atwood na końcu świata\".'),
(24, 'Mikhail', 'Bulgakov', '1891-05-15', '1940-03-10', 'Rosyjska', 'Autor \"Mistrza i Małgorzaty\", satyryczny krytyk władzy stalinowskiej.'),
(25, 'Albert', 'Camus', '1913-11-07', '1960-01-04', 'Francuska', 'Filozof, autor \"Obcego\", \"Mit Syzyfa\", przedstawiciel egzystencjalizmu.'),
(26, 'J.R.R.', 'Tolkien', '1892-01-03', '1973-09-02', 'Brytyjska', 'Twórca \"Władcy Pierścieni\", pionier literatury fantasy.'),
(27, 'Emily', 'Dickinson', '1830-12-10', '1886-05-15', 'Amerykańska', 'Poetka, której prace stały się podstawą nowoczesnej poezji amerykańskiej.'),
(28, 'Vladimir', 'Nabokov', '1899-04-22', '1977-07-02', 'Rosyjsko-amerykańska', 'Autor \"Lolity\", mistrz stylu literackiego.'),
(29, 'Isaac', 'Asimov', '1920-01-02', '1992-04-06', 'Amerykańska', 'Pisarz science fiction, autor \"Fundacji\", twórca teorii robotyki.'),
(30, 'Bram', 'Stoker', '1847-11-08', '1912-04-20', 'Irlandzka', 'Autor \"Drakuli\", klasyka literatury grozy.'),
(31, 'John', 'Grisham', '1955-02-08', '0000-00-00', 'Amerykańska', 'Autor powieści prawniczych, takich jak \"Firma\", \"Czas zabijania\".'),
(32, 'Alice', 'Walker', '1944-02-09', '0000-00-00', 'Amerykańska', 'Pisarka, laureatka Nagrody Pulitzera za \"Kolor purpury\".'),
(33, 'Kazuo', 'Ishiguro', '1954-11-08', '0000-00-00', 'Brytyjsko-japońska', 'Autor \"Nie opuszczaj mnie\", laureat Nagrody Nobla.'),
(34, 'George', 'R.R. Martin', '1948-09-20', '0000-00-00', 'Amerykańska', 'Autor serii \"Pieśń lodu i ognia\", na której oparty jest serial \"Gra o Tron\".'),
(35, 'Neil', 'Gaiman', '1960-11-10', '0000-00-00', 'Brytyjska', 'Pisarz i scenarzysta, autor \"Amerykańscy bogowie\", \"Sandman\".'),
(36, 'Stephen', 'King', '1947-09-21', '0000-00-00', 'Amerykańska', 'Autor powieści grozy, takich jak \"To\", \"Lśnienie\", \"Zielona mila\".'),
(37, 'Philip', 'K. Dick', '1928-12-16', '1982-03-02', 'Amerykańska', 'Pisarz science fiction, autor \"Ubik\", \"Blade Runner\".'),
(38, 'William', 'Golding', '1911-09-19', '1993-06-19', 'Brytyjska', 'Autor \"Władcy much\", refleksja nad naturą ludzką.'),
(39, 'J.R.R.', 'Tolkien', '1892-01-03', '1973-09-02', 'Brytyjska', 'Twórca \"Władcy Pierścieni\", pionier literatury fantasy.'),
(40, 'Dan', 'Brown', '1964-06-22', '0000-00-00', 'Amerykańska', 'Autor bestsellerów, takich jak \"Kod Leonarda da Vinci\", \"Inferno\".'),
(41, 'Paulo', 'Coelho', '1947-08-24', '0000-00-00', 'Brazylijska', 'Autor \"Alchemika\", książki sprzedane w milionach egzemplarzy na całym świecie.'),
(42, 'Haruki', 'Murakami', '1949-01-12', '0000-00-00', 'Japońska', 'Pisarz, autor \"Norwegian Wood\", \"Kafka nad morzem\", surrealistyczne powieści.'),
(43, 'Margaret', 'Mitchell', '1900-11-08', '1949-08-16', 'Amerykańska', 'Autorka \"Przeminęło z wiatrem\", powieści o wojnie secesyjnej.'),
(44, 'Raymond', 'Chandler', '1888-07-23', '1959-03-26', 'Amerykańska', 'Twórca kryminałów, autor serii o Philipie Marlowe\'ie.'),
(45, 'Dashiell', 'Hammett', '1894-05-27', '1961-01-10', 'Amerykańska', 'Pisarz, autor \"Maltese Falcon\", klasyk powieści kryminalnej.'),
(46, 'C.S.', 'Lewis', '1898-11-29', '1963-11-22', 'Brytyjska', 'Autor \"Opowieści z Narnii\", powieści fantasy i teologicznych rozważań.'),
(47, 'Douglas', 'Adams', '1952-03-11', '2001-05-11', 'Brytyjska', 'Twórca \"Autostopem przez Galaktykę\", autor książek science fiction i humorystycznych.'),
(48, 'J.R.R.', 'Tolkien', '1892-01-03', '1973-09-02', 'Brytyjska', 'Twórca \"Władcy Pierścieni\" i \"Hobbita\", pionier literatury fantasy.'),
(49, 'Terry', 'Pratchett', '1948-04-28', '2015-03-12', 'Brytyjska', 'Autor serii \"Świat Dysku\", humorystyczne powieści fantasy.'),
(50, 'J.D.', 'Salinger', '1919-01-01', '2010-01-27', 'Amerykańska', 'Autor \"Buszujący w zbożu\", powieści o dojrzewaniu i zagubieniu.'),
(51, 'John', 'Le Carré', '1931-10-19', '2020-12-12', 'Brytyjska', 'Autor powieści szpiegowskich, takich jak \"Szpieg, który przyszedł z zimnej strefy\".'),
(52, 'Stephen', 'King', '1947-09-21', '0000-00-00', 'Amerykańska', 'Autor powieści grozy, takich jak \"To\", \"Lśnienie\", \"Zielona mila\".'),
(53, 'Ernest', 'Hemingway', '1899-07-21', '1961-07-02', 'Amerykańska', 'Pisarz, laureat Nagrody Nobla, autor \"Stary człowiek i morze\", \"Pożegnanie z bronią\".'),
(54, 'Agatha', 'Christie', '1890-09-15', '1976-01-12', 'Brytyjska', 'Autorka kryminałów, w tym serii o Herculesie Poirocie i Miss Marple.'),
(55, 'Jack', 'London', '1876-01-12', '1916-11-22', 'Amerykańska', 'Autor \"Zew krwi\", \"Martin Eden\", twórca literatury przygodowej.'),
(56, 'Joseph', 'Conrad', '1857-12-03', '1924-08-03', 'Polsko-brytyjska', 'Autor \"Jądro ciemności\", powieści o kolonializmie i etyce.'),
(57, 'Emily', 'Brontë', '1818-07-30', '1848-12-19', 'Brytyjska', 'Autorka \"Wichrowych Wzgórz\", powieści o pasji i zemście.'),
(58, 'Charlotte', 'Brontë', '1816-04-21', '1855-03-31', 'Brytyjska', 'Autorka \"Jane Eyre\", powieści o miłości, nieszczęściu i emancypacji.'),
(59, 'Anne', 'Brontë', '1820-01-17', '1849-05-28', 'Brytyjska', 'Autorka \"Agnes Grey\", wrażliwa powieść o życiu służby.'),
(60, 'George', 'Eliot', '1819-11-22', '1880-12-22', 'Brytyjska', 'Autorka powieści \"Midlothian\", \"Silas Marner\", wnikliwy obraz społeczeństwa.'),
(61, 'Zadie', 'Smith', '1975-10-25', '0000-00-00', 'Brytyjska', 'Autorka \"Białych zębów\", powieści o tożsamości, różnicach rasowych i klasowych.'),
(62, 'Colleen', 'Hoover', '1979-12-11', '0000-00-00', 'Amerykańska', 'Autorka bestsellerowych powieści romantycznych, w tym \"Verity\".'),
(63, 'Margaret', 'Atwood', '1939-11-18', '0000-00-00', 'Kanadyjska', 'Autorka \"Opowieści podręcznej\", \"Atwood na końcu świata\".'),
(64, 'Isaac', 'Asimov', '1920-01-02', '1992-04-06', 'Amerykańska', 'Pisarz science fiction, autor \"Fundacji\", twórca teorii robotyki.'),
(65, 'Arthur', 'C. Clarke', '1917-12-16', '2008-03-19', 'Brytyjska', 'Autor \"2001: Odyseja kosmiczna\", wizjoner przyszłości i technologii.'),
(66, 'L.M.', 'Montgomery', '1874-11-30', '1942-04-24', 'Kanadyjska', 'Autorka \"Ani z Zielonego Wzgórza\", powieści o dorastaniu i marzeniach.'),
(67, 'Kurt', 'Vonnegut', '1922-11-11', '2007-04-11', 'Amerykańska', 'Autor \"Rzeźni numer pięć\", powieści antywojennych i satyrycznych.'),
(68, 'Vladimir', 'Nabokov', '1899-04-22', '1977-07-02', 'Rosyjsko-amerykańska', 'Autor \"Lolity\", mistrz stylu literackiego.'),
(69, 'Hunter', 'Thompson', '1937-07-18', '2005-02-20', 'Amerykańska', 'Twórca \"Fear and Loathing in Las Vegas\", pionier literackiego gonzo.'),
(70, 'Ralph', 'Ellison', '1914-03-01', '1994-04-16', 'Amerykańska', 'Pisarz, autor \"Niewidocznego człowieka\", który badał problemy rasowe w USA.'),
(71, 'Toni', 'Morrison', '1931-02-18', '2019-08-05', 'Amerykańska', 'Pisarka, laureatka Nagrody Nobla, autorka \"Beloved\".'),
(72, 'John', 'Grisham', '1955-02-08', '0000-00-00', 'Amerykańska', 'Autor powieści prawniczych, takich jak \"Firma\", \"Czas zabijania\".'),
(73, 'Khaled', 'Hosseini', '1965-03-04', '0000-00-00', 'Afgańska', 'Autor \"Chłopca z latawcem\", powieści o przyjaźni i wojnie.'),
(74, 'Marguerite', 'Duras', '1914-04-04', '1996-03-03', 'Francuska', 'Autorka \"Kochałam\", powieści o relacjach i miłości.'),
(75, 'Mikhail', 'Bulgakov', '1891-05-15', '1940-03-10', 'Rosyjska', 'Autor \"Mistrza i Małgorzaty\", satyryczny krytyk władzy stalinowskiej.'),
(76, 'William', 'Faulkner', '1897-09-25', '1962-07-06', 'Amerykańska', 'Autor \"Wszyscy jesteśmy z tego samego drzewa\", \"Światło w sierpniu\".'),
(77, 'Joseph', 'Heller', '1923-05-01', '1999-12-12', 'Amerykańska', 'Autor \"Paragrafu 22\", powieści o absurdach wojny.'),
(78, 'Michael', 'Ende', '1929-11-12', '1995-08-28', 'Niemiecka', 'Autor \"Niekończącej się historii\", książki o wyobraźni i dorastaniu.'),
(79, 'Kazuo', 'Ishiguro', '1954-11-08', '0000-00-00', 'Brytyjsko-japońska', 'Autor \"Nie opuszczaj mnie\", laureat Nagrody Nobla.'),
(80, 'Elena', 'Ferrante', '1943-10-19', '0000-00-00', 'Włoska', 'Autorka serii \"Genialna przyjaciółka\", powieści o kobietach i ich życiu.'),
(81, 'Ian', 'McEwan', '1948-06-21', '0000-00-00', 'Brytyjska', 'Autor \"Amsterdam\", \"Pokuta\", powieści psychologicznych.'),
(82, 'Kazuo', 'Ishiguro', '1954-11-08', '0000-00-00', 'Brytyjsko-japońska', 'Autor \"Nie opuszczaj mnie\", laureat Nagrody Nobla.'),
(83, 'Haruki', 'Murakami', '1949-01-12', '0000-00-00', 'Japońska', 'Pisarz, autor \"Norwegian Wood\", \"Kafka nad morzem\", surrealistyczne powieści.'),
(84, 'Salman', 'Rushdie', '1947-06-19', '0000-00-00', 'Brytyjsko-indyjska', 'Autor \"Szatańskich wersetów\", powieści o historii i kulturze.'),
(85, 'John', 'Grisham', '1955-02-08', '0000-00-00', 'Amerykańska', 'Autor powieści prawniczych, takich jak \"Firma\", \"Czas zabijania\".'),
(86, 'Julian', 'Barnes', '1946-01-19', '0000-00-00', 'Brytyjska', 'Autor \"Arthur & George\", mistrz powieści psychologicznych.'),
(87, 'Patricia', 'Highsmith', '1921-01-19', '1995-12-04', 'Amerykańska', 'Autorka powieści kryminalnych, takich jak \"Strangers on a Train\".'),
(88, 'Ian', 'Fleming', '1908-05-28', '1964-08-12', 'Brytyjska', 'Autor powieści o Jamesie Bondzie.'),
(89, 'Toni', 'Morrison', '1931-02-18', '2019-08-05', 'Amerykańska', 'Pisarka, laureatka Nagrody Nobla, autorka \"Beloved\".'),
(90, 'Mark', 'Twain', '1835-11-30', '1910-04-21', 'Amerykańska', 'Autor \"Przygód Tomka Sawyera\", \"Huckleberry Finn\".'),
(91, 'J.K.', 'Rowling', '1965-07-31', '0000-00-00', 'Brytyjska', 'Autorka serii o Harrym Potterze, laureatka wielu nagród literackich.'),
(92, 'Stephen', 'King', '1947-09-21', '0000-00-00', 'Amerykańska', 'Autor powieści grozy, takich jak \"To\", \"Lśnienie\", \"Zielona mila\".'),
(93, 'Agatha', 'Christie', '1890-09-15', '1976-01-12', 'Brytyjska', 'Autorka kryminałów, w tym serii o Herculesie Poirocie i Miss Marple.'),
(94, 'Raymond', 'Chandler', '1888-07-23', '1959-03-26', 'Amerykańska', 'Twórca kryminałów, autor serii o Philipie Marlowe\'ie.'),
(95, 'F. Scott', 'Fitzgerald', '1896-09-24', '1940-12-21', 'Amerykańska', 'Autor \"Wielki Gatsby\", powieści o amerykańskim śnie i upadku.'),
(96, 'Maya', 'Angelou', '1928-04-04', '2014-05-28', 'Amerykańska', 'Poezja, autobiografie, autorka \"I Know Why the Caged Bird Sings\".'),
(97, 'James', 'Joyce', '1882-02-02', '1941-01-13', 'Irlandzka', 'Autor \"Ulissesa\", nowoczesny powieściopisarz, eksperymentator w literaturze.'),
(98, 'Leo', 'Tolstoy', '1828-09-09', '1910-11-20', 'Rosyjska', 'Autor \"Wojna i pokój\", \"Anna Karenina\", klasyk literatury światowej.'),
(99, 'George', 'Orwell', '1903-06-25', '1950-01-21', 'Brytyjska', 'Autor \"1984\", \"Folwark zwierzęcy\", krytyk totalitaryzmów.'),
(100, 'Aldous', 'Huxley', '1894-07-26', '1963-11-22', 'Brytyjska', 'Autor \"Nowego wspaniałego świata\", powieści dystopijnych i filozoficznych.'),
(101, 'Adam', 'Mickiewicz', '1798-12-24', '1855-11-26', 'Polska', 'Jeden z najwybitniejszych polskich poetów romantyzmu, autor \"Pana Tadeusza\".'),
(102, 'Bolesław', 'Prus', '1847-08-20', '1912-05-19', 'Polska', 'Pisarz, publicysta, autor \"Lalki\", powieści społecznych i realistycznych.'),
(103, 'Henryk', 'Sienkiewicz', '1846-05-05', '1916-11-15', 'Polska', 'Laureat Nagrody Nobla, autor \"Quo Vadis\", \"Trylogii\", powieści historycznych.'),
(104, 'Wisława', 'Szymborska', '1923-07-02', '2012-02-01', 'Polska', 'Poetka, eseistka, laureatka Nagrody Nobla w dziedzinie literatury.'),
(105, 'Czesław', 'Miłosz', '1911-06-30', '2004-08-14', 'Polska', 'Poeta, eseista, laureat Nagrody Nobla, autor \"Zniewolonego umysłu\".'),
(106, 'Olga', 'Tokarczuk', '1962-01-29', '0000-00-00', 'Polska', 'Laureatka Nagrody Nobla, autorka \"Bieguni\", \"Prowadź swój pług przez kości umarłych\".'),
(107, 'Zofia', 'Nałkowska', '1884-04-10', '1954-12-17', 'Polska', 'Autorka powieści, dramatów i esejów, w tym \"Granica\".'),
(108, 'Jerzy', 'Grodziński', '1905-02-10', '1996-06-21', 'Polska', 'Autor powieści kryminalnych i psychologicznych, takich jak \"Gorycz\".'),
(109, 'Andrzej', 'Sapkowski', '1948-06-21', '0000-00-00', 'Polska', 'Autor \"Wiedźmina\", książek fantasy, które zdobyły międzynarodową popularność.'),
(110, 'Ryszard', 'Kapuściński', '1932-03-04', '2007-01-23', 'Polska', 'Dziennikarz, reporter, autor \"Cesarza\", \"Imperium\", książek o podróżach i polityce.'),
(111, 'Stanisław', 'Lem', '1921-09-12', '2006-03-27', 'Polska', 'Autor \"Solaris\", twórca literatury science fiction, filozof i futurolog.'),
(112, 'Maria', 'Konopnicka', '1842-05-23', '1910-10-08', 'Polska', 'Poezja, literatura dziecięca, autorka \"Naszej szkółki\" i \"O krasnoludkach i sierotce Marysi\".'),
(113, 'Julian', 'Tuwim', '1894-09-13', '1953-12-27', 'Polska', 'Poeta, satyryk, autor \"Kwiatów polskich\", twórca literatury kabaretowej.'),
(114, 'Marek', 'Hłasko', '1936-05-14', '1969-06-14', 'Polska', 'Autor \"Pięknych dwudziestoletnich\", pisarz i dramaturg, przedstawiciel pokolenia.'),
(115, 'Tadeusz', 'Borowski', '1922-11-12', '1951-07-01', 'Polska', 'Pisarz, autor \"Pożegnania z Marią\", twórczość o wojnie i obozach.'),
(116, 'Taras', 'Szewczenko', '1814-03-09', '1861-03-10', 'Ukraińska', 'Wieszcz narodowy Ukrainy, poeta, malarz i etnograf, autor \"Kobzar\".'),
(117, 'Lesja', 'Ukrainka', '1871-02-25', '1913-08-19', 'Ukraińska', 'Poetka i dramaturg, autorka \"Marty\", \"Czarnych tynków\", ważna postać literatury ukraińskiej.'),
(118, 'Iwan', 'Franko', '1856-08-27', '1916-05-28', 'Ukraińska', 'Pisarz, poeta, działacz polityczny, autor \"Kamenarza\", klasyk ukraińskiej literatury.'),
(119, 'Mychajło', 'Kociubynskyj', '1864-09-17', '1913-04-25', 'Ukraińska', 'Pisarz, autor powieści \"Fata Morgana\", \"Dyjachy\".'),
(120, 'Vasyl', 'Stus', '1938-01-06', '1985-09-04', 'Ukraińska', 'Poeta, działacz opozycji, autor \"Mistrza\", twórczość w duchu ukraińskiego romantyzmu.'),
(121, 'Serhij', 'Żadan', '1974-08-23', '0000-00-00', 'Ukraińska', 'Pisarz, poeta, autor \"Wojna nie ma w sobie nic z kobiety\", znany z literatury współczesnej.'),
(122, 'Juri', 'Andruchowycz', '1960-09-13', '0000-00-00', 'Ukraińska', 'Pisarz, poeta, autor powieści \"Perverzion\", \"Rekreacje\".'),
(123, 'Oksana', 'Zabużko', '1960-04-19', '0000-00-00', 'Ukraińska', 'Autorka powieści \"Muzyka Ciała\", współczesna pisarka zajmująca się tematami tożsamości.'),
(124, 'Wiktor', 'Szenderowicz', '1962-06-28', '0000-00-00', 'Ukraińska', 'Pisarz i dramaturg, autor \"Kryminalnej historii\", satyry i powieści historycznych.'),
(125, 'Jurij', 'Demydiuk', '1942-05-01', '0000-00-00', 'Ukraińska', 'Pisarz, autor książek o historii Ukrainy, \"Czasy mroczne\", literacki dokumentalista.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE `ksiazki` (
  `id` int NOT NULL,
  `tytul` varchar(60) COLLATE utf8mb3_polish_ci NOT NULL,
  `opis` text COLLATE utf8mb3_polish_ci,
  `id_autor` int NOT NULL,
  `id_wspolautor` int DEFAULT NULL,
  `wydawnictwo` varchar(40) COLLATE utf8mb3_polish_ci NOT NULL,
  `data_wydania` date NOT NULL,
  `jezyk` varchar(15) COLLATE utf8mb3_polish_ci NOT NULL,
  `dostepnosc` tinyint(1) NOT NULL,
  `img_src` text COLLATE utf8mb3_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_polish_ci;

--
-- Dumping data for table `ksiazki`
--

INSERT INTO `ksiazki` (`id`, `tytul`, `opis`, `id_autor`, `id_wspolautor`, `wydawnictwo`, `data_wydania`, `jezyk`, `dostepnosc`, `img_src`) VALUES
(1, 'Pan Tadeusz', NULL, 101, NULL, 'Wydawnictwo Warszawskie', '1834-03-01', 'Polski', 1, 'ksiazki/pan_tadeusz.jpg'),
(2, 'Lalka', NULL, 102, NULL, 'Wydawnictwo Literackie', '1899-12-01', 'Polski', 1, 'ksiazki/lalka.jpg'),
(3, 'Quo Vadis', NULL, 103, NULL, 'Wydawnictwo Zakład Narodowy im. Ossolińs', '1896-01-01', 'Polski', 0, 'ksiazki/quo-vadis.jpg'),
(4, 'Prowadź swój pług przez kości umarłych', NULL, 106, NULL, 'Wydawnictwo Literackie', '2009-04-01', 'Polski', 1, 'ksiazki/prowadz_swoj_plug.jpg'),
(5, 'Solaris', 'Najsłynniejsza powieść Stanisława Lema w nowym wydaniu! Dzieło przetłumaczone na kilkadziesiąt języków i dwukrotnie przeniesione na ekran.\nW Solaris Stanisław Lem podejmuje jeden z najpopularniejszych tematów literatury fantastycznej - temat Kontaktu. Z obcą cywilizacją, odmienną formą życia, a może po prostu z Nieznanym, tego Lem jednoznacznie nie dopowiada. Być może dlatego Solaris po kilkudziesięciu lat od pierwszego wydania wciąż fascynuje.', 111, NULL, 'Wydawnictwo Faber & Faber', '1961-11-01', 'Polski', 1, 'ksiazki/solaris.jpg'),
(6, 'Kobzar', NULL, 116, NULL, 'Wydawnictwo Kultura', '1840-01-01', 'Ukraiński', 1, 'ksiazki/kobzar.jpg'),
(7, 'Marta', NULL, 117, NULL, 'Wydawnictwo 7', '1896-01-01', 'Ukraiński', 1, NULL),
(8, 'Kamenarz', NULL, 118, NULL, 'Wydawnictwo Kryształ', '1900-01-01', 'Ukraiński', 0, NULL),
(9, 'Fata Morgana', NULL, 119, NULL, 'Wydawnictwo Wyszehrad', '1902-01-01', 'Ukraiński', 1, NULL),
(10, 'Czarny tynk', NULL, 120, NULL, 'Wydawnictwo Fakt', '1980-01-01', 'Ukraiński', 1, NULL),
(11, 'Zniewolony umysł', NULL, 105, NULL, 'Wydawnictwo Znak', '1953-01-01', 'Polski', 1, NULL),
(12, 'Wiedźmin', NULL, 109, NULL, 'Wydawnictwo SuperNOWA', '1992-04-01', 'Polski', 1, NULL),
(13, 'Trylogia', NULL, 103, NULL, 'Wydawnictwo Prószyński i S-ka', '1900-01-01', 'Polski', 0, 'ksiazki/trylogia.jpeg'),
(14, 'Cesarz', NULL, 120, NULL, 'Wydawnictwo Nowa Era', '1978-01-01', 'Polski', 1, NULL),
(15, 'Perverzion', NULL, 122, NULL, 'Wydawnictwo Agora', '1996-05-01', 'Ukraiński', 1, NULL),
(16, 'Muzyka ciała', NULL, 123, NULL, 'Wydawnictwo Wydawniczy', '1997-06-01', 'Ukraiński', 0, NULL),
(17, 'Pożegnanie z Marią', NULL, 112, NULL, 'Wydawnictwo Wydajnia', '1955-01-01', 'Polski', 1, NULL),
(18, 'Wojna nie ma w sobie nic z kobiety', NULL, 121, NULL, 'Wydawnictwo Media', '2008-02-01', 'Ukraiński', 1, NULL),
(19, 'Granica', NULL, 107, NULL, 'Wydawnictwo Zakład Narodowy', '1935-01-01', 'Polski', 0, 'ksiazki/granica.jpg'),
(20, 'Wielki Gatsby', NULL, 95, NULL, 'Wydawnictwo Penguin', '1925-04-10', 'Angielski', 0, NULL),
(21, '1984', NULL, 99, NULL, 'Wydawnictwo Secker & Warburg', '1949-06-08', 'Angielski', 1, 'ksiazki/wielki_gatsby.jpg'),
(22, 'Nowy wspaniały świat', NULL, 100, NULL, 'Wydawnictwo Chatto & Windus', '1932-08-31', 'Angielski', 1, NULL),
(23, 'Wojna i pokój', NULL, 98, NULL, 'Wydawnictwo Małgorzata', '1869-01-01', 'Rosyjski', 1, 'ksiazki/wojna_i_pokoj.jpg'),
(24, 'Anna Karenina', NULL, 98, NULL, 'Wydawnictwo Wydajnia', '1878-01-01', 'Rosyjski', 0, 'ksiazki/anna_karenina.jpg'),
(25, 'Rok 1984', NULL, 99, NULL, 'Wydawnictwo Harvill Secker', '1949-06-08', 'Angielski', 0, 'ksiazki/rok_1984.jpg'),
(26, 'Folwark zwierzęcy', NULL, 99, NULL, 'Wydawnictwo Secker & Warburg', '1945-08-17', 'Angielski', 1, NULL),
(27, 'Wojna i pokój', NULL, 98, NULL, 'Wydawnictwo Nowa Era', '1869-01-01', 'Rosyjski', 1, NULL),
(28, 'Ulisses', NULL, 97, NULL, 'Wydawnictwo Sylvia', '1922-02-02', 'Irlandzki', 1, NULL),
(29, 'I Know Why the Caged Bird Sings', NULL, 96, NULL, 'Wydawnictwo Random House', '1969-07-02', 'Angielski', 1, NULL),
(30, 'Wielki Gatsby', NULL, 95, NULL, 'Wydawnictwo Scribner', '1925-04-10', 'Angielski', 1, NULL),
(31, 'Przygody Sherlocka Holmesa', NULL, 94, NULL, 'Wydawnictwo Collins', '1892-10-14', 'Angielski', 1, NULL),
(32, 'Opowieść wigilijna', NULL, 91, NULL, 'Wydawnictwo Chapman & Hall', '1843-12-19', 'Angielski', 1, NULL),
(33, 'Mistrz i Małgorzata', NULL, 92, NULL, 'Wydawnictwo Mir', '1966-11-01', 'Rosyjski', 1, NULL),
(34, 'Duma i uprzedzenie', NULL, 93, NULL, 'Wydawnictwo T. Egerton', '1813-01-28', 'Angielski', 1, NULL),
(35, 'Zbrodnia i kara', NULL, 89, NULL, 'Wydawnictwo The Russian Messenger', '1866-01-01', 'Rosyjski', 1, NULL),
(36, 'Macbeth', NULL, 86, NULL, 'Wydawnictwo Arden', '1620-01-01', 'Angielski', 1, NULL),
(37, 'Hamlet', NULL, 86, NULL, 'Wydawnictwo Macmillan', '1600-01-01', 'Angielski', 1, NULL),
(38, 'Opowieść o dwóch miastach', NULL, 87, NULL, 'Wydawnictwo Chapman & Hall', '1859-04-30', 'Angielski', 1, NULL),
(39, 'Wielki Gatsby', NULL, 95, NULL, 'Wydawnictwo Charles Scribner’s Sons', '1925-04-10', 'Angielski', 1, NULL),
(40, 'Człowiek w poszukiwaniu sensu', NULL, 88, NULL, 'Wydawnictwo Beacon Press', '1946-01-01', 'Angielski', 1, NULL),
(41, 'Czarnoksiężnik z krainy Oz', NULL, 90, NULL, 'Wydawnictwo George M. Hill Company', '1900-05-17', 'Angielski', 1, NULL),
(42, 'Roku 1984', NULL, 99, NULL, 'Wydawnictwo Secker & Warburg', '1949-06-08', 'Angielski', 1, NULL),
(43, 'Czarodziej', NULL, 87, NULL, 'Wydawnictwo George H. Doran Company', '1902-01-01', 'Angielski', 1, NULL),
(44, 'Nieznośna lekkość bytu', NULL, 81, NULL, 'Wydawnictwo Harvill Secker', '1984-09-04', 'Czeski', 1, NULL),
(45, 'Oberża', NULL, 80, NULL, 'Wydawnictwo L.C. Page & Company', '1885-10-01', 'Francuski', 1, NULL),
(46, 'Zaczarowane drzewo', NULL, 85, NULL, 'Wydawnictwo Macmillan', '1930-03-14', 'Angielski', 1, NULL),
(47, 'Początek', NULL, 74, NULL, 'Wydawnictwo Harper Collins', '1989-07-01', 'Amerykański', 1, NULL),
(48, 'Wysłannik nadziei', NULL, 67, NULL, 'Wydawnictwo The Viking Press', '1965-02-01', 'Amerykański', 1, NULL),
(49, 'Kiedy', NULL, 78, NULL, 'Wydawnictwo TMG', '1980-11-01', 'Angielski', 1, NULL),
(50, 'Kraina Wieczności', NULL, 74, NULL, 'Wydawnictwo Viking Press', '1982-10-23', 'Amerykański', 1, NULL),
(51, 'Dziady', NULL, 101, NULL, 'Wydawnictwo Kultura', '1823-01-01', 'Polski', 1, NULL),
(52, 'Bez dogmatu', NULL, 102, NULL, 'Wydawnictwo Literackie', '1891-01-01', 'Polski', 1, NULL),
(53, 'W pustyni i w puszczy', NULL, 103, NULL, 'Wydawnictwo Wydajnia', '1911-01-01', 'Polski', 1, NULL),
(54, 'Bieguni', NULL, 106, NULL, 'Wydawnictwo Literackie', '2007-05-01', 'Polski', 1, NULL),
(55, 'Ludzie bezdomni', NULL, 102, NULL, 'Wydawnictwo Prószyński', '1900-01-01', 'Polski', 1, NULL),
(56, 'Doktor Żywago', NULL, 98, NULL, 'Wydawnictwo Książka i Wiedza', '1957-01-01', 'Rosyjski', 1, NULL),
(57, 'Słowianie', NULL, 107, NULL, 'Wydawnictwo Czerwone Jabłko', '1962-01-01', 'Polski', 1, NULL),
(58, 'Służąca', NULL, 118, NULL, 'Wydawnictwo Nowa Era', '1899-12-01', 'Ukraiński', 1, NULL),
(59, 'Potop', NULL, 103, NULL, 'Wydawnictwo Zakład Narodowy im. Ossolińs', '1900-01-01', 'Polski', 1, NULL),
(60, 'Błogosławiony wiek', NULL, 112, NULL, 'Wydawnictwo Nowa Era', '1960-12-01', 'Polski', 1, NULL),
(61, 'Teoria chaosu', NULL, 121, NULL, 'Wydawnictwo Wydajnia', '2002-10-15', 'Ukraiński', 1, NULL),
(62, 'Klub Anonimowych Alkoholików', NULL, 120, NULL, 'Wydawnictwo Prószyński', '1977-04-15', 'Polski', 1, NULL),
(63, 'Złodziejka książek', NULL, 94, NULL, 'Wydawnictwo Znak', '2005-09-01', 'Angielski', 1, NULL),
(64, 'Szlak maszyn', NULL, 109, 118, 'Wydawnictwo Zyski i S-ka', '2001-11-22', 'Polski', 1, NULL),
(65, 'Rok 1984', NULL, 99, NULL, 'Wydawnictwo Secker & Warburg', '1949-06-08', 'Angielski', 1, NULL),
(66, 'Przemiany', NULL, 104, NULL, 'Wydawnictwo Kryształ', '1998-02-01', 'Polski', 1, NULL),
(67, 'Walka o byt', NULL, 92, NULL, 'Wydawnictwo Nowa Era', '1974-05-01', 'Rosyjski', 1, NULL),
(68, 'Kiedy gasną gwiazdy', NULL, 93, NULL, 'Wydawnictwo Prószyński', '1998-06-01', 'Angielski', 1, NULL),
(69, 'Opowieści o wojnie', NULL, 101, NULL, 'Wydawnictwo Literackie', '1945-12-01', 'Polski', 1, NULL),
(70, 'Miłość w czasach zarazy', NULL, 91, NULL, 'Wydawnictwo Książka i Wiedza', '1985-12-01', 'Hiszpański', 1, NULL),
(71, 'Sekretne życie drzew', NULL, 94, NULL, 'Wydawnictwo Faber & Faber', '2015-02-01', 'Angielski', 1, NULL),
(72, 'Pani Bovary', NULL, 93, NULL, 'Wydawnictwo Dumas', '1856-01-01', 'Francuski', 1, NULL),
(73, 'Tego, co nie widać', NULL, 122, NULL, 'Wydawnictwo Warszawskie', '2011-07-01', 'Ukraiński', 1, NULL),
(74, 'Duma i uprzedzenie', NULL, 93, NULL, 'Wydawnictwo Norton', '1813-01-28', 'Angielski', 1, NULL),
(75, 'Kłamstwo', NULL, 120, NULL, 'Wydawnictwo Oxford', '2007-05-02', 'Polski', 1, NULL),
(76, 'Skrzydła nadziei', NULL, 119, NULL, 'Wydawnictwo Literackie', '1970-10-01', 'Ukraiński', 1, NULL),
(77, 'Walka o wolność', NULL, 107, NULL, 'Wydawnictwo Czerwony Słowik', '1945-03-15', 'Polski', 1, NULL),
(78, 'Człowiek w poszukiwaniu sensu', NULL, 88, NULL, 'Wydawnictwo Beacon', '1946-01-01', 'Angielski', 1, NULL),
(79, 'Wiedźmin: Sezon burz', NULL, 109, NULL, 'Wydawnictwo SuperNOWA', '2013-10-01', 'Polski', 1, NULL),
(80, 'Historia ludzkości', NULL, 101, NULL, 'Wydawnictwo Książka i Wiedza', '1990-02-01', 'Polski', 1, NULL),
(81, 'Psy Wojny', NULL, 99, NULL, 'Wydawnictwo Randon House', '1973-06-03', 'Angielski', 1, NULL),
(82, 'Wojna i pokój', NULL, 98, NULL, 'Wydawnictwo L&S', '1869-01-01', 'Rosyjski', 1, NULL),
(83, 'Rok 1984', NULL, 99, NULL, 'Wydawnictwo Kultura', '1984-05-01', 'Angielski', 1, NULL),
(84, 'Ostatni Mohikanin', NULL, 96, NULL, 'Wydawnictwo Bantam', '1826-03-15', 'Angielski', 1, NULL),
(85, 'Klub opóźnionych myśli', NULL, 119, NULL, 'Wydawnictwo Nowa Era', '1999-01-01', 'Ukraiński', 1, NULL),
(86, 'Dwie wieże', NULL, 109, NULL, 'Wydawnictwo Allen & Unwin', '1954-11-11', 'Angielski', 1, NULL),
(87, 'Hobbit', NULL, 109, NULL, 'Wydawnictwo HarperCollins', '1937-09-21', 'Angielski', 1, NULL),
(88, 'Zbrodnia i kara', NULL, 89, NULL, 'Wydawnictwo The Russian Messenger', '1866-01-01', 'Rosyjski', 1, NULL),
(89, 'Stawiam na miłość', NULL, 91, NULL, 'Wydawnictwo HarperCollins', '2009-06-12', 'Angielski', 1, NULL),
(90, 'Człowiek w poszukiwaniu sensu', NULL, 88, NULL, 'Wydawnictwo Penguin', '1946-07-01', 'Angielski', 1, NULL),
(91, 'Podróż na Wschód', NULL, 105, NULL, 'Wydawnictwo Znak', '2000-12-01', 'Polski', 1, NULL),
(92, 'Wiedźmin: Ostatnie życzenie', NULL, 109, NULL, 'Wydawnictwo SuperNOWA', '2009-02-01', 'Polski', 1, NULL),
(93, 'Lot nad kukułczym gniazdem', NULL, 97, NULL, 'Wydawnictwo Viking', '1962-02-01', 'Angielski', 1, NULL),
(94, 'Złodziejka książek', NULL, 94, NULL, 'Wydawnictwo Randon House', '2005-09-01', 'Angielski', 1, NULL),
(95, 'Królowie', NULL, 106, NULL, 'Wydawnictwo Prószyński', '2016-10-01', 'Polski', 1, NULL),
(96, 'Przyszłość bez końca', NULL, 107, NULL, 'Wydawnictwo Klio', '2011-03-01', 'Polski', 1, NULL),
(97, 'Odwrócone myśli', NULL, 105, NULL, 'Wydawnictwo Universitas', '2009-07-01', 'Polski', 1, NULL),
(98, 'Wieszcz', NULL, 116, NULL, 'Wydawnictwo Kryształ', '1850-01-01', 'Ukraiński', 1, NULL),
(99, 'Tajemniczy ogród', NULL, 94, NULL, 'Wydawnictwo Macmillan', '1911-03-01', 'Angielski', 1, NULL),
(100, 'Kiedyś w Paryżu', NULL, 95, NULL, 'Wydawnictwo Scribner', '2007-04-01', 'Angielski', 1, NULL),
(101, 'Pan Tadeusz', NULL, 101, NULL, 'Wydawnictwo Miedzy Wierszami', '1834-06-01', 'Polski', 1, NULL),
(102, 'Sklepy cynamonowe', NULL, 2, NULL, 'Wydawnictwo Sic!', '1933-01-01', 'Polski', 1, NULL),
(103, 'Idiotka', NULL, 3, NULL, 'Wydawnictwo L & S', '1869-01-01', 'Rosyjski', 1, NULL),
(104, 'Ogniem i mieczem', NULL, 103, NULL, 'Wydawnictwo Zakład Narodowy im. Ossolińs', '1884-01-01', 'Polski', 1, NULL),
(105, 'Wojna i pokój', NULL, 5, NULL, 'Wydawnictwo Pawłowska', '1869-01-01', 'Rosyjski', 1, NULL),
(106, 'Mistrz i Małgorzata', NULL, 6, NULL, 'Wydawnictwo Rosyjski Folklor', '1967-01-01', 'Rosyjski', 1, NULL),
(107, 'Sąd ostateczny', NULL, 7, NULL, 'Wydawnictwo Czerwony Kwiat', '1969-01-01', 'Polski', 1, NULL),
(108, 'Wierna rzeka', NULL, 8, NULL, 'Wydawnictwo Kultura', '1901-01-01', 'Polski', 1, NULL),
(109, 'Chłopi', NULL, 9, NULL, 'Wydawnictwo Książka i Wiedza', '1904-01-01', 'Polski', 1, NULL),
(110, 'Ziemia obiecana', NULL, 10, NULL, 'Wydawnictwo Literackie', '1899-01-01', 'Polski', 1, NULL),
(111, 'Jutro', NULL, 11, NULL, 'Wydawnictwo Kultura', '1890-01-01', 'Polski', 1, NULL),
(112, 'Psy Wojny', NULL, 12, NULL, 'Wydawnictwo Egmont', '2003-02-12', 'Angielski', 1, NULL),
(113, 'Ostatni Mohikanin', NULL, 13, NULL, 'Wydawnictwo HarperCollins', '1826-02-01', 'Angielski', 1, NULL),
(114, 'Błogosławiony wiek', NULL, 14, NULL, 'Wydawnictwo Tomz', '1962-01-01', 'Polski', 1, NULL),
(115, 'Potop', NULL, 15, NULL, 'Wydawnictwo Ossolineum', '1912-01-01', 'Polski', 1, NULL),
(116, 'Zbrodnia i kara', NULL, 16, NULL, 'Wydawnictwo Faber', '1866-01-01', 'Rosyjski', 1, NULL),
(117, 'Podróż do wnętrza ziemi', NULL, 17, NULL, 'Wydawnictwo Zysk i S-ka', '1864-01-01', 'Francuski', 1, NULL),
(118, 'Urodziny', NULL, 18, NULL, 'Wydawnictwo Agora', '1987-12-03', 'Polski', 1, NULL),
(119, 'Kłamstwo', NULL, 19, NULL, 'Wydawnictwo HarperCollins', '1990-03-03', 'Polski', 1, NULL),
(120, 'Hobbit', NULL, 20, NULL, 'Wydawnictwo Allen & Unwin', '1937-09-21', 'Angielski', 1, NULL),
(121, 'Rok 1984', NULL, 21, NULL, 'Wydawnictwo HarperCollins', '1949-06-08', 'Angielski', 1, NULL),
(122, 'Mistrz i Małgorzata', NULL, 22, NULL, 'Wydawnictwo Rosyjski Folklor', '1967-01-01', 'Rosyjski', 1, NULL),
(123, 'Gorzka Chwila', NULL, 23, NULL, 'Wydawnictwo Zysk i S-ka', '1974-09-01', 'Polski', 1, NULL),
(124, 'Duma i uprzedzenie', NULL, 24, NULL, 'Wydawnictwo HarperCollins', '1813-01-28', 'Angielski', 1, NULL),
(125, 'Władca Pierścieni', NULL, 25, NULL, 'Wydawnictwo Allen & Unwin', '1954-07-29', 'Angielski', 1, NULL),
(126, 'Skrzydła', NULL, 26, NULL, 'Wydawnictwo Literatury', '2009-01-01', 'Polski', 1, NULL),
(127, 'Alicja w Krainie Czarów', NULL, 27, NULL, 'Wydawnictwo Macmillan', '1865-11-26', 'Angielski', 1, NULL),
(128, 'O pięciu morzach', NULL, 28, NULL, 'Wydawnictwo Black Swan', '1968-05-01', 'Angielski', 1, NULL),
(129, 'Złodziejka książek', NULL, 29, NULL, 'Wydawnictwo Random House', '2005-09-01', 'Angielski', 1, NULL),
(130, 'Człowiek w poszukiwaniu sensu', NULL, 30, NULL, 'Wydawnictwo Beacon', '1946-01-01', 'Angielski', 1, NULL),
(131, 'Ziemia obiecana', NULL, 31, NULL, 'Wydawnictwo Zakład Narodowy', '1911-12-01', 'Polski', 1, NULL),
(132, 'Zmierzch', NULL, 32, NULL, 'Wydawnictwo Prószyński i S-ka', '2005-10-05', 'Angielski', 1, NULL),
(133, 'Mężczyźni, którzy nienawidzą kobiet', NULL, 33, NULL, 'Wydawnictwo W.A.B.', '2005-08-01', 'Szwedzki', 1, NULL),
(134, 'Zimowy monarcha', NULL, 34, NULL, 'Wydawnictwo Literackie', '1995-04-01', 'Polski', 1, NULL),
(135, 'Pani Bovary', NULL, 35, NULL, 'Wydawnictwo Dumas', '1856-01-01', 'Francuski', 1, NULL),
(136, 'Wielki Gatsby', NULL, 36, NULL, 'Wydawnictwo Scribner', '1925-04-10', 'Angielski', 1, NULL),
(137, 'Mały książę', NULL, 37, NULL, 'Wydawnictwo Gallimard', '1943-04-06', 'Francuski', 1, NULL),
(138, 'Zbrodnia', NULL, 38, NULL, 'Wydawnictwo Nowa Era', '1968-02-01', 'Polski', 1, NULL),
(139, 'Lalka', NULL, 39, NULL, 'Wydawnictwo Polskie', '1890-01-01', 'Polski', 1, NULL),
(140, 'Ziemia', NULL, 40, NULL, 'Wydawnictwo Prawo i Życie', '2010-01-01', 'Ukraiński', 1, NULL),
(141, 'Wielki Gatsby', NULL, 41, NULL, 'Wydawnictwo Randon House', '1925-04-10', 'Angielski', 1, NULL),
(142, 'Mężczyźni, którzy nienawidzą kobiet', NULL, 42, NULL, 'Wydawnictwo W.A.B.', '2005-08-01', 'Szwedzki', 1, NULL),
(143, 'Księga', NULL, 43, NULL, 'Wydawnictwo Universitas', '2003-03-02', 'Polski', 1, NULL),
(144, 'Alicja w Krainie Czarów', NULL, 44, NULL, 'Wydawnictwo Macmillan', '1865-11-26', 'Angielski', 1, NULL),
(145, 'Lalka', NULL, 45, NULL, 'Wydawnictwo Polskie', '1890-01-01', 'Polski', 1, NULL),
(146, 'Wojnę i pokój', NULL, 46, NULL, 'Wydawnictwo L&S', '1869-01-01', 'Rosyjski', 1, NULL),
(147, 'Mistrz', NULL, 47, NULL, 'Wydawnictwo Kultura', '1997-04-05', 'Polski', 1, NULL),
(148, 'Idiotka', NULL, 48, NULL, 'Wydawnictwo L & S', '1869-01-01', 'Rosyjski', 1, NULL),
(149, 'Złodziejka książek', NULL, 49, NULL, 'Wydawnictwo Randon House', '2005-09-01', 'Angielski', 1, NULL),
(150, 'Miłość', NULL, 50, NULL, 'Wydawnictwo Tomz', '1999-01-01', 'Polski', 1, NULL),
(151, 'Duma i uprzedzenie', NULL, 54, NULL, 'Wydawnictwo W.A.B.', '1813-01-28', 'Angielski', 1, NULL),
(152, 'Kobieta w oknie', NULL, 26, NULL, 'Wydawnictwo Czwarta Strona', '2018-01-01', 'Angielski', 1, NULL),
(153, 'Zbrodnia i kara', NULL, 31, NULL, 'Wydawnictwo Zakład Narodowy', '1866-01-01', 'Rosyjski', 1, NULL),
(154, 'Harry Potter i Kamień Filozoficzny', NULL, 45, NULL, 'Wydawnictwo Media Rodzina', '1997-06-26', 'Angielski', 1, NULL),
(155, 'Człowiek w poszukiwaniu sensu', NULL, 80, NULL, 'Wydawnictwo Zysk i S-ka', '1946-01-01', 'Angielski', 1, NULL),
(156, 'Chłopi', NULL, 10, NULL, 'Wydawnictwo Kultura', '1904-01-01', 'Polski', 1, NULL),
(157, 'Pani Bovary', NULL, 50, NULL, 'Wydawnictwo Dumas', '1856-01-01', 'Francuski', 1, NULL),
(158, 'Błogosławiony wiek', NULL, 35, NULL, 'Wydawnictwo Pięciomorgi', '1962-01-01', 'Polski', 1, NULL),
(159, 'Nowy Wspaniały Świat', NULL, 90, NULL, 'Wydawnictwo Oxford', '1932-01-01', 'Angielski', 1, NULL),
(160, 'Sklepy cynamonowe', NULL, 70, NULL, 'Wydawnictwo Literackie', '1933-01-01', 'Polski', 1, NULL),
(161, 'Opowieści z Narnii: Lew, Czarownica i stara szafa', NULL, 20, NULL, 'Wydawnictwo Geoffrey Bles', '1950-10-16', 'Angielski', 1, NULL),
(162, 'Ziemia obiecana', NULL, 80, NULL, 'Wydawnictwo Literackie', '1911-12-01', 'Polski', 1, NULL),
(163, 'Wielki Gatsby', NULL, 25, NULL, 'Wydawnictwo Scribner', '1925-04-10', 'Angielski', 1, NULL),
(164, 'Pride and Prejudice', NULL, 60, NULL, 'Wydawnictwo Penguin', '1813-01-28', 'Angielski', 1, NULL),
(165, 'Wojna i pokój', NULL, 40, NULL, 'Wydawnictwo Book Club', '1869-01-01', 'Rosyjski', 1, NULL),
(166, 'Człowiek, który śmiał się', NULL, 15, NULL, 'Wydawnictwo Zysk i S-ka', '1869-01-01', 'Francuski', 1, NULL),
(167, 'Mężczyźni, którzy nienawidzą kobiet', NULL, 80, NULL, 'Wydawnictwo W.A.B.', '2005-08-01', 'Szwedzki', 1, NULL),
(168, 'Wielki Gatsby', NULL, 58, NULL, 'Wydawnictwo Randon House', '1925-04-10', 'Angielski', 1, NULL),
(169, 'Mały książę', NULL, 74, NULL, 'Wydawnictwo Gallimard', '1943-04-06', 'Francuski', 1, NULL),
(170, 'Opowieści z Narnii: Lew, Czarownica i stara szafa', NULL, 12, NULL, 'Wydawnictwo Geoffrey Bles', '1950-10-16', 'Angielski', 1, NULL),
(171, 'Pan Tadeusz', NULL, 101, NULL, 'Wydawnictwo Miedzy Wierszami', '1834-06-01', 'Polski', 1, NULL),
(172, 'Kobieta w oknie', NULL, 60, NULL, 'Wydawnictwo Czwarta Strona', '2018-01-01', 'Angielski', 1, NULL),
(173, 'Rok 1984', NULL, 49, NULL, 'Wydawnictwo Secker & Warburg', '1949-06-08', 'Angielski', 1, NULL),
(174, 'Wojna i pokój', NULL, 61, NULL, 'Wydawnictwo Faber & Faber', '1869-01-01', 'Rosyjski', 1, NULL),
(175, 'Sklepy cynamonowe', NULL, 35, NULL, 'Wydawnictwo Literackie', '1933-01-01', 'Polski', 1, NULL),
(176, 'Mistrz i Małgorzata', NULL, 50, NULL, 'Wydawnictwo Rosyjski Folklor', '1967-01-01', 'Rosyjski', 1, NULL),
(177, 'Zmierzch', NULL, 15, NULL, 'Wydawnictwo Prószyński i S-ka', '2005-10-05', 'Angielski', 1, NULL),
(178, 'Zbrodnia i kara', NULL, 22, NULL, 'Wydawnictwo Faber', '1866-01-01', 'Rosyjski', 1, NULL),
(179, 'Urok złośliwy', NULL, 87, NULL, 'Wydawnictwo Kultura', '1980-02-01', 'Polski', 1, NULL),
(180, 'Wielki Gatsby', NULL, 80, NULL, 'Wydawnictwo Random House', '1925-04-10', 'Angielski', 1, NULL),
(181, 'Pani Bovary', NULL, 39, NULL, 'Wydawnictwo Dumas', '1856-01-01', 'Francuski', 1, NULL),
(182, 'Ziemia obiecana', NULL, 20, NULL, 'Wydawnictwo Kultura', '1911-12-01', 'Polski', 1, NULL),
(183, 'Harry Potter i Kamień Filozoficzny', NULL, 74, NULL, 'Wydawnictwo Media Rodzina', '1997-06-26', 'Angielski', 1, NULL),
(184, 'Hobbit', NULL, 14, NULL, 'Wydawnictwo George Allen & Unwin', '1937-09-21', 'Angielski', 1, NULL),
(185, 'Opowieści z Narnii: Lew, Czarownica i stara szafa', NULL, 70, NULL, 'Wydawnictwo HarperCollins', '1950-10-16', 'Angielski', 1, NULL),
(186, 'Miłość', NULL, 66, NULL, 'Wydawnictwo Prószyński i S-ka', '1999-01-01', 'Polski', 1, NULL),
(187, 'Gorzka Chwila', NULL, 78, NULL, 'Wydawnictwo Literackie', '1974-09-01', 'Polski', 1, NULL),
(188, 'Sklepy cynamonowe', NULL, 25, NULL, 'Wydawnictwo Literackie', '1933-01-01', 'Polski', 1, NULL),
(189, 'Wojna i pokój', NULL, 70, NULL, 'Wydawnictwo Kultura', '1869-01-01', 'Rosyjski', 1, NULL),
(190, 'Hobbit', NULL, 30, NULL, 'Wydawnictwo HarperCollins', '1937-09-21', 'Angielski', 1, NULL),
(191, 'Idiotka', NULL, 29, NULL, 'Wydawnictwo L & S', '1869-01-01', 'Rosyjski', 1, NULL),
(192, 'Mistrz i Małgorzata', NULL, 18, NULL, 'Wydawnictwo Rosyjski Folklor', '1967-01-01', 'Rosyjski', 1, NULL),
(193, 'Duma i uprzedzenie', NULL, 12, NULL, 'Wydawnictwo Penguin', '1813-01-28', 'Angielski', 1, NULL),
(194, 'Błogosławiony wiek', NULL, 34, NULL, 'Wydawnictwo Pięciomorgi', '1962-01-01', 'Polski', 1, NULL),
(195, 'Zmierzch', NULL, 62, NULL, 'Wydawnictwo Prószyński i S-ka', '2005-10-05', 'Angielski', 1, NULL),
(196, 'Wielki Gatsby', NULL, 85, NULL, 'Wydawnictwo Randon House', '1925-04-10', 'Angielski', 1, NULL),
(197, 'Harry Potter i Kamień Filozoficzny', NULL, 42, NULL, 'Wydawnictwo Media Rodzina', '1997-06-26', 'Angielski', 1, NULL),
(198, 'Zbrodnia i kara', NULL, 43, NULL, 'Wydawnictwo Faber', '1866-01-01', 'Rosyjski', 1, NULL),
(199, 'Pani Bovary', NULL, 63, NULL, 'Wydawnictwo Dumas', '1856-01-01', 'Francuski', 1, NULL),
(200, 'Sklepy cynamonowe', NULL, 16, NULL, 'Wydawnictwo Literackie', '1933-01-01', 'Polski', 1, NULL),
(201, 'Wojna i pokój', NULL, 55, NULL, 'Wydawnictwo Faber & Faber', '1869-01-01', 'Rosyjski', 1, NULL),
(202, 'Przeminęło z wiatrem', NULL, 72, NULL, 'Wydawnictwo Macmillan', '1936-06-30', 'Angielski', 1, NULL),
(203, 'Król Lear', NULL, 89, NULL, 'Wydawnictwo Oxford University Press', '1606-01-01', 'Angielski', 1, NULL),
(204, 'Zbrodnia i kara', NULL, 40, NULL, 'Wydawnictwo Zakład Narodowy', '1866-01-01', 'Rosyjski', 1, NULL),
(205, 'Ziemia obiecana', NULL, 91, NULL, 'Wydawnictwo Literackie', '1911-12-01', 'Polski', 1, NULL),
(206, 'Wielki Gatsby', NULL, 47, NULL, 'Wydawnictwo Scribner', '1925-04-10', 'Angielski', 1, NULL),
(207, 'Człowiek, który śmiał się', NULL, 63, NULL, 'Wydawnictwo Zysk i S-ka', '1869-01-01', 'Francuski', 1, NULL),
(208, 'Duma i uprzedzenie', NULL, 80, NULL, 'Wydawnictwo Penguin', '1813-01-28', 'Angielski', 1, NULL),
(209, 'Człowiek w poszukiwaniu sensu', NULL, 60, NULL, 'Wydawnictwo Zysk i S-ka', '1946-01-01', 'Angielski', 1, NULL),
(210, 'Chłopi', NULL, 15, NULL, 'Wydawnictwo Kultura', '1904-01-01', 'Polski', 1, NULL),
(211, 'Pani Bovary', NULL, 57, NULL, 'Wydawnictwo Dumas', '1856-01-01', 'Francuski', 1, NULL),
(212, 'Wojna i pokój', NULL, 62, NULL, 'Wydawnictwo Kultura', '1869-01-01', 'Rosyjski', 1, NULL),
(213, 'Harry Potter i Kamień Filozoficzny', NULL, 36, NULL, 'Wydawnictwo Media Rodzina', '1997-06-26', 'Angielski', 1, NULL),
(214, 'Opowieści z Narnii: Lew, Czarownica i stara szafa', NULL, 50, NULL, 'Wydawnictwo Geoffrey Bles', '1950-10-16', 'Angielski', 1, NULL),
(215, 'Wielki Gatsby', NULL, 48, NULL, 'Wydawnictwo Randon House', '1925-04-10', 'Angielski', 1, NULL),
(216, 'Mały książę', NULL, 42, NULL, 'Wydawnictwo Gallimard', '1943-04-06', 'Francuski', 1, NULL),
(217, 'Rok 1984', NULL, 92, NULL, 'Wydawnictwo Secker & Warburg', '1949-06-08', 'Angielski', 1, NULL),
(218, 'Pride and Prejudice', NULL, 64, NULL, 'Wydawnictwo Penguin', '1813-01-28', 'Angielski', 1, NULL),
(219, 'Duma i uprzedzenie', NULL, 91, NULL, 'Wydawnictwo Penguin', '1813-01-28', 'Angielski', 1, NULL),
(220, 'Sklepy cynamonowe', NULL, 77, NULL, 'Wydawnictwo Literackie', '1933-01-01', 'Polski', 1, NULL),
(221, 'Idiotka', NULL, 39, NULL, 'Wydawnictwo L & S', '1869-01-01', 'Rosyjski', 1, NULL),
(222, 'Zbrodnia i kara', NULL, 88, NULL, 'Wydawnictwo Faber', '1866-01-01', 'Rosyjski', 1, NULL),
(223, 'Mężczyźni, którzy nienawidzą kobiet', NULL, 99, NULL, 'Wydawnictwo W.A.B.', '2005-08-01', 'Szwedzki', 1, NULL),
(224, 'Zmierzch', NULL, 107, NULL, 'Wydawnictwo Prószyński i S-ka', '2005-10-05', 'Angielski', 1, NULL),
(225, 'Sklepy cynamonowe', NULL, 58, NULL, 'Wydawnictwo Literackie', '1933-01-01', 'Polski', 1, NULL),
(226, 'Ziemia obiecana', NULL, 105, NULL, 'Wydawnictwo Literackie', '1911-12-01', 'Polski', 1, NULL),
(227, 'Pani Bovary', NULL, 54, NULL, 'Wydawnictwo Dumas', '1856-01-01', 'Francuski', 1, NULL),
(228, 'Hobbit', NULL, 68, NULL, 'Wydawnictwo George Allen & Unwin', '1937-09-21', 'Angielski', 1, NULL),
(229, 'Wielki Gatsby', NULL, 115, NULL, 'Wydawnictwo Random House', '1925-04-10', 'Angielski', 1, NULL),
(230, 'Zbrodnia i kara', NULL, 97, NULL, 'Wydawnictwo Faber', '1866-01-01', 'Rosyjski', 1, NULL),
(231, 'Opowieści z Narnii: Lew, Czarownica i stara szafa', NULL, 102, NULL, 'Wydawnictwo Geoffrey Bles', '1950-10-16', 'Angielski', 1, NULL),
(232, 'Harry Potter i Kamień Filozoficzny', NULL, 60, NULL, 'Wydawnictwo Media Rodzina', '1997-06-26', 'Angielski', 1, NULL),
(233, 'Człowiek w poszukiwaniu sensu', NULL, 110, NULL, 'Wydawnictwo Zysk i S-ka', '1946-01-01', 'Angielski', 1, NULL),
(234, 'Przeminęło z wiatrem', NULL, 73, NULL, 'Wydawnictwo Macmillan', '1936-06-30', 'Angielski', 1, NULL),
(235, 'Błogosławiony wiek', NULL, 112, NULL, 'Wydawnictwo Pięciomorgi', '1962-01-01', 'Polski', 1, NULL),
(236, 'Wojna i pokój', NULL, 120, NULL, 'Wydawnictwo Kultura', '1869-01-01', 'Rosyjski', 1, NULL),
(237, 'Zmierzch', NULL, 118, NULL, 'Wydawnictwo Prószyński i S-ka', '2005-10-05', 'Angielski', 1, NULL),
(238, 'Mały książę', NULL, 118, NULL, 'Wydawnictwo Gallimard', '1943-04-06', 'Francuski', 1, NULL),
(239, 'Harry Potter i Kamień Filozoficzny', NULL, 122, NULL, 'Wydawnictwo Media Rodzina', '1997-06-26', 'Angielski', 1, NULL),
(240, 'Pani Bovary', NULL, 90, NULL, 'Wydawnictwo Dumas', '1856-01-01', 'Francuski', 1, NULL),
(241, 'Rok 1984', NULL, 56, NULL, 'Wydawnictwo Secker & Warburg', '1949-06-08', 'Angielski', 1, NULL),
(242, 'Sklepy cynamonowe', NULL, 102, NULL, 'Wydawnictwo Literackie', '1933-01-01', 'Polski', 1, NULL),
(243, 'Pani Bovary', NULL, 105, NULL, 'Wydawnictwo Dumas', '1856-01-01', 'Francuski', 1, NULL),
(244, 'Człowiek w poszukiwaniu sensu', NULL, 40, NULL, 'Wydawnictwo Zysk i S-ka', '1946-01-01', 'Angielski', 1, NULL),
(245, 'Zmierzch', NULL, 101, NULL, 'Wydawnictwo Prószyński i S-ka', '2005-10-05', 'Angielski', 1, NULL),
(246, 'Opowieści z Narnii: Lew, Czarownica i stara szafa', NULL, 125, NULL, 'Wydawnictwo Geoffrey Bles', '1950-10-16', 'Angielski', 1, NULL),
(247, 'Hobbit', NULL, 117, NULL, 'Wydawnictwo George Allen & Unwin', '1937-09-21', 'Angielski', 1, NULL),
(248, 'Wielki Gatsby', NULL, 111, NULL, 'Wydawnictwo Random House', '1925-04-10', 'Angielski', 1, NULL),
(249, 'Harry Potter i Kamień Filozoficzny', NULL, 123, NULL, 'Wydawnictwo Media Rodzina', '1997-06-26', 'Angielski', 1, NULL),
(250, 'Zbrodnia i kara', NULL, 124, NULL, 'Wydawnictwo Faber', '1866-01-01', 'Rosyjski', 1, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `recenzje`
--

CREATE TABLE `recenzje` (
  `id` int NOT NULL,
  `id_ksiazka` int NOT NULL,
  `id_uzytkownik` int NOT NULL,
  `data_dodania` date NOT NULL,
  `recenzja` text COLLATE utf8mb3_polish_ci NOT NULL,
  `ocena` varchar(9) COLLATE utf8mb3_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_polish_ci;

--
-- Dumping data for table `recenzje`
--

INSERT INTO `recenzje` (`id`, `id_ksiazka`, `id_uzytkownik`, `data_dodania`, `recenzja`, `ocena`) VALUES
(1, 150, 12, '2024-12-01', 'Wspaniała książka, pełna emocji i historycznych szczegółów.', 'pozytywna'),
(2, 42, 34, '2024-12-02', 'Książka bardzo interesująca, ale zbyt długa w porównaniu do filmu.', 'pozytywna'),
(3, 233, 56, '2024-12-02', 'Ciężko było się skupić, zbyt trudna w odbiorze.', 'negatywna'),
(4, 123, 45, '2024-12-03', 'Niezwykłe dzieło, które zmienia spojrzenie na ludzką moralność.', 'pozytywna'),
(5, 14, 23, '2024-12-03', 'Bardzo wciągająca, ale czasami zbyt przygnębiająca.', 'pozytywna'),
(6, 67, 67, '2024-12-04', 'Fantastyczna opowieść, z głębokimi refleksjami na temat życia.', 'pozytywna'),
(7, 88, 89, '2024-12-04', 'Ciekawa, choć niełatwa w odbiorze.', 'negatywna'),
(8, 231, 44, '2024-12-05', 'Piękna opowieść o miłości i klasach społecznych.', 'pozytywna'),
(9, 90, 15, '2024-12-06', 'Motywacja do działania, polecam każdemu!', 'pozytywna'),
(10, 1, 99, '2024-12-06', 'Nie mogłem się oderwać, wspaniała opowieść o ludzkiej naturze.', 'pozytywna'),
(11, 2, 82, '2024-12-07', 'Zdecydowanie za długi, trudny do przeczytania.', 'negatywna'),
(12, 59, 39, '2024-12-07', 'Wspaniała książka, ponadczasowa.', 'pozytywna'),
(13, 177, 11, '2024-12-08', 'Zaskakująco dobra, ale nie dorównuje filmowi.', 'pozytywna'),
(14, 250, 91, '2024-12-08', 'Przepiękna historia, wzruszająca.', 'pozytywna'),
(15, 180, 43, '2024-12-09', 'Zdecydowanie warta przeczytania, mądra książka.', 'pozytywna'),
(16, 222, 25, '2024-12-09', 'Książka dla każdego, kto szuka głębszego sensu życia.', 'pozytywna'),
(17, 200, 71, '2024-12-10', 'Świetnie napisana, ale bardzo smutna.', 'pozytywna'),
(18, 111, 78, '2024-12-10', 'Długi opis, ale interesująca książka.', 'pozytywna'),
(19, 45, 49, '2024-12-11', 'Bardzo trudna, ale jeśli się przebrnie przez początek, warto.', 'pozytywna'),
(20, 86, 17, '2024-12-11', 'Mistrzowskie dzieło, które zasługuje na uwagę każdego czytelnika.', 'pozytywna'),
(21, 7, 34, '2024-12-12', 'Nie przepadam za tym typem literatury, ale rozumiem jej wartość.', 'negatywna'),
(22, 144, 93, '2024-12-12', 'Bardzo dobra książka, choć zbyt pesymistyczna.', 'pozytywna'),
(23, 56, 20, '2024-12-13', 'Wciągająca, ale przewidywalna.', 'negatywna'),
(24, 99, 50, '2024-12-13', 'Powieść niesamowicie wciągająca, nie mogłem się oderwać.', 'pozytywna'),
(25, 138, 42, '2024-12-14', 'Zdecydowanie warta przeczytania.', 'pozytywna'),
(26, 44, 81, '2024-12-14', 'Opowieść, która nie nudzi ani na chwilę.', 'pozytywna'),
(27, 157, 55, '2024-12-15', 'Trochę przestarzała, ale wartościowa literacko.', 'pozytywna'),
(28, 175, 100, '2024-12-15', 'Bardzo ciekawe, choć trochę zbyt fantastyczne.', 'pozytywna'),
(29, 33, 68, '2024-12-16', 'Ciężko mi było dotrwać do końca.', 'negatywna'),
(30, 11, 48, '2024-12-16', 'Wspaniałe dzieło literackie, którego nie można przegapić.', 'pozytywna'),
(31, 126, 65, '2024-12-17', 'Opowieść, która porusza głębokie ludzkie emocje.', 'pozytywna'),
(32, 174, 19, '2024-12-17', 'Dobrze napisana, ale zbyt przewidywalna.', 'negatywna'),
(33, 91, 70, '2024-12-18', 'Zmusiła mnie do refleksji nad własnym życiem.', 'pozytywna'),
(34, 131, 60, '2024-12-18', 'Książka, którą warto przeczytać przynajmniej raz.', 'pozytywna'),
(35, 150, 76, '2024-12-19', 'Ciekawa, ale nie na długo zapadająca w pamięć.', 'negatywna'),
(36, 79, 37, '2024-12-19', 'Bardzo mocna książka, której nie mogłem odłożyć.', 'pozytywna'),
(37, 9, 58, '2024-12-20', 'Książka bardzo wciągająca, polecam ją każdemu.', 'pozytywna'),
(38, 8, 40, '2024-12-20', 'Również bardzo dobra książka, choć momentami za trudna.', 'negatywna'),
(39, 22, 21, '2024-12-21', 'Zdecydowanie jeden z najlepszych thrillerów, jakie czytałem.', 'pozytywna'),
(40, 111, 81, '2024-12-21', 'Niezła książka, ale liczyłem na coś więcej.', 'negatywna'),
(41, 77, 92, '2024-12-22', 'Sporo przemyśleń, które pozostaną ze mną na długo.', 'pozytywna'),
(42, 193, 23, '2024-12-22', 'Zdecydowanie warto przeczytać, choć książka jest momentami zbyt emocjonalna.', 'pozytywna'),
(43, 24, 54, '2024-12-23', 'Zdecydowanie za dużo wątków, momentami trudna w odbiorze.', 'negatywna'),
(44, 112, 12, '2024-12-23', 'Bardzo dobrze napisana, zaskakująca.', 'pozytywna'),
(45, 13, 26, '2024-12-24', 'Niestety nie spełniła moich oczekiwań, średnia książka.', 'negatywna'),
(46, 105, 61, '2024-12-24', 'Piękna opowieść o rodzinie i tajemnicach, które łączą pokolenia.', 'pozytywna'),
(47, 41, 70, '2024-12-25', 'Powieść, która chwyta za serce, świetna fabuła.', 'pozytywna'),
(48, 103, 83, '2024-12-25', 'Bardzo trudna w odbiorze, ale daje do myślenia.', 'negatywna'),
(49, 50, 93, '2024-12-26', 'Świetne zakończenie, ale początek trochę nużący.', 'pozytywna'),
(50, 178, 36, '2024-12-26', 'Książka pełna inspirujących myśli, warto ją przeczytać.', 'pozytywna'),
(51, 156, 68, '2024-12-27', 'Porusza bardzo ważne tematy, ale trochę zbyt wolno się rozkręca.', 'negatywna'),
(52, 25, 51, '2024-12-27', 'Jedna z najlepszych książek, które czytałem w ostatnich latach.', 'pozytywna'),
(53, 39, 44, '2024-12-28', 'Przeczytałem ją jednym tchem, zdecydowanie polecam.', 'pozytywna'),
(54, 102, 62, '2024-12-28', 'Smutna, ale piękna, doskonała dla tych, którzy lubią literaturę głęboką.', 'pozytywna'),
(55, 20, 15, '2024-12-29', 'Za dużo zbędnych wątków, nie trafiła do mnie.', 'negatywna'),
(56, 124, 73, '2024-12-29', 'Wciągająca książka, której nie można odłożyć.', 'pozytywna'),
(57, 8, 58, '2024-12-30', 'Zbyt przewidywalna, książka bez większego zaskoczenia.', 'negatywna'),
(58, 105, 99, '2024-12-30', 'Piękna opowieść, pełna emocji.', 'pozytywna'),
(59, 132, 87, '2024-12-31', 'Niezły wybór, ale można się trochę znudzić w połowie.', 'negatywna'),
(60, 66, 90, '2024-12-31', 'Zdecydowanie warta przeczytania, lekka i przyjemna.', 'pozytywna'),
(61, 15, 35, '2025-01-01', 'Piękna książka o przyjaźni i miłości.', 'pozytywna'),
(62, 97, 31, '2025-01-01', 'Zbyt mało akcji, nie trafiła do mnie.', 'negatywna'),
(63, 86, 43, '2025-01-02', 'Książka pełna magii i emocji, wspaniała przygoda.', 'pozytywna'),
(64, 175, 51, '2025-01-02', 'Fascynująca, chociaż trochę za trudna do zrozumienia.', 'negatywna'),
(65, 74, 48, '2025-01-03', 'Zdecydowanie najlepsza książka tej autorki.', 'pozytywna'),
(66, 101, 72, '2025-01-03', 'Bardzo interesująca, ale wymaga dużej uwagi do detali.', 'pozytywna'),
(67, 149, 91, '2025-01-04', 'Piękna historia, pełna wzruszeń.', 'pozytywna'),
(68, 120, 25, '2025-01-04', 'Słaba, zbyt dużo powtórzeń.', 'negatywna'),
(69, 28, 10, '2025-01-05', 'Pomimo drobnych wad, książka ma swój urok.', 'pozytywna'),
(70, 48, 18, '2025-01-05', 'Nie mogłem się skupić na tej książce, nie pasuje do mojego gustu.', 'negatywna'),
(71, 57, 50, '2025-01-06', 'Zdecydowanie polecam tę książkę każdemu, kto szuka czegoś innego.', 'pozytywna'),
(72, 137, 74, '2025-01-06', 'Bardzo długa i męcząca, nie dla każdego.', 'negatywna'),
(73, 155, 95, '2025-01-07', 'Absolutnie fenomenalna książka!', 'pozytywna'),
(74, 9, 63, '2025-01-07', 'Dzięki tej książce zmieniłem swoje spojrzenie na życie.', 'pozytywna'),
(75, 49, 32, '2025-01-08', 'Bardzo trudna, ale wartościowa książka.', 'pozytywna'),
(76, 28, 70, '2025-01-08', 'Strona po stronie coraz lepsza, zaskakujące zakończenie!', 'pozytywna'),
(77, 117, 47, '2025-01-09', 'Zdecydowanie za długie, można się pogubić w fabule.', 'negatywna'),
(78, 35, 64, '2025-01-09', 'Świetna książka, wciągająca od początku do końca.', 'pozytywna'),
(79, 111, 86, '2025-01-10', 'Jedna z najpiękniejszych książek, jakie przeczytałem.', 'pozytywna'),
(80, 140, 67, '2025-01-10', 'Zdecydowanie za dużo przydługich opisów, ale ogólnie dobra książka.', 'pozytywna'),
(81, 132, 55, '2025-01-10', 'Bardzo ciekawe podejście do tematu, zdecydowanie warto przeczytać.', 'pozytywna'),
(82, 87, 45, '2025-01-11', 'Książka pełna zaskakujących zwrotów akcji, świetna!', 'pozytywna'),
(83, 123, 38, '2025-01-11', 'Czuję się trochę rozczarowany, książka miała większy potencjał.', 'negatywna'),
(84, 90, 76, '2025-01-12', 'Zdecydowanie polecam, wciągająca i pełna emocji.', 'pozytywna'),
(85, 113, 89, '2025-01-12', 'Powieść, która potrafi zmusić do myślenia, wspaniała!', 'pozytywna'),
(86, 136, 32, '2025-01-13', 'Zdecydowanie za ciężka, nie wciągnęła mnie.', 'negatywna'),
(87, 45, 72, '2025-01-13', 'Rewelacyjna książka, która skłania do refleksji nad życiem.', 'pozytywna'),
(88, 53, 66, '2025-01-14', 'Bardzo ciekawa, ale momentami trochę zbyt przygnębiająca.', 'pozytywna'),
(89, 58, 20, '2025-01-14', 'Warto przeczytać, ale nie jestem zachwycony końcem.', 'negatywna'),
(90, 127, 90, '2025-01-15', 'Niesamowita historia, pełna emocji i zaskakujących momentów.', 'pozytywna'),
(91, 140, 56, '2025-01-15', 'Dobrze napisana, choć czasami za długa.', 'pozytywna'),
(92, 102, 59, '2025-01-16', 'Pozycja godna uwagi, ale przewidywalna.', 'negatywna'),
(93, 85, 67, '2025-01-16', 'Zdecydowanie warta przeczytania, pełna nieoczekiwanych zwrotów.', 'pozytywna'),
(94, 75, 94, '2025-01-17', 'Powieść dla osób szukających czegoś głębszego i wymagającego.', 'pozytywna'),
(95, 104, 66, '2025-01-17', 'Bardzo dobrze napisana, ale zbyt zawiła w niektórych momentach.', 'negatywna'),
(96, 120, 50, '2025-01-18', 'Książka, która zostaje w pamięci na długo.', 'pozytywna'),
(97, 150, 81, '2025-01-18', 'Bardzo mocna, ale trudna do przełknięcia.', 'negatywna'),
(98, 149, 78, '2025-01-19', 'Piękna książka, która dotyka ważnych tematów społecznych.', 'pozytywna'),
(99, 133, 69, '2025-01-19', 'Zdecydowanie nie moja bajka, nie potrafiłem się wciągnąć.', 'negatywna'),
(100, 59, 49, '2025-01-20', 'Zdecydowanie najlepsza książka tego autora.', 'pozytywna'),
(101, 1, 1, '2025-01-11', 'test XDDDDDDDDDD', 'negatywna');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacje`
--

CREATE TABLE `rezerwacje` (
  `id` int NOT NULL,
  `id_ksiazka` int NOT NULL,
  `id_uzytkownik` int NOT NULL,
  `data_wypozyczenia` date NOT NULL,
  `data_wygasniecia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_polish_ci;

--
-- Dumping data for table `rezerwacje`
--

INSERT INTO `rezerwacje` (`id`, `id_ksiazka`, `id_uzytkownik`, `data_wypozyczenia`, `data_wygasniecia`) VALUES
(1, 23, 104, '2024-12-04', '2025-01-10'),
(2, 12, 38, '2024-12-11', '2025-02-02'),
(3, 45, 72, '2025-01-03', '2025-02-03'),
(4, 78, 56, '2025-01-04', '2025-02-04'),
(5, 98, 67, '2025-01-04', '2025-02-05'),
(6, 14, 92, '2025-01-04', '2025-02-06'),
(7, 65, 34, '2025-01-04', '2025-02-07'),
(8, 112, 29, '2025-01-05', '2025-02-08'),
(9, 53, 19, '2025-01-07', '2025-02-09'),
(10, 136, 66, '2025-01-07', '2025-02-10'),
(11, 87, 83, '2025-01-08', '2025-02-11'),
(12, 150, 91, '2025-01-08', '2025-02-12'),
(13, 107, 58, '2025-01-07', '2025-02-13'),
(14, 44, 77, '2025-01-07', '2025-02-14'),
(15, 65, 71, '2025-01-07', '2025-02-15'),
(16, 19, 42, '2025-01-07', '2025-02-16'),
(17, 123, 61, '2025-01-07', '2025-02-17'),
(18, 110, 36, '2025-01-07', '2025-02-18'),
(19, 85, 40, '2025-01-07', '2025-02-19'),
(20, 48, 99, '2025-01-07', '2025-02-20'),
(21, 15, 60, '2025-01-08', '2025-02-21'),
(22, 79, 76, '2025-01-08', '2025-02-22'),
(23, 123, 68, '2025-01-08', '2025-02-23'),
(24, 41, 55, '2025-01-08', '2025-02-24'),
(25, 104, 49, '2025-01-08', '2025-02-25'),
(26, 9, 33, '2025-01-08', '2025-02-26'),
(27, 56, 74, '2025-01-08', '2025-02-27'),
(28, 98, 53, '2025-01-08', '2025-02-28'),
(29, 116, 50, '2025-01-08', '0000-00-00'),
(30, 67, 63, '2025-01-08', '0000-00-00'),
(31, 132, 92, '2025-01-09', '0000-00-00'),
(32, 21, 12, '2025-01-09', '2025-03-01'),
(33, 119, 77, '2025-01-09', '2025-03-02'),
(34, 54, 37, '2025-01-09', '2025-03-03'),
(35, 90, 78, '2025-01-09', '2025-03-04'),
(36, 71, 62, '2025-01-09', '2025-03-05'),
(37, 118, 40, '2025-01-09', '2025-03-06'),
(38, 115, 33, '2025-01-09', '2025-03-07'),
(39, 102, 55, '2025-01-09', '2025-03-08'),
(40, 83, 90, '2025-01-09', '0000-00-00'),
(41, 129, 60, '2025-02-10', '2025-03-10'),
(42, 68, 46, '2025-02-11', '2025-03-11'),
(43, 116, 31, '2025-02-12', '2025-03-12'),
(44, 108, 99, '2025-02-13', '2025-03-13'),
(45, 34, 21, '2025-02-14', '2025-03-14'),
(46, 87, 18, '2025-02-15', '2025-03-15'),
(47, 119, 68, '2025-02-16', '2025-03-16'),
(48, 54, 57, '2025-02-17', '2025-03-17'),
(49, 25, 94, '2025-02-18', '2025-03-18'),
(50, 109, 39, '2025-02-19', '2025-03-19'),
(51, 141, 53, '2025-02-20', '2025-03-20'),
(52, 12, 81, '2025-02-21', '2025-03-21'),
(53, 130, 42, '2025-02-22', '2025-03-22'),
(54, 102, 64, '2025-02-23', '2025-03-23'),
(55, 76, 88, '2025-02-24', '2025-03-24'),
(56, 124, 29, '2025-02-25', '2025-03-25'),
(57, 94, 87, '2025-02-26', '2025-03-26'),
(58, 60, 56, '2025-02-27', '2025-03-27'),
(59, 44, 18, '2025-02-28', '2025-03-28'),
(60, 78, 71, '2025-03-01', '2025-04-01'),
(61, 130, 95, '2025-03-02', '2025-04-02'),
(62, 142, 66, '2025-03-03', '2025-04-03'),
(63, 55, 71, '2025-03-04', '2025-04-04'),
(64, 119, 82, '2025-03-05', '2025-04-05'),
(65, 132, 95, '2025-03-06', '2025-04-06'),
(66, 51, 53, '2025-03-07', '2025-04-07'),
(67, 108, 84, '2025-03-08', '2025-04-08'),
(68, 75, 58, '2025-03-09', '2025-04-09'),
(69, 66, 97, '2025-03-10', '2025-04-10'),
(70, 119, 90, '2025-03-11', '2025-04-11'),
(71, 92, 46, '2025-03-12', '2025-04-12'),
(72, 85, 33, '2025-03-13', '2025-04-13'),
(73, 50, 61, '2025-03-14', '2025-04-14'),
(74, 121, 64, '2025-03-15', '2025-04-15'),
(75, 106, 85, '2025-03-16', '2025-04-16');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int NOT NULL,
  `imie` varchar(20) COLLATE utf8mb3_polish_ci NOT NULL,
  `nazwisko` varchar(30) COLLATE utf8mb3_polish_ci NOT NULL,
  `nr_tel` char(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_polish_ci DEFAULT NULL,
  `adres_email` varchar(40) COLLATE utf8mb3_polish_ci NOT NULL,
  `haslo` text COLLATE utf8mb3_polish_ci NOT NULL,
  `data_zal` date NOT NULL,
  `status` varchar(12) COLLATE utf8mb3_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_polish_ci;

--
-- Dumping data for table `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `imie`, `nazwisko`, `nr_tel`, `adres_email`, `haslo`, `data_zal`, `status`) VALUES
(104, 'Maciej', 'Chojnacki', '111222334', 'maciek.chojnacki22@wp.pl', '$2y$10$GBRZ7wynEWWcZkG0X2uXr.3TgpM3wlmSNhwnZ0LBRQ9umBcZ/mL32', '2025-01-07', 'aktywny');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `autorzy`
--
ALTER TABLE `autorzy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `recenzje`
--
ALTER TABLE `recenzje`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autorzy`
--
ALTER TABLE `autorzy`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `recenzje`
--
ALTER TABLE `recenzje`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `rezerwacje`
--
ALTER TABLE `rezerwacje`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
