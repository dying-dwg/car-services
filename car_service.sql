
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `car_service`
--

-- --------------------------------------------------------

--
-- Структура таблицы `addresses`
--

CREATE TABLE `addresses` (
  `adr_id` int(2) NOT NULL,
  `adr_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adr_gr` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adr_kd` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `addresses`
--

INSERT INTO `addresses` (`adr_id`, `adr_name`, `adr_gr`, `adr_kd`) VALUES
(1, 'Софийская 8к1с1', 'Ежедневно 09:00 - 21:00', 'https://yandex.ru/maps/?rtext=~59.882460%2C30.392387'),
(2, 'ул. Потапова., д. 2\r\n', 'Ежедневно 10:00 - 21:00\r\n', 'https://yandex.ru/maps/?rtext=~59.960670%2C30.469363'),
(3, 'ул. Композиторов., д. 28', 'Ежедневно 10:00 - 21:00\r\n', 'https://yandex.ru/maps/?rtext=~60.063797%2C30.318851'),
(4, 'Наб. Обводного канала, 150\r\n', 'Ежедневно 10:00 - 21:00\r\n', 'https://yandex.ru/maps/?rtext=~59.908719%2C30.269883'),
(5, 'Петергофское ш., д.74к.2\r\n', 'Ежедневно 10:00 - 21:00', 'https://yandex.ru/maps/?rtext=~59.842404%2C30.119901');

-- --------------------------------------------------------

--
-- Структура таблицы `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `full_name` varchar(128) CHARACTER SET utf8mb4 NOT NULL,
  `login` varchar(16) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(64) CHARACTER SET utf8mb4 NOT NULL,
  `Номер_АС` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admins`
--

INSERT INTO `admins` (`id`, `full_name`, `login`, `password`, `Номер_АС`) VALUES
(1, 'Ефимова Ксения Ярославовна', '0', '0', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `captcha`
--

CREATE TABLE `captcha` (
  `id_cap` int(2) NOT NULL,
  `url_cap` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_cap` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `captcha`
--

INSERT INTO `captcha` (`id_cap`, `url_cap`, `text_cap`) VALUES
(1, 'http://dmtsoft.ru/img/captcha/dmt-Simple-Captcha-1.png', 'neu4'),
(2, 'http://dmtsoft.ru/img/captcha/dmt-Simple-Captcha-2.png', 'bwjn'),
(3, 'http://dmtsoft.ru/img/captcha/dmt-Simple-Captcha-3.png', 'gazf'),
(4, 'http://dmtsoft.ru/img/captcha/dmt-Flow-captcha-1.jpeg', '774'),
(5, 'http://dmtsoft.ru/img/captcha/dmt-Flow-captcha-2.jpeg', '6643'),
(6, 'http://dmtsoft.ru/img/captcha/dmt-Flow-captcha-3.jpeg', '6411');

-- --------------------------------------------------------

--
-- Структура таблицы `cart`
--

CREATE TABLE `cart` (
  `id` int(2) NOT NULL,
  `user` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cart`
--

INSERT INTO `cart` (`id`, `user`, `prod`, `date`) VALUES
(1, 't', '1', '02:21 11-04-2023'),
(2, 'admin1', '', '2023-05-06 19:10:44'),
(3, '', '', '2023-05-09 16:20:23'),
(4, 'danya', '4', '15:40 28-05-2023'),
(5, 'danya', '5', '15:40 28-05-2023');

-- --------------------------------------------------------

--
-- Структура таблицы `galery`
--

CREATE TABLE `galery` (
  `id` int(10) NOT NULL,
  `url` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `galery`
--

INSERT INTO `galery` (`id`, `url`) VALUES
(1, 'https://fix4car.ru/wp-content/uploads-webpc/gallery/bmw/thumbs/thumbs_bmw-1.jpeg.webp'),
(2, 'https://fix4car.ru/wp-content/uploads-webpc/gallery/opel/thumbs/thumbs_stupiza_opel_astra_x.jpg.webp'),
(3, 'https://fix4car.ru/wp-content/uploads-webpc/gallery/opel/thumbs/thumbs_shrus_opel_astra_x_1.jpg.webp'),
(4, 'https://fix4car.ru/wp-content/uploads-webpc/gallery/bmw/thumbs/thumbs_bmw-10.jpeg.webp'),
(5, 'https://fix4car.ru/wp-content/uploads-webpc/gallery/opel/thumbs/thumbs_opel-5.jpeg.webp'),
(6, 'https://fix4car.ru/wp-content/uploads-webpc/gallery/bmw/thumbs/thumbs_bmw-8.jpeg.webp'),
(7, 'https://fix4car.ru/wp-content/uploads-webpc/gallery/bmw/thumbs/thumbs_bmw-7.jpeg.webp'),
(8, 'https://fix4car.ru/wp-content/uploads-webpc/gallery/bmw/thumbs/thumbs_bmw-6.jpeg.webp'),
(9, 'https://fix4car.ru/wp-content/uploads-webpc/gallery/opel/thumbs/thumbs_stupiza_opel_astra_x.jpg.webp'),
(10, 'https://fix4car.ru/wp-content/uploads-webpc/gallery/opel/thumbs/thumbs_opel-3.jpeg.webp'),
(11, 'https://fix4car.ru/wp-content/gallery/nissan/thumbs/thumbs_obsluzhivanie-patrol.jpeg'),
(12, 'https://fix4car.ru/wp-content/gallery/infiniti/thumbs/thumbs_TdBMnBgdPcw.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `News_id` int(9) NOT NULL,
  `Ntext` text NOT NULL,
  `Ntitle` varchar(64) NOT NULL,
  `Nurl` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`News_id`, `Ntext`, `Ntitle`, `Nurl`) VALUES
(2, 'В этом видео узнаете про новые виды автоподстав, которые начали использовать подставщики в последние месяцы.', '9 НОВЫХ АВТОПОДСТАВ!', 'https://www.youtube.com/embed/jDzkOIlTkVQ'),
(3, '1. Mars Rover Vehicle\r\n2. Yamaha MOTOROiD\r\n3. Renault Float\r\n4. Terrafugia TF-X\r\n5. SureFly\r\n6. SHERP ATV\r\n7. Ultra Heavy-Lift Amphibious Connector (UHAC)\r\n8. PARS 6x6 CBRN', '8 КРУТЫХ СОВРЕМЕННЫХ МАШИН\r\n', 'https://www.youtube.com/embed/nLFaYKFtbqg'),
(4, 'Подробнее в видео!', 'ОГРОМНЫЕ И МОЩНЫЕ МАШИНЫ, КОТОРЫЕ ВЫ ДОЛЖНЫ УВИДЕТЬ\r\n', 'https://www.youtube.com/embed/Uaaof0DHs8k'),
(5, 'Сегодня вы увидите самые лучшие аксессуары и гаджеты для автомобиля, которые могут быть реально полезными каждому водителю. \r\n', 'Лучшие аксессуары для авто, которые ты точно захочешь себе\r\n', 'https://www.youtube.com/embed/wHw2zg8XOJo'),
(6, 'Машины \r\nС тех пор, как появился первый автомобиль, внешний вид и технические характеристики машин очень изменились. Прогресс не стоит на месте, и автомобиль, который не так давно был воплощением мечты, сегодня кажется консервной банкой на колёсах. Сегодня я покажу Вам самые крутые современные автомобили, а также машины, на которых мы будем ездить в ближайшем будущем! \r\n', '26 Машин, которые Вы Увидите Впервые в Жизни\r\n', 'https://www.youtube.com/embed/WAPcGqXjneY'),
(7, 'Большие и тяжелые задачи – пустое слово для этих аппаратов.\r\n', 'Самая Крупная Техника в Истории\r\n', 'https://www.youtube.com/embed/0qDuN8wzNdo'),
(8, '6 УДИВИТЕЛЬНЫХ МАШИН КОТОРЫЕ СТОИТ УВИДЕТЬ. В этом выпуске мы с вами посмотрим на топ 6 таких самых интересных машин как мерседес, вездеход для севера и много других необычных авто.\r\n', '6 УДИВИТЕЛЬНЫХ МАШИН КОТОРЫЕ СТОИТ УВИДЕТЬ\r\n', 'https://www.youtube.com/embed/t6hEZqwhfTA'),
(9, 'Фиат, мерс и другие машины!', 'ЭТИ АВТО РАЗОРЯТ ДО ПОСЛЕДНЕЙ КОПЕЙКИ', 'https://www.youtube.com/embed/GsdlHFGbZqM');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(2) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summa` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `summa`) VALUES
(1, 'замена: масло в редукторе \\ раздатке', '700 руб'),
(2, 'замена: свеча зажигания', '250 руб.'),
(3, 'замена: фильтр топливный не погружной', '500 руб.'),
(4, 'замена: грм ремень + помпа\r\n', '7000 руб'),
(5, 'промывка радиатора', '2500 руб.'),
(6, 'замена: помпа \\ насос', '1500 руб'),
(8, 'замена чегото', '500');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(355) CHARACTER SET utf8mb4 DEFAULT NULL,
  `login` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `password` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL,
  `date` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `full_name`, `login`, `email`, `password`, `date`) VALUES
