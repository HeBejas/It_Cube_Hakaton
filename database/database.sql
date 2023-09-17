-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Сен 17 2023 г., 20:27
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `izhgo__`
--

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--
-- Создание: Сен 17 2023 г., 15:26
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `id_client` int(8) NOT NULL,
  `name_client` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname_client` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patronymic_client` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_client` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_client` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `stop`
--
-- Создание: Сен 17 2023 г., 15:26
-- Последнее обновление: Сен 17 2023 г., 16:16
--

DROP TABLE IF EXISTS `stop`;
CREATE TABLE `stop` (
  `id_stop` int(8) NOT NULL,
  `name_stop` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_stop` longtext COLLATE utf8mb4_unicode_ci,
  `img_stop` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `stop`
--

INSERT INTO `stop` (`id_stop`, `name_stop`, `desc_stop`, `img_stop`) VALUES
(1, 'Зуевы ключи', 'Место, о котором пойдет речь, охраняется духами. Здесь текут целебные ручьи и появляется добрый призрак. Это небольшая деревня на берегу реки Кама. С пригорка, у самого подъезда к деревне, видно практически всю местность, как будто изрезанную потоками воды. Полоски земли то тут, то там проглядывают через реку, настоящие острова.', 'https://nashural.ru/assets/uploads/gremyachiy-kluch02.jpg'),
(2, 'Чемошур-Учинский каньон', 'Здесь удивительно — вокруг бурелом, высокие стены из буро-зеленого песчаника, ручей и даже замерзшие водопады! Чемошур-Учинский каньон — очень красивое место и, если честно, совершенно необычное для Удмуртии. Доподлинно неизвестно, откуда здесь скалы, ущелье, водопады, и как вообще ручей пробил себе путь.', 'https://avatars.mds.yandex.net/get-altay/4321783/2a00000176fb46870cd1393f40fde9a4bc33/XXL_height'),
(3, 'Мемориальный комплекс братьям Сидоровым', 'Посвящен восьми родным братьям Сидоровым, ушедшим на фронт в 1941 и погибшим на войне. Авторы памятника – скульптор Анатолий Аникин и архитектор Виталий Яковицкий. Они изобразили барельефные портреты матери Елизаветы Александровны и отца Никанора Федоровича Сидоровых, а над ними – стайку из восьми журавлей.', 'https://avatars.mds.yandex.net/get-altay/3912953/2a00000176c65b92a32ccfa3440a47e65739/XXXL'),
(4, 'Можгинская центральная площадь', 'Центральная площадь Можги - сердце города, где сливаются красота архитектуры, оживленная атмосфера и культурные события. Здесь вы найдете прекрасные фонтаны, ухоженные зеленые насаждения и уютные скамейки для отдыха. Площадь окружена историческими зданиями, магазинами и кафе, создавая прекрасное место для прогулок и встреч с друзьями. Не пропустите возможность посетить центральную площадь Можги и окунуться в ее уникальную атмосферу!', 'https://mozhga18.ru/upload/000/u2/b/2/torzhestvennoe-otkrytie-centralnoi-ploschadi-v-mozhge-photos-big.jpg'),
(5, 'Арт-объект Я люблю Можгу', 'Арт-объект \"Я люблю Можгу\" - это великолепная инсталляция, которая воплощает любовь и привязанность к этому прекрасному городу. Сочетание ярких цветов, изящных форм и символических элементов создает уникальную атмосферу, которая вдохновляет и радует глаз. Этот арт-объект становится настоящей визитной карточкой Можги, призывая каждого зрителя полюбить и ценить этот удивительный уголок мира.', 'https://susanin.news/upload/iblock/f2a/f2a5ba0ac84dd35ae9757ba0d5bf345f.jpg_765x560.jpg'),
(6, 'Скамейка с дровосеком', 'Скамейка с дровосеком в городе Можга - это захватывающий арт-объект, который сочетает в себе элементы природы и искусства. Ее уникальный дизайн с изображением дровосека, выполненным с изяществом и талантом, привлекает взгляды прохожих. Эта скамейка становится не только функциональным элементом городского пространства, но и источником вдохновения и фотогеничности. Присядьте на эту скамейку и почувствуйте себя частью сказочного мира, где искусство и природа переплетаются в гармонии.', 'https://proudm.ru/storage/4410/conversions/1688817933_289_poster_1688817828861-thumb.jpg'),
(7, 'Дом высокой культуры быта', 'Дом высокой культуры быта - это воплощение элегантности и роскоши. Его величественная архитектура и изысканный интерьер впечатляют с первого взгляда. Здесь каждая деталь продумана до мельчайших нюансов, создавая атмосферу утонченности и комфорта. В этом доме вы сможете насладиться изысканными обедами, провести незабываемые вечера в просторных залах и отдохнуть в роскошных спальнях. ', 'https://demotivatorium.ru/sstorage/3/2019/01/05190601818325/demotivatorium_ru_dom_170018.jpg'),
(8, 'Концерн \"Калашников\"', 'Флагман отечественной стрелковой отрасли, на его долю приходится порядка 95% производства стрелкового оружия России.', 'https://cdn.kalashnikovgroup.ru/static/images/p/r/e/press-24853-720.jpeg'),
(9, 'Спасо-Преображенский храм', 'Спасо-преображенский храм в Воткинске - величественное святилище, воплощающее в себе духовность и красоту. Его изящная архитектура с причудливыми узорами и золотыми куполами притягивает взгляды и вдохновляет на восхищение. Внутри храма раскрывается мир церковного искусства, с его великолепными фресками и иконами, которые переносят посетителей в духовное путешествие. ', 'http://preobrajenie.cerkov.ru/files/2019/06/IMG_20190605_080353-619x348.jpg'),
(10, 'Ижевский электромеханический завод', 'АО «Ижевский электромеханический завод „Купол“» — советское и российское научно-производственное предприятие, расположенное в городе Ижевск, одно из крупнейших предприятий оборонно-промышленного комплекса России. Создано в 1957 году.', 'https://sdelanounas.ru/i/c/2/r/f_c2RlbGFub3VuYXMucnUvdXBsb2Fkcy84LzgvODg1MTUzODU4NTQ1Ml9vcmlnLmpwZWc_X19pZD0xMTI2NTU=.jpeg'),
(11, 'Ижевский мотозавод', 'АО «Ижевский мотозавод «Аксион-холдинг» — современное многопрофильное стратегическое приборостроительное предприятие оборонно-промышленного комплекса страны, обладающее передовыми технологиями, позволяющими создавать высокотехнологичные изделия, отвечающие требованиям рыночной экономики.', 'https://susanin.news/upload/iblock/e2e/tczmlsp4z3l0n1cde79z21v4iydk6bgq.jpg'),
(12, 'Музей сельскохозяйственной промышленности', 'Музей сельскохозяйственной промышленности в Сарапуле - старейший музей в Удмуртской Республике, предлагающий увлекательные выставки с удивительными предметами и невероятными фактами о истории города. Здесь вы сможете познакомиться с различными экспозициями, включая историко-архитектурный музей, художественный музей и мемориальный дом-музей академика Н.В. Мельникова. ', 'https://cdn.culture.ru/images/b6f595a3-25d0-5132-96db-3ad14ac8c09b/h_400,c_fill,g_center/da74371fd6f74963ffdc60479f640b1e-jpeg'),
(13, 'Варыжская река', 'Варыжская река - это живописный водный путь, протекающий через удивительные ландшафты. Ее берега украшены густой растительностью, создавая уютную обстановку для пеших прогулок и пикников. Река также является популярным местом для рыбалки и каякинга. Варыжская река предлагает великолепные виды и возможность насладиться природой в ее самом прекрасном проявлении.', 'https://vsegda-pomnim.com/uploads/posts/2022-03/1647094177_13-vsegda-pomnim-com-p-reka-skhodnya-foto-17.jpg'),
(14, 'Кама', 'Порт реки Кама в Камбарке - идеальное место для рыболовов! Здесь вы найдете удобные причалы, оснащенные всем необходимым оборудованием для комфортной и успешной рыбалки. Порт также предлагает широкий выбор услуг, включая аренду снаряжения, организацию рыболовных туров и профессиональные консультации. Благодаря расположению на реке Кама, в порту можно поймать разнообразные виды рыбы, от щуки и окуня до сома и карпа.', 'https://must-see.top/wp-content/uploads/2019/04/kama-700x477.jpg'),
(15, 'Река Камбарка', 'Река Камбарка - отличное место для рыбалки! 🎣 с чистыми водами и обилием различных видов рыбы, включая щуку, окуня и сома, она привлекает рыболовов со всего региона. 🐟🌊 на ее берегах вы найдете удобные места для ловли, а также возможности для проката лодок и снаряжения. 🚣‍♂️🎣 наслаждайтесь природой и уловом вместе с друзьями и семьей!', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Kambarka_Pond.jpeg/1920px-Kambarka_Pond.jpeg'),
(16, 'Лесная Поляна', 'Лесная поляна в Удмуртии - удивительное место, где гармония природы и спокойствие сливаются воедино. Здесь вы найдете густые леса, источники чистой воды и разнообразную флору и фауну. Поляна удивляет своей красотой и умиротворенностью, создавая идеальную атмосферу для прогулок, пикников и отдыха на природе. Насладитесь свежим воздухом и покойным окружением лесной поляны в Удмуртии.', 'https://pibig.info/uploads/posts/2021-12/1640639775_1-pibig-info-p-lesnaya-polyana-priroda-krasivo-foto-1.jpg'),
(17, 'Лудорвай', 'Архитектурно-этнографический музей-заповедник расположен в живописном месте в 17 км от г. Ижевска. Исторически музей располагается на бывшей территории русского починка Ильинка. Площадь музея составляет 59 гектар земли.  ', 'https://fs.tonkosti.ru/bq/iy/bqiy4usa13wwgc8wwcssk0cco.jpg'),
(18, 'Шаркан', 'Шаркан — село в Удмуртской Республике, которое за необыкновенную красоту природы и естественный горный рельеф нередко называют «Удмуртскими Альпами». Село располагается в 90 км к северо-востоку от Ижевска. Шаркан отличается от ряда других удмуртских сел развитой инфраструктурой. Кроме того, оно привлекает гостей со всей Республики и других районов России, а все потому, что Шаркан — отличное место для зимнего отдыха.', 'https://upload.wikimedia.org/wikipedia/commons/1/18/%D0%A0%D0%B5%D0%B7%D0%B8%D0%B4%D0%B5%D0%BD%D1%86%D0%B8%D1%8F_%D0%A2%D0%BE%D0%BB_%D0%91%D0%B0%D0%B1%D0%B0%D1%8F.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `tour`
--
-- Создание: Сен 17 2023 г., 16:17
-- Последнее обновление: Сен 17 2023 г., 16:18
--

DROP TABLE IF EXISTS `tour`;
CREATE TABLE `tour` (
  `id_tour` int(8) NOT NULL,
  `name_tour` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_tour` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_touroperator` int(8) NOT NULL,
  `datestart_tour` date DEFAULT NULL,
  `timestart_tour` time DEFAULT NULL,
  `duration_tour` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intduration_tour` int(15) NOT NULL,
  `id_typetour` int(8) NOT NULL,
  `desc_tour` longtext COLLATE utf8mb4_unicode_ci,
  `age_tour` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_tour` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tour`
--

INSERT INTO `tour` (`id_tour`, `name_tour`, `price_tour`, `id_touroperator`, `datestart_tour`, `timestart_tour`, `duration_tour`, `intduration_tour`, `id_typetour`, `desc_tour`, `age_tour`, `img_tour`) VALUES
(1, 'Зуевы ключи', '2900', 1, '2023-09-30', '06:30:00', '12 часов', 720, 1, 'Одно из красивейших мест Удмуртии находится в Каракулинском района. Его особенностью является пейзаж в виде просторов Камы.', '6+', 'https://avatars.dzeninfra.ru/get-zen_doc/2380471/pub_5eb83e3c8a5b343ca05a93bd_5ebbefcb9a01033d6615afa4/scale_1200'),
(2, 'Моя Можга', '2000', 2, '2024-09-29', '12:00:00', '8 часов', 480, 6, 'Уникальное путешествие в прекрасный город Можга. Откройте для себя его красивую архитектуру, историю и гостеприимство местных жителей. ', '12+', 'https://cdnn21.img.ria.ru/images/155806/41/1558064182_0:257:2730:1793_600x0_80_0_0_7deed55d1be7ff9b32207df4d23b4e23.jpg'),
(3, 'Золотые зоны Удмуртии', '1000', 3, '2023-10-30', '06:00:00', '14 часов', 840, 1, 'Незабываемое путешествие по самым живописным местам этого региона. Откройте для себя прекрасные природные пейзажи, исторические достопримечательности и национальную культуру Удмуртии. ', '16+', 'https://www.amigo-s.ru/images/153e36cb1230f5734c59a6de56998381.jpg'),
(4, 'Оборонная промышленность Ижевска', '5000', 2, '2024-09-30', '15:00:00', '4 часа', 240, 2, 'Увлекательное путешествие в мир военной техники и инноваций. Посетите заводы, где создаются современные оборонные системы, узнайте о истории и развитии оборонной промышленности Ижевска.', '18+', 'https://fabricators.ru/sites/default/files/styles/news/public/img_article/1464264015_42468480.jpg?itok=z_a-Z9Xo'),
(5, 'Музей сельскохозяйственной промышленности в Сарапуле', '500', 1, '2023-09-17', '12:00:00', '1 час', 60, 4, 'Место, где можно узнать о истории и развитии сельского хозяйства в этом регионе. экспозиции рассказывают о сельском хозяйстве, традициях и ремеслах. интересно для любителей истории и культуры.', '6+', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/National_Museum_of_Agriculture_in_Szreniawa%2C_palace.JPG/800px-National_Museum_of_Agriculture_in_Szreniawa%2C_palace.JPG'),
(6, 'Воткинский храм', '300', 3, '2023-09-20', '07:00:00', '30 минут', 30, 3, 'Воткинский храм, известный также как Спасо-Преображенский храм, является историческим и религиозным памятником в городе Воткинске. Храм впечатляет своей архитектурой и является местом паломничества и молитвы.', '12+', 'http://preobrajenie.cerkov.ru/files/2015/08/DSC_5859-e1587115960201-619x444.jpg'),
(7, 'Красоты Варыжской реки', '600', 1, '2023-10-05', '14:00:00', '3 часа', 180, 5, 'Варыж — река, протекающая по Глазовскому и Балезинскому районам Удмуртии, левый приток Пызепа.', '0+', 'https://media.discordapp.net/attachments/761937654425452564/1152691008623095950/image.png'),
(8, 'Рыбные угодья Камбарки', '700', 2, '2023-09-19', '04:00:00', '18 часов', 1080, 7, 'Здесь вы сможете насладиться рыбалкой в живописных озерах и реках, окруженных красивой природой. Привезите домой свежую рыбу и запоминающиеся впечатления от этого уникального тура.', '18+', 'https://catcher.fish/wp-content/uploads/2017/06/kambarskij_prud_2.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `touroperator`
--
-- Создание: Сен 17 2023 г., 15:26
-- Последнее обновление: Сен 17 2023 г., 16:50
--

DROP TABLE IF EXISTS `touroperator`;
CREATE TABLE `touroperator` (
  `id_touroperator` int(8) NOT NULL,
  `name_touroperator` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname_touroperator` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patronymic_touroperator` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_touroperator` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_touroperator` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_touroperator` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `touroperator`
--

INSERT INTO `touroperator` (`id_touroperator`, `name_touroperator`, `surname_touroperator`, `patronymic_touroperator`, `phone_touroperator`, `img_touroperator`, `desc_touroperator`) VALUES
(1, 'Тимофей', 'Зайцев', ' Артёмович', '+7 (928) 426 15 78', 'media/images/touroperator1.jpg', ' - туроператор с богатым опытом и страстью к путешествиям. Он специализируется на создании незабываемых туров и экскурсий по всей Удмуртии. С его помощью вы сможете открыть для себя новые уголки планеты, насладиться красотой природы, исследовать исторические достопримечательности и погрузиться в культуру разных стран. Александров Богдан Константинович гарантирует высокое качество услуг, индивидуальный подход к каждому клиенту и незабываемые впечатления от путешествий.'),
(2, 'Елисей', 'Смирнов', 'Мирославович', '+7 (928) 426 19 78', 'media/images/touroperator2.jpg', ' - туроператор с уникальным и креативным подходом к организации путешествий. Он обладает обширными знаниями о различных культурах и местах, что позволяет ему создавать неповторимые и захватывающие маршруты. Вместе с Алексеевым Богдашем Костьевичем вы сможете погрузиться в мир приключений, открыть для себя новые горизонты и создать незабываемые воспоминания. Он гарантирует индивидуальный подход к каждому клиенту и безупречное качество услуг. Отправляйтесь в путешествие с Алексеевым Богдашем Костьевичем и откройте для себя новые грани путешествий!'),
(3, 'Глеб', 'Власов', ' Ильич', '+7 (928) 426 15 79', 'media/images/touroperator3.jpg', ' - туроператор с вдохновляющим подходом к путешествиям. он создает уникальные маршруты, позволяющие открыть для себя новые места и культуры. путешествуйте с Алексовым Богдой Костиновичем и получайте незабываемые впечатления!');

-- --------------------------------------------------------

--
-- Структура таблицы `tour_client`
--
-- Создание: Сен 17 2023 г., 15:26
--

DROP TABLE IF EXISTS `tour_client`;
CREATE TABLE `tour_client` (
  `id_tour_client` int(8) NOT NULL,
  `id_client` int(8) NOT NULL,
  `id_tour` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tour_stop`
--
-- Создание: Сен 17 2023 г., 15:26
-- Последнее обновление: Сен 17 2023 г., 16:18
--

DROP TABLE IF EXISTS `tour_stop`;
CREATE TABLE `tour_stop` (
  `id_tour_stop` int(8) NOT NULL,
  `id_stop` int(8) NOT NULL,
  `id_tour` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tour_stop`
--

INSERT INTO `tour_stop` (`id_tour_stop`, `id_stop`, `id_tour`) VALUES
(1, 3, 2),
(2, 5, 2),
(3, 6, 2),
(4, 4, 2),
(5, 7, 2),
(6, 1, 1),
(7, 2, 3),
(8, 16, 3),
(9, 17, 3),
(10, 18, 3),
(11, 10, 4),
(12, 11, 4),
(13, 8, 4),
(14, 12, 5),
(15, 9, 6),
(16, 13, 7),
(17, 15, 8),
(18, 14, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `typetour`
--
-- Создание: Сен 17 2023 г., 15:26
-- Последнее обновление: Сен 17 2023 г., 16:18
--

DROP TABLE IF EXISTS `typetour`;
CREATE TABLE `typetour` (
  `id_typetour` int(8) NOT NULL,
  `name_typetour` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `typetour`
--

INSERT INTO `typetour` (`id_typetour`, `name_typetour`) VALUES
(1, 'Удмуртия'),
(2, 'Ижевск'),
(3, 'Воткинск'),
(4, 'Сарапул'),
(5, 'Глазов'),
(6, 'Можга'),
(7, 'Камбарка');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Индексы таблицы `stop`
--
ALTER TABLE `stop`
  ADD PRIMARY KEY (`id_stop`);

--
-- Индексы таблицы `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`id_tour`),
  ADD KEY `id_touroperator` (`id_touroperator`),
  ADD KEY `id_typetour` (`id_typetour`);

--
-- Индексы таблицы `touroperator`
--
ALTER TABLE `touroperator`
  ADD PRIMARY KEY (`id_touroperator`);

--
-- Индексы таблицы `tour_client`
--
ALTER TABLE `tour_client`
  ADD PRIMARY KEY (`id_tour_client`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_tour` (`id_tour`);

--
-- Индексы таблицы `tour_stop`
--
ALTER TABLE `tour_stop`
  ADD PRIMARY KEY (`id_tour_stop`),
  ADD KEY `id_stop` (`id_stop`),
  ADD KEY `id_tour` (`id_tour`);

--
-- Индексы таблицы `typetour`
--
ALTER TABLE `typetour`
  ADD PRIMARY KEY (`id_typetour`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `stop`
--
ALTER TABLE `stop`
  MODIFY `id_stop` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `tour`
--
ALTER TABLE `tour`
  MODIFY `id_tour` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `touroperator`
--
ALTER TABLE `touroperator`
  MODIFY `id_touroperator` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `tour_client`
--
ALTER TABLE `tour_client`
  MODIFY `id_tour_client` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tour_stop`
--
ALTER TABLE `tour_stop`
  MODIFY `id_tour_stop` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `typetour`
--
ALTER TABLE `typetour`
  MODIFY `id_typetour` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `tour`
--
ALTER TABLE `tour`
  ADD CONSTRAINT `tour_ibfk_1` FOREIGN KEY (`id_touroperator`) REFERENCES `touroperator` (`id_touroperator`),
  ADD CONSTRAINT `tour_ibfk_2` FOREIGN KEY (`id_typetour`) REFERENCES `typetour` (`id_typetour`);

--
-- Ограничения внешнего ключа таблицы `tour_client`
--
ALTER TABLE `tour_client`
  ADD CONSTRAINT `tour_client_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `tour_client_ibfk_2` FOREIGN KEY (`id_tour`) REFERENCES `tour` (`id_tour`);

--
-- Ограничения внешнего ключа таблицы `tour_stop`
--
ALTER TABLE `tour_stop`
  ADD CONSTRAINT `tour_stop_ibfk_1` FOREIGN KEY (`id_stop`) REFERENCES `stop` (`id_stop`),
  ADD CONSTRAINT `tour_stop_ibfk_2` FOREIGN KEY (`id_tour`) REFERENCES `tour` (`id_tour`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