(1, 'Даниил', '0', '0', '0', '2023-04-08');

-- --------------------------------------------------------

--
-- Структура таблицы `автосервисы`
--

CREATE TABLE `автосервисы` (
  `Номер_АС` int(2) NOT NULL,
  `Название_АС` varchar(32) NOT NULL,
  `Адрес_АС` varchar(64) NOT NULL,
  `Телефон_АС` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `автосервисы`
--

INSERT INTO `автосервисы` (`Номер_АС`, `Название_АС`, `Адрес_АС`, `Телефон_АС`) VALUES
(1, 'ЕжевикАвто', 'наб. Домодедовская, 98\r\n', '+75816407514'),
(2, 'Бамперок', 'пр. Балканская, 84\r\n', '+70290847145');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`adr_id`);

--
-- Индексы таблицы `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Номер_АС` (`Номер_АС`);

--
-- Индексы таблицы `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`id_cap`);

--
-- Индексы таблицы `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`News_id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `автосервисы`
--
ALTER TABLE `автосервисы`
  ADD PRIMARY KEY (`Номер_АС`),
  ADD UNIQUE KEY `Название_АС` (`Название_АС`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `addresses`
--
ALTER TABLE `addresses`
  MODIFY `adr_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `captcha`
--
ALTER TABLE `captcha`
  MODIFY `id_cap` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `galery`
--
ALTER TABLE `galery`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `News_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `автосервисы`
--
ALTER TABLE `автосервисы`
  MODIFY `Номер_АС` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_ibfk_1` FOREIGN KEY (`Номер_АС`) REFERENCES `автосервисы` (`Номер_АС`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
