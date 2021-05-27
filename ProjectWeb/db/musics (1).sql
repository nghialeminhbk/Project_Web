-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 27, 2021 lúc 05:05 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `musics`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'EDM trữ tình'),
(2, 'V-pop sôi động'),
(3, 'K-pop mới nhất'),
(4, 'US-UK ngày nay');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `music_id` int(50) NOT NULL,
  `content` varchar(100) NOT NULL,
  `create_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `music_id`, `content`, `create_date`) VALUES
(35, 15, 2, 'Bài hát này hay quá, không tiếc cho một like', 'Sunday 23-05-2021 11:30:35 AM'),
(38, 15, 4, 'Bài nào cx hay', 'Sunday 23-05-2021 11:45:48 AM'),
(40, 12, 2, 'Thật tuyệt vời !', 'Sunday 23-05-2021 12:06:51 PM'),
(41, 14, 2, 'Cũng hay lắm đó', 'Sunday 23-05-2021 12:07:38 PM'),
(42, 14, 8, 'Bài này hay quá xá lun !', 'Sunday 23-05-2021 12:08:01 PM'),
(43, 16, 2, 'Hay quá là hay luôn', 'Monday 24-05-2021 02:16:00 AM'),
(47, 19, 13, 'Thích nhất bài này của BTS !', 'Monday 24-05-2021 03:40:16 AM'),
(48, 12, 15, 'Hay qúa', 'Monday 24-05-2021 04:19:39 AM'),
(49, 14, 15, 'Hello, bài hát này nghe chill quá !', 'Monday 24-05-2021 10:47:39 AM'),
(50, 14, 20, 'BlackPink is number one', 'Monday 24-05-2021 10:52:08 AM'),
(51, 12, 16, 'good job!', 'Tuesday 25-05-2021 04:07:53 PM'),
(56, 12, 15, 'alo', 'Tuesday 25-05-2021 04:16:12 PM'),
(58, 15, 2, 'Hay quá', 'Tuesday 25-05-2021 04:24:38 PM'),
(59, 15, 15, 'Đúng bài mình thích', 'Tuesday 25-05-2021 04:27:10 PM'),
(64, 12, 19, 'good good!', 'Wednesday 26-05-2021 05:38:10 PM'),
(65, 12, 2, 'Bai hát thật tuyệt', 'Thursday 27-05-2021 04:13:13 AM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `music`
--

CREATE TABLE `music` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `artist` varchar(100) NOT NULL,
  `source` varchar(1000) NOT NULL,
  `title` text NOT NULL,
  `singer` varchar(1000) NOT NULL,
  `category_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `music`
--

INSERT INTO `music` (`id`, `name`, `artist`, `source`, `title`, `singer`, `category_id`) VALUES
(2, 'Như phút ban đầu', 'Noo Phước Thịnh', 'xwQqLA8JM3sa', '<br>Vì em anh như người điên mất trí\r\n<br>Vì em anh như chẳng còn biết nghĩ suy\r\n<br>Vì anh đã trót lỡ đắm say em không bận tâm mai sau thế nào\r\n<br>Dù mai sau kia gập ghềnh sóng gió\r\n<br>Dù mai sau kia dòng đời có cuốn xoay\r\n<br>Dù nhắm mắt anh vẫn nắm tay em như ngày ta bắt đầu\r\n<br>\r\n<br>Nhìn vào sâu đôi mắt\r\n<br>Em có biết trong anh muốn nói điều gì\r\n<br>Rằng từ lâu đôi ta đã thuộc về nhau\r\n<br>Người làm anh gục ngã\r\n<br>Từ ánh mắt đôi môi cử chỉ mỉm cười\r\n<br>Rằng từ đây anh muốn bên em suốt đời\r\n<br>\r\n<br>Vì em anh như người điên mất trí\r\n<br>Vì em anh như chẳng còn biết nghĩ suy\r\n<br>Vì anh đã trót lỡ đắm say em không bận tâm mai sau thế nào\r\n<br>Dù mai sau kia gập ghềnh sóng gió\r\n<br>Dù mai sau kia dòng đời có cuốn xoay\r\n<br>Dù nhắm mắt anh vẫn nắm tay em như ngày ta bắt đầu\r\n<br>\r\n<br>Dẫu ngày mưa hay ngày nắng chói chang\r\n<br>Em vẫn cứ dịu dàng, vẫn muốn bên em thật lâu\r\n<br>Phút đầu tiên em đã lấy mất đi linh hồn\r\n<br>Người làm anh xót xa con tim ngỡ ngàng\r\n<br>Vì em anh như người điên mất trí\r\n<br>Vì em anh như chẳng còn biết nghĩ suy\r\n<br>Vì anh đã trót lỡ đắm say em không bận tâm mai sau thế nào\r\n<br>Dù mai sau kia gập ghềnh sóng gió\r\n<br>Dù mai sau kia dòng đời có cuốn xoay\r\n<br>Dù nhắm mắt anh vẫn nắm tay em như ngày ta bắt đầu\r\n<br>\r\n<br>Vì em anh như người điên mất trí\r\n<br>Vì em anh như chẳng còn biết nghĩ suy\r\n<br>Vì anh đã trót lỡ đắm say em không bận tâm mai sau thế nào\r\n<br>Dù mai sau kia gập ghềnh sóng gió\r\n<br>Dù mai sau kia dòng đời có cuốn xoay\r\n<br>Dù nhắm mắt anh vẫn nắm tay em như ngày ta bắt đầu\r\n<br>\r\n<br>Vì em anh như người điên mất trí\r\n<br>Vì em anh như chẳng còn biết nghĩ suy\r\n<br>Vì anh đã trót lỡ đắm say em không bận tâm mai sau thế nào\r\n<br>Dù mai sau kia gập ghềnh sóng gió\r\n<br>Dù mai sau kia dòng đời có cuốn xoay\r\n<br>Dù nhắm mắt anh vẫn nắm tay em như ngày ta bắt đầu', 'Noo Phước Thịnh', 2),
(3, 'Save me', 'BTS', '2eJjJy2kIggq', '<p id=\"divLyric\" class=\"pd_lyric trans\" style=\"height:auto;max-height:none;\">\r\n                            Bài hát: Save Me (BTS Cover) - Jason Chen\r\n<br>\r\n<br>Nan sumswigo sipeo i bami sireo\r\n<br>Ijen kkaego sipeo kkumsogi sireo\r\n<br>Nan ane gathyeoseo nan jugeoisseo\r\n<br>Don’t wanna be lonely, just wanna be yours\r\n<br>\r\n<br>Wae iri kkamkkamhan geonji\r\n<br>Niga eoptneun i goseun\r\n<br>Wiheomhajanha manggajin nae moseup\r\n<br>Guhaejwo nal nado nal jabeul su eopseo, su eopseo\r\n<br>\r\n<br>Pre-Chorus:\r\n<br>Nae simjangsoril deureobwa\r\n<br>Jemeotdaero neol bureujanha\r\n<br>I kkaman eodum sogeseo\r\n<br>Neoneun ireoke bitnanikka\r\n<br>\r\n<br>Chorus:\r\n<br>Geu soneul naemireojwo Save Me, Save Me\r\n<br>I need your love before I fall, fall\r\n<br>Geu soneul naemireojwo Save Me, Save Me\r\n<br>I need your love before I fall, fall\r\n<br>\r\n<br>Geu soneul naemireojwo Save Me, Save Me\r\n<br>(Oh oh, Save Me Me Me)\r\n<br>Geu soneul naemireojwo Save Me, Save Me\r\n<br>(Oh oh, Save Me Me Me, Save Me Me Me)\r\n<br>\r\n<br>I want to be breathing I’m out of my mind\r\n<br>I’m so sick of dreaming can’t get through the night\r\n<br>Oh when I’m so blinded you make me alive\r\n<br>Don’t wanna be lonely, just wanna be yours\r\n<br>\r\n<br>I’m always lost when you’re not here\r\n<br>I lose all my senses\r\n<br>Attracted to your heart*\r\n<br>Get stronger and stronger\r\n<br>You’re hold on me\r\n<br>Baby would you set me free, set me free\r\n<br>\r\n<br>Pre-Chorus:\r\n<br>Listen my heart beats just for you\r\n<br>Cause we harmonize and perfect two\r\n<br>Just like the sun has the moon\r\n<br>Together we will shine bright too\r\n<br>\r\n<br>Chorus:\r\n<br>So baby take my hand and Save Me, Save Me\r\n<br>I need your love before I fall, fall\r\n<br>So baby take my hand and Save Me, Save Me\r\n<br>I need your love before I fall, fall\r\n<br>\r\n<br>So baby take my hand and Save Me, Save Me\r\n<br>(Oh oh, Save Me Me Me)\r\n<br>Oh baby take my hand and Save Me, Save Me\r\n<br>(Oh oh, Save Me Me Me, Save Me Me Me)\r\n                            \r\n                        </p>', 'BTS', 3),
(4, 'Tremo', 'Dimitri Vegas & Like Mike, Martin Garrix', 'Bl6rTX1UmDbx', '<p id=\"divLyric\" class=\"pd_lyric trans\" style=\"height:auto;max-height:255px;overflow:hidden;\">\r\n                            Bài hát: Tremor - Dimitri Vegas &amp; Like Mike, Martin Garrix\r\n<br>\r\n<br>Three, two, one, go\r\n<br>Three, two, one, go\r\n<br>Three, two, one, go\r\n                            \r\n                        </p>', 'Adam Lambert', 1),
(5, 'How you like that', 'Black Pink', 'kiqKPIGPJ15C', '<p id=\"divLyric\" class=\"pd_lyric\" style=\"height:auto;\">BLACKPINK in your area\r\n<br>\r\n<br>[Jennie]\r\n<br>보란 듯이 무너졌어 \r\n<br>Boran deusi muneojyeosseo\r\n<br>Nhìn xem tất cả đã trở nên sụp đổ\r\n<br>\r\n<br>바닥을 뚫고저 지하까지\r\n<br>Badageul ttulko jeo jihakkaji\r\n<br>Xuống tận đáy sâu\r\n<br>\r\n<br>[Jisoo]\r\n<br>옷 끝자락 잡겠다고\r\n<br>Ot kkeutjarak japgetdago\r\n<br>Nhưng tôi sẽ túm lấy vạt áo\r\n<br>\r\n<br>저 높이 두 손을 뻗어봐도\r\n<br>Jeo nopi du soneul ppeodeobwado\r\n<br>Và vươn lên đỉnh cao bằng chính đôi tay này\r\n<br>\r\n<br>[Rosé]\r\n<br>다시 캄캄한 이곳에 Light up the sky\r\n<br>Dasi kamkamhan igose Light up the sky\r\n<br>Ở nơi bóng tối bao trùm này lại tỏa sáng lần nữa\r\n<br>\r\n<br>네 두 눈을 보며I’ll kiss you goodbye\r\n<br>Ne du nuneul bomyeo I’ll kiss you goodbye\r\n<br>Để khi nhìn vào đôi mắt anh, tôi sẽ trao anh nụ hôn tạm biệt\r\n<br>\r\n<br>실컷 비웃어라 꼴 좋으니까\r\n<br>Silkeot biuseora kkoljoeunikka\r\n<br>Vì sự cười nhạo khiến tôi càng tốt hơn\r\n<br>\r\n<br>이제 너희 하나 둘 셋\r\n<br>Ije neohui hana dul set\r\n<br>Bây giờ mọi người hãy cùng 1 2 3\r\n<br>\r\n<br>[Lisa – Jennie, and Jisoo]\r\n<br>How-how you like that?\r\n<br>You gon’ like that, that-that-that-that, that, that, that, that\r\n<br>How you like that? (Bada bing, bada boom, boom, boom)\r\n<br>How you like that, that-that-that-that, that, that, that, that\r\n<br>\r\n<br>[Rosé – Lisa – Jennie]\r\n<br>Now look at you now look at me [Ooh]\r\n<br>Look at you now look at me [Ooh]\r\n<br>Look at you now look at me [Ooh]\r\n<br>How you like that? [Nah]\r\n<br>Now look at you now look at me\r\n<br>Look at you now look at me\r\n<br>Look at you now look at me\r\n<br>How you like that?\r\n<br>\r\n<br>[ Lisa]\r\n<br>Your girl need it all and that’s a hundred\r\n<br>Cô gái của anh cần mọi thứ và đó là hàng trăm thứ\r\n<br>\r\n<br>백 개 중에 백 내 몫을 원해 Karma come and get some\r\n<br>Baek gae junge baek nae mokseul wonhae Karma come and get some\r\n<br>Tôi muốn 100 trăm cái trong phần của tôi, Karma đến đây và lấy một ít đi\r\n<br>\r\n<br>딱하지만 어쩔 수 없잖아\r\n<br>Ttakajiman eojjeol su eopjana\r\n<br>Thật khó xử nhưng không còn cách nào cả\r\n<br>\r\n<br>What’s up, I’m right back\r\n<br>방아쇠를 cock back\r\n<br>ngasoereul cock back\r\n<br>Kéo cò súng cockback\r\n<br>\r\n<br>BaPlain Jane get hijacked, don’t like me?\r\n<br>Then tell me how you like that, like that\r\n<br>\r\n<br>[Jisoo – Jennie ]\r\n<br>더 캄캄한 이곳에 Shine like the stars\r\n<br>Deo kamkamhan igose shine like the stars\r\n<br>Ở nơi bóng tối bao trùm này lại tỏa sáng lần nữa\r\n<br>\r\n<br>그 미소를 띠며I’ll kiss you goodbye\r\n<br>Geu misoreul ttimyeo I’ll kiss you goodbye\r\n<br>Để khi nhìn vào đôi mắt anh, tôi sẽ trao anh nụ hôn tạm biệt\r\n<br>\r\n<br>[Jisoo]\r\n<br>실컷 비웃어라 꼴 좋으니까\r\n<br>Silkeot biuseora kkoljoeunikka\r\n<br>Vì sự cười nhạo khiến tôi càng tốt hơn\r\n<br>\r\n<br>이제 너희 하나 둘 셋\r\n<br>Ije neohui hana dul set\r\n<br>Bây giờ mọi người hãy cùng 1 2 3\r\n<br>\r\n<br>[Jennie – Rosé, Jisoo and Lisa]\r\n<br>How-how you like that?\r\n<br>You gon’ like that, that-that-that-that, that, that, that, that\r\n<br>How you like that? (Bada bing, bada boom, boom, boom)\r\n<br>How you like that, that-that-that-that, that, that, that, that\r\n<br>\r\n<br>[Jennie – Lisa – Rosé ]\r\n<br>Now look at you now look at me [Ooh]\r\n<br>Look at you now look at me [Ooh]\r\n<br>Look at you now look at me [Ooh]\r\n<br>How you like that? [Nah]\r\n<br>Now look at you now look at me [Oh]\r\n<br>Look at you now look at me [Oh]\r\n<br>Look at you now look at me\r\n<br>How you like that?\r\n<br>\r\n<br>[ Jisoo – Rosé, , Lisa and All]\r\n<br>날개 잃은 채로 추락했던 날\r\n<br>Nalgae ileun chaero churakaetdeon nal\r\n<br>Ngày mà tôi rơi xuống với đôi cánh đã mất\r\n<br>\r\n<br>어두운 나날 속에 갇혀 있던 날\r\n<br>Eoduun nanal soge gatyeo itdeon nal\r\n<br>Là những ngày mà tôi bị mắc kẹt trong màn đêm u tối\r\n<br>\r\n<br>그때쯤에 넌 날 끝내야 했어\r\n<br>Geuttaejjeume neon nal kkeunnaeya haesseo\r\n<br>Lúc đó anh đã nhất định chấm dứt với tôi\r\n<br>\r\n<br>Look up in the sky\r\n<br>Hãy nhìn lên bầu trời\r\n<br>It’s a bird, it’s a plane\r\n<br>Nó là một con chim, một chiếc máy bay\r\n<br>\r\n<br>Yeah, yeah, yeah, yeah\r\n<br>Bring out your boss bitch\r\n<br>Yeah, yeah, yeah, yeah\r\n<br>BLACKPINK\r\n<br>\r\n<br>[ All, Rosé and Jennie]\r\n<br>Ddu, ddu, ddu, ddu-ddu-ddu\r\n<br>Ddu, ddu, ddu, du-du-du-ddu\r\n<br>How you like that?\r\n<br>Ddu, ddu, ddu, ddu-ddu-ddu\r\n<br>Ddu, ddu, ddu, du-du-du-ddu\r\n<br>You gon’ like that?\r\n<br>Ddu, ddu, ddu, ddu-ddu-ddu\r\n<br>Ddu, ddu, ddu, du-du-du-ddu\r\n<br>How you like that?\r\n<br>Ddu, ddu, ddu, ddu-ddu-ddu\r\n<br>Ddu, ddu, ddu, du-du-du-ddu</p>', 'Lisa, Jenny, Rose, Jiso', 3),
(6, 'I need U', 'BTS', 'fXc35aiLUbCm', '<br>\r\n<br>[Intro]\r\n<br>Fall (everything)\r\n<br>Fall (everything)\r\n<br>Fall (everything)\r\n<br>흩어지네\r\n<br>Heuteojine\r\n<br>Fall (everything)\r\n<br>Fall (everything)\r\n<br>Fall (everything)\r\n<br>떨어지네\r\n<br>Tteoreojine\r\n<br>\r\n<br>[Verse 1]\r\n<br>너 땜에 나 이렇게 망가져\r\n<br>Neo ttaeme na ireohge manggajyeo\r\n<br>그만할래 이제 너 안 가져\r\n<br>Geumanhallae ije neo an gajyeo\r\n<br>못하겠어 뭣 같아서\r\n<br>Moshagesseo mwot gataseo\r\n<br>제발 핑계 같은 건 삼가줘\r\n<br>Jebal pinggye gateun geon samgajwo\r\n<br>\r\n<br>[Verse 2]\r\n<br>니가 나한테 이럼 안 돼\r\n<br>Niga nahante ireom an dwae\r\n<br>니가 한 모든 말은 안대\r\n<br>Niga han modeun mareun andae\r\n<br>진실을 가리고 날 찢어\r\n<br>Jinsireul garigo nal jjijeo\r\n<br>날 찍어 나 미쳐 다 싫어\r\n<br>Nal jjigeo na michyeo da silheo\r\n<br>전부 가져가 난 니가 그냥 미워\r\n<br>Jeonbu gajyeoga nan niga geunyang miwo\r\n<br>\r\n<br>[Verse 3]\r\n<br>But you’re my everything (You’re my)\r\n<br>Everything (You’re my)\r\n<br>Everything (You’re my)\r\n<br>제발 좀 꺼져 huh\r\n<br>Jebal jom kkeojyeo huh\r\n<br>미안해 (I hate u)\r\n<br>Mianhae (I hate u)\r\n<br>사랑해 (I hate u)\r\n<br>Saranghae (I hate u)\r\n<br>용서해\r\n<br>Yongseohae\r\n<br>\r\n<br>[Chorus]\r\n<br>I need you girl\r\n<br>왜 혼자 사랑하고 혼자서만 이별해\r\n<br>Wae honja saranghago honjaseoman ibyeolhae\r\n<br>I need you girl\r\n<br>왜 다칠 걸 알면서 자꾸 니가 필요해\r\n<br>Wae dachil geol almyeonseo jakku niga piryohae\r\n<br>I need you girl 넌 아름다워\r\n<br>I need you girl neon areumdawo\r\n<br>I need you girl 너무 차가워\r\n<br>I need you girl neomu chagawo\r\n<br>I need you girl (I need you girl)\r\n<br>I need you girl, I need you girl\r\n<br>\r\n<br>[Verse 4]\r\n<br>It goes round &amp; round 나 왜 자꾸 돌아오지\r\n<br>It goet round &amp; round na wae jakku doraoji\r\n<br>I go down &amp; down 이쯤 되면 내가 바보지\r\n<br>I go down &amp; down ijjeum doemyeon naega baboji\r\n<br>나 무슨 짓을 해봐도 어쩔 수가 없다고\r\n<br>Na museun jiseul haebwado eojjeol suga eopsdago\r\n<br>분명 내 심장, 내 마음, 내 가슴인데\r\n<br>Bunmyeong nae simjang, nae maeum, nae gaseuminde\r\n<br>왜 말을 안 듣냐고\r\n<br>Wae mareul an deutnyago\r\n<br>또 혼잣말하네 (또 혼잣말하네)\r\n<br>Tto honjasmalhane (tto honjasmalhane)\r\n<br>또 혼잣말하네 (또 혼잣말하네)\r\n<br>Tto honjasmalhane (tto honjasmalhane)\r\n<br>넌 아무 말 안 해 아 제발 내가 잘할게\r\n<br>Neon amu mal an hae a jebal naega jalhalge\r\n<br>하늘은 또 파랗게 (하늘은 또 파랗게)\r\n<br>Haneureun tto parahge (haneureun tto parahge)\r\n<br>\r\n<br>[Verse 5]\r\n<br>하늘이 파래서 햇살이 빛나서\r\n<br>Haneuri paraeseo haessari biccnaseo\r\n<br>내 눈물이 더 잘 보이나 봐\r\n<br>Nae nunmuri *** jal boina bwa\r\n<br>왜 나는 너인지 왜 하필 너인지\r\n<br>Wae naneun neoinji wae hapil neoinji\r\n<br>왜 너를 떠날 수가 없는지\r\n<br>Wae neoreul tteonal suga eopsneunji\r\n<br>\r\n<br>[Chorus]\r\n<br>I need you girl\r\n<br>왜 혼자 사랑하고 혼자서만 이별해\r\n<br>Wae honja saranghago honjaseoman ibyeolhae\r\n<br>I need you girl\r\n<br>왜 다칠 걸 알면서 자꾸 니가 필요해\r\n<br>Wae dachil geol almyeonseo jakku niga piryohae\r\n<br>I need you girl 넌 아름다워\r\n<br>I need you girl neon areumdawo\r\n<br>I need you girl 너무 차가워\r\n<br>I need you girl neomu chagawo\r\n<br>I need you girl (I need you girl)\r\n<br>I need you girl, I need you girl\r\n<br>\r\n<br>[Bridge]\r\n<br>Girl 차라리 차라리 헤어지자고 해줘\r\n<br>Girl charari charari heeojijago haejwo\r\n<br>Girl 사랑이 사랑이 아니었다고 해줘\r\n<br>Girl sarangi sarangi anieossdago haejwo\r\n<br>내겐 그럴 용기가 없어\r\n<br>Naegen geureol yonggiga eopseo\r\n<br>내게 마지막 선물을 줘\r\n<br>Naege majimak seonmureul jwo\r\n<br>더는 돌아갈 수 없도록\r\n<br>Deoneun doragal su eopsdorok\r\n<br>\r\n<br>[Verse 6]\r\n<br>I need you girl\r\n<br>왜 혼자 사랑하고 혼자서만 이별해\r\n<br>Wae honja saranghago honjaseoman ibyeolhae\r\n<br>I need you girl\r\n<br>왜 다칠 걸 알면서 자꾸 니가 필요해\r\n<br>Wae dachil geol almyeonseo jakku niga piryohae\r\n<br>\r\n<br>[Outro]\r\n<br>I need you girl 넌 아름다워\r\n<br>I need you girl neon areumdawo\r\n<br>I need you girl 너무 차가워\r\n<br>I need you girl neomu chagawo\r\n<br>I need you girl (I need you girl)\r\n<br>I need you girl, I need you girl', 'BTS', 3),
(8, 'Once upon a time', 'Max Oazo', 'O2SDidzRh2gX', '<br>Wondering what your up to now\r\n<br>Yea my head is still up in space \r\n<br>I guess it never came down\r\n<br>\r\n<br>I can tell you that I’ve changed a bit tho\r\n<br>Not too much since then\r\n<br>We were always rebellious kids \r\n<br>Do you remember when\r\n<br>\r\n<br>We were ridin through the night \r\n<br>The moon was on our side \r\n<br>Once upon a time \r\n<br>Once upon a time\r\n<br>As high as the stars in the sky \r\n<br>Crossing all the lines \r\n<br>Once upon a time \r\n<br>Once upon a time \r\n<br>\r\n<br>Do you recall all the promises \r\n<br>We used to make back then\r\n<br>Can you tell me are they still on \r\n<br>Or is that silly of me to think\r\n<br>\r\n<br>The years I find separate us \r\n<br>I think of you now and then \r\n<br>Won’t let memories fade to dust \r\n<br>Baby remember when\r\n<br>\r\n<br>We were ridin through the night \r\n<br>The moon was on our side \r\n<br>Once upon a time \r\n<br>Once upon a time\r\n<br>As high as the stars in the sky \r\n<br>Crossing all the lines \r\n<br>Once upon a time \r\n<br>Once upon a time', 'Max Oazo & Moonessa', 4),
(9, 'Run', 'Nell', 'mdbl6oP0QzV5', 'Lời bài hát hiện chưa được cập nhật', 'Nell', 3),
(12, 'Fire', '2NE1', '5ObTX-rwM7', '<br>It\'s been a long time comin\' but we here now\r\n<br>And we \'bout to set the roof on fire baby (Uh oh)\r\n<br>You better get yours, cuz I\'m gettin\' mine\r\n<br>\r\n<br>eh eh eh eh eh eh eh eh (2NE1)\r\n<br>eh eh eh eh eh eh eh eh (You better ring the alarm)\r\n<br>eh eh eh eh eh eh eh eh (We 2NE1)\r\n<br>eh eh eh eh eh eh HEY HEY HEY HEY\r\n<br>\r\n<br>COME IN COME IN COME IN dahreun sesangeuhro\r\n<br>jigyupgiman han gohmineun eejeh deungeul jeego\r\n<br>LA LA LA LA gahshik upneun nahyeh geuh norae roh\r\n<br>HA HA HA HA dahshin nuhl beeootji mothahdohrohk\r\n<br>\r\n<br>NOW LET\'S choomeul choomeul choomeul chwuhyo (wanna get down)\r\n<br>bohdah keun ggoomeul ggoomeul ggoomeul ggwuh\r\n<br>sesangeun nae mahmdaero dah hahlsoo itgeeheh keun jahyooreul weehae TONIGHT TONIGHT oh\r\n<br>\r\n<br>nae noonbiteun bitnahneun byuldeulloh\r\n<br>nae shimjang sokeul taewooneun juh boolbitdoh\r\n<br>youngwonhahjin ahngetji duh eeleulkkuhn upjee oh oh oh oh oh oh oh oh oh oh oh oh YEAH\r\n<br>\r\n<br>nah me-me-me-me-me-me-me-chigo shippuh\r\n<br>duh bbahlee dee-dee-dee-dee-dee-dee-deedigo shippuh\r\n<br>juh nohpeun building wheeroh juh poohreun hahneulwheeroh\r\n<br>keuhgeh soh-ree-ree-ree-ree-ree-ree-reechigo shippuh\r\n<br>\r\n<br>You got the FIRE nahyeh gahseumeul koong koong koong\r\n<br>YOU GOTTA DROP IT LIKE IT\'S HOT\r\n<br>jigeum muhmchooryuh hahjimah OOH\r\n<br>The FIRE nae muhrisokeul koong koong koong\r\n<br>I GOTTA DROP IT LIKE IT\'S HOT\r\n<br>muhmchooryuh hahjimah (hey)\r\n<br>\r\n<br>GET UP GET UP GET UP myutbuhn nuhmuhjyuhdoh\r\n<br>meeduhtduhn sesangee nahl ddoh dahshi baeshinhaedoh\r\n<br>na na na nahn ooljiahnah babochuhruhm\r\n<br>um mum mum muh naesoong ddulji mahrah nahmdeulchuhruhm\r\n<br>\r\n<br>naegah juh ggeutggahji dehryuhgalggeh FOLLOW FOLLOW ME\r\n<br>soomee chah uhlmankeum dahlyuh chooneun nahyeh gaseumee\r\n<br>waenji nah shilchee mahneun ahnah jaemitjyoh\r\n<br>gupnaeji mahrah LET IT GO\r\n<br>bohdah duh naheun naeilroh LE LE LE LE LE LET\'S GO\r\n<br>\r\n<br>nae noonbiteun bitnahneun byuldeulloh\r\n<br>nae shimjang sokeul taewooneun juh boolbitdoh\r\n<br>youngwonhahjin ahngetji duh eeleulkkuhn upjee oh oh oh oh oh oh oh oh oh oh oh oh YEAH\r\n<br>\r\n<br>nah me-me-me-me-me-me-me-chigo shippuh\r\n<br>duh bbahlee dee-dee-dee-dee-dee-dee-deedigo shippuh\r\n<br>juh nohpeun building wheeroh juh poohreun hahneulwheeroh\r\n<br>keuhgeh soh-ree-ree-ree-ree-ree-ree-reechigo shippuh\r\n<br>\r\n<br>Sohrijilluh\r\n<br>\r\n<br>eh eh eh eh eh eh eh eh (2NE1)\r\n<br>eh eh eh eh eh eh eh eh (You gotta ring the alarm)\r\n<br>eh eh eh eh eh eh eh eh (We 2NE1)\r\n<br>eh eh eh eh eh eh\r\n<br>\r\n<br>muhreegah challang challang challang challang daedohrok\r\n<br>uhngduhngil sahlang sahlang sahlang sahlang heundeuluh\r\n<br>muhreegah challang challang challang challang daedohrok\r\n<br>uhngduhngil sahlang sahlang sahlang sahlang\r\n<br>\r\n<br>heundeuluh\r\n<br>UH\r\n<br>\r\n<br>nah me-me-me-me-me-me-me-chigo shippuh\r\n<br>duh bbahlee dee-dee-dee-dee-dee-dee-deedigo shippuh\r\n<br>juh nohpeun building wheeroh juh poohreun hahneulwheeroh\r\n<br>keuhgeh soh-ree-ree-ree-ree-ree-ree-reechigo shippuh\r\n<br>\r\n<br>uhnjehnah ohneulchuhruhm nahn jahyooropgoh shippuh', '2NE1', 3),
(13, 'Danger', 'Thanh Bùi', 'd862MeyDfSn2', '<br>\r\n<br>You’re in danger\r\n<br>You’re in danger\r\n<br>You’re in danger\r\n<br>You’re in danger\r\n<br>\r\n<br>Maennal ireon sik\r\n<br>Neo=neo, na=na neoui gongsik\r\n<br>Haendeuponeu n jangsik\r\n<br>Na namchini matgin hani? I’m sick\r\n<br>Wae sukjecheoreom pyohyeondeureul mirwo\r\n<br>Uri museun bijeuniseu? Anim naega sirheo?\r\n<br>‘deong deong digi deong deong’\r\n<br>Jom salgawojyeora oneuldo tto jumuneul bireo\r\n<br>\r\n<br>Urin pyeonghaengseon,\r\n<br>Gat eun goseul bojiman neomu dareuji\r\n<br>Nan neo bakke eomneunde\r\n<br>Wae neo bakke inneun geotman gateunji\r\n<br>Kkonghamyeo n neon mureo “ppichyeonni?”\r\n<br>Nal ppichige haetdeon jeogina isseonni\r\n<br>Neon gwiyomi, nan jimotmi\r\n<br>Saenggigil niga deo saranghaneun gijeogi\r\n<br>\r\n<br>Neon naega eomneunde\r\n<br>Nan neoro gadeukhae michil geot gata\r\n<br>Geunde wae ireoneunde\r\n<br>Wae baboreul mandeureo\r\n<br>Na ije gyeonggohae\r\n<br>Hetgalli ge hajima\r\n<br>\r\n<br>Jangnanhae neo dodaeche naega mwoya\r\n<br>Manmanhae uh nal gatgo noneun geoya\r\n<br>\r\n<br>Neo jigeum wiheomhae\r\n<br>Wae nareul siheomhae\r\n<br>Wae nareul siheomhae\r\n<br>Hetgallige hajima\r\n<br>\r\n<br>Jangnanhae neo dodaeche naega mwoya\r\n<br>Manmanhae uh nal gatgo noneun geoya\r\n<br>\r\n<br>Neo jigeum wiheomhae\r\n<br>Wae nareul siheomhae\r\n<br>Wae nareul siheomhae\r\n<br>Hetgallige haji ma\r\n<br>\r\n<br>Neo ttaemune neomu apa\r\n<br>Neo ttaemune neomu apa\r\n<br>Neo ttaemune neomu apa\r\n<br>Hetgallige haji ma\r\n<br>\r\n<br>Neon naege neomu nappa\r\n<br>Neon naege neomu nappa\r\n<br>Neon naege neomu nappa\r\n<br>Hetgallige hajima\r\n<br>\r\n<br>Yeollak bujaejung, unlock subae jung\r\n<br>Neoran yeoja bonsimeul susaek jung\r\n<br>Gojak bonaejun ge munja duse jul\r\n<br>Ige naega baraetdeon yeonae, kkum?\r\n<br>Paranmanjang reobeu seutori da eodi ganna\r\n<br>Deuramae naon juingongdeul da jeori gara\r\n<br>Neo ttaemune subaek beon jwieo jamneun meorikarak\r\n<br>Neon damdam geujeo dangdang, nal cha ppangppang\r\n<br>\r\n<br>Mwoni mwoni nan nege mwoni\r\n<br>Neo boda ni chinguege jeonhae deutneun sosik\r\n<br>Wonhae wonhae uh neoreul wonhae\r\n<br>Neoran yeojan sagikkun nae mameul heundeun beomin\r\n<br>Buri butgi jeonbuteo nae mam da sseugo\r\n<br>Ilbangjeogin guaedeul hae bwatja heossugo\r\n<br>Neoege nan geujeo yeonini anin ujeongi\r\n<br>Pyeonhaesseu ljido molla i’m a love loser\r\n<br>\r\n<br>Neon naega eomneunde\r\n<br>Nan neoro gadeukhae michil geot gata\r\n<br>Geunde wae ireoneunde\r\n<br>Wae baboreul mandeureo\r\n<br>Na ije gyeonggohae\r\n<br>Hetgalli ge haji ma\r\n<br>\r\n<br>Jangnanhae neo dodaeche naega mwoya\r\n<br>Manmanhae uh nal gatgo noneun geoya\r\n<br>\r\n<br>Neo jigeum wiheomhae\r\n<br>Wae nareul siheomhae\r\n<br>Wae nareul siheomhae\r\n<br>Hetgallige haji ma\r\n<br>\r\n<br>Jangnanhae neo dodaeche naega mwoya\r\n<br>Manmanhae uh nal gatgo noneun geoya\r\n<br>\r\n<br>Neo jigeum wiheomhae\r\n<br>Wae nareul siheomhae\r\n<br>Wae nareul siheomhae\r\n<br>Hetgallige haji ma\r\n<br>\r\n<br>Neo ttaemune neomu apa\r\n<br>Neo ttaemune neomu apa\r\n<br>Neo ttaemune neomu apa\r\n<br>Hetgallige haji ma\r\n<br>\r\n<br>Neon naege neomu nappa\r\n<br>Neon naege neomu nappa\r\n<br>Neon naege neomu nappa\r\n<br>Hetgallige haji ma', 'BTS', 3),
(14, 'Sài Gòn đau lòng quá', 'Hứa Kim Tuyền', '2hI4xFTa2lxJ', '<br>Em bay đến nơi xa\r\n<br>Sài Gòn đau lòng quá\r\n<br>Toàn kỷ niệm chúng ta.\r\n<br>Phải đi xa đến đâu?\r\n<br>Thời gian quên mất bao lâu?\r\n<br>Để trái tim em bình yên như ngày đầu tiên...\r\n<br>\r\n<br>Mình đã từng hứa\r\n<br>Bên nhau hết tháng năm dài\r\n<br>Yêu đến khi ngừng hơi thở\r\n<br>Đến khi ngừng mơ...\r\n<br>Nắm chặt tay đi hết nhân thế này\r\n<br>Chân trời hằn chân ta\r\n<br>Vô tận là chúng ta... \r\n<br>\r\n<br>Mình đã từng hứa\r\n<br>Đi qua hết bao thăng trầm\r\n<br>Cho dẫu mai này xa rời\r\n<br>Vẫn không hề đổi dời...\r\n<br>Có ngờ đâu, đã sớm vỡ tan tành\r\n<br>Nhặt từng mảnh vỡ xếp vào vali... \r\n<br>\r\n<br>Cứ càng yêu, cứ càng đau\r\n<br>Cứ càng quên rồi lại muốn đi thật nhiều\r\n<br>Tokyo hay Seoul\r\n<br>Paris hay New York\r\n<br>Đi càng xa, càng không thể quên... \r\n<br>\r\n<br>Cầm tấm vé trên tay\r\n<br>Em bay đến nơi xa\r\n<br>Sài Gòn đau lòng quá\r\n<br>Toàn kỷ niệm chúng ta.\r\n<br>Phải đi xa đến đâu?\r\n<br>Thời gian quên mất bao lâu?\r\n<br>Để trái tim em bình yên như ngày đầu tiên... \r\n<br>\r\n<br>Ngày tôi chưa từng biết tôi sẽ yêu em nhiều như thế này\r\n<br>Để rồi khi ta cách xa tim này nát ra\r\n<br>Ngày người chưa đến mang theo giấc mơ, rồi lại bỏ rơi lúc tôi đang chờ...\r\n<br>Chờ người đến dịu xoa tổn thương tôi đã từng...', 'Hứa Kim Tuyền, Hoàng Duyên', 2),
(15, 'Vùng kí ức', 'Bảo Lê, Duy Khang', 'jPqcqKHysnon', '<br>Trên phím đàn \r\n<br>Em bỏ lại ngày tháng bạc màu \r\n<br>Em bỏ lại nỗi nhớ ngày đầu \r\n<br>Em quên một câu nói \r\n<br>Đừng đi \r\n<br>Thêm chút đường \r\n<br>Ly đen dường như chẳng dịu lại \r\n<br>Như cung đàn đã hoá khờ dại \r\n<br>Chênh vênh một mình giữa tay ai \r\n<br>\r\n<br>[Chorus:]\r\n<br>Vùng ký ức xưa ta còn nhau còn đâu em hỡi\r\n<br>Nhiều lần đã cố gắng quên đi dù cho\r\n<br>Tình mình đã vỡ đôi \r\n<br>Em tiếc nuối thêm làm chi \r\n<br>Còn lại những giọt buồn trên mi \r\n<br>Mang những thanh âm kia cùng em đi\r\n<br>Gửi lại vùng ký ức ta trao về em \r\n<br>Một ngày đầy nắng \r\n<br>Nụ cười người mỗi lúc mây tan vào đêm \r\n<br>Một ngày người ghé thăm\r\n<br>Ngày mai nắng như nhạt hơn \r\n<br>Và ta thức dậy như đã lớn\r\n<br>Thôi giấc mơ trôi đi \r\n<br>Em có quên đôi khi một mai \r\n<br>\r\n<br>[Verse:]\r\n<br>Ta lỡ hẹn \r\n<br>Ánh mặt trời trên nóc tòa nhà \r\n<br>Quay sang nhìn như hai người lạ \r\n<br>Đưa tay chào nhau cuối sân ga \r\n<br>\r\n<br>[Chorus:] x2\r\n<br>Vùng ký ức xưa ta còn nhau còn đâu em hỡi\r\n<br>Nhiều lần đã cố gắng quên đi dù cho\r\n<br>Tình mình đã vỡ đôi \r\n<br>Em tiếc nuối thêm làm chi \r\n<br>Còn lại những giọt buồn trên mi \r\n<br>Mang những thanh âm kia cùng em đi\r\n<br>Gửi lại vùng ký ức ta trao về em \r\n<br>Một ngày đầy nắng \r\n<br>Nụ cười người mỗi lúc mây tan vào đêm \r\n<br>Một ngày người ghé thăm\r\n<br>Ngày mai nắng như nhạt hơn \r\n<br>Và ta thức dậy như đã lớn\r\n<br>Thôi giấc mơ trôi đi \r\n<br>Em có quên đôi khi một mai</p>', 'Chilies', 2),
(16, 'Cô Độc Vương (Remix)', 'Không rõ', 'RGHpNK6ltq1F', '', 'Tiktok', 1),
(19, 'Savage Love', 'Laxed - Siren Beat', 'nfICnkhclVi3', '<br>\'\r\n<br>Savage love\r\n<br>Did somebody, did somebody break your heart?\r\n<br>Lookin\' like an angel, but your savage love\r\n<br>When you kiss me, I know you don\'t give two f*cks\r\n<br>But I still want that\r\n<br>\r\n<br>If I woke up without ya, I don\'t know what I would do\r\n<br>Thought I could be single forever \'til I met you\r\n<br>Usually don\'t be fallin\', be fallin\', fallin\' fast\r\n<br>You got a way of keepin\' me comin\' back-to-back\r\n<br>I just found out, the only reason that you lovin\' me\r\n<br>Was to get back at your ex-lover but before you leave\r\n<br>Usually I would never, would never even care\r\n<br>Baby, I know she creepin\', I feel it in the air\r\n<br>\r\n<br>Every night and every day (Every day)\r\n<br>I try to make you stay\r\n<br>But your\r\n<br>\r\n<br>Savage love, did somebody, did somebody break your heart?\r\n<br>Lookin\' like an angel, but your savage love\r\n<br>When you kiss me, I know you don\'t give two f*cks\r\n<br>But I still want that\r\n<br>Your savage love\r\n<br>Your savage la-la-love\r\n<br>Your savage la-la-love\r\n<br>You could use me \'cause I still want that\r\n<br>\r\n<br>Sarangiran eojjeomyeon sunganui gamjeongui nayeol\r\n<br>Jogeoni dadeul butji nan mwol saranghaneunga\r\n<br>Yeongwoniraneun mareun eojjeomyeon moraeseong\r\n<br>Janjanhan pado ape himeopsi muneojyeo\r\n<br>\r\n<br>Every night, every day\r\n<br>I\'m swept away by the waves\r\n<br>Don\'t know what I\'m thinking\r\n<br>(Can\'t get you outta my head)\r\n<br>Naega duryeoun ge geudaeideun geu ttaeideun\r\n<br>Bulgachi saranghallae geudael jigeum\r\n<br>\r\n<br>Every night and every day\r\n<br>I try to make you stay\r\n<br>But your...\r\n<br>\r\n<br>Savage love\r\n<br>Did somebody, did somebody\r\n<br>Break your heart?\r\n<br>Lookin\' like an angel\r\n<br>But your savage love\r\n<br>When you kiss me\r\n<br>I know you don\'t give two f*cks\r\n<br>But I still want that\r\n<br>\r\n<br>Your savage love\r\n<br>Your savage la-la-love\r\n<br>Your savage la-la-love\r\n<br>You could use me\r\n<br>\'Cause I still want that\r\n<br>Your savage love\r\n<br>\r\n<br>Your savage la-la-love\r\n<br>Your savage la-la-love\r\n<br>You could use me\r\n<br>Baby\r\n<br>\r\n<br>Savage love\r\n<br>Did somebody, did somebody\r\n<br>Break your heart?\r\n<br>Lookin\' like an angel\r\n<br>But your savage love\r\n<br>When you kiss me\r\n<br>I know you don\'t give two f*cks\r\n<br>But I still want that\r\n<br>\r\n<br>Your savage love\r\n<br>Your savage la-la-love\r\n<br>Your savage la-la-love\r\n<br>You could use me\r\n<br>\r\n<br>\'Cause I still want that\r\n<br>Your savage love', 'Jason Derulo, Jawsh 685, BTS', 4),
(20, 'Boombayah', 'BlackPink', 'uS7D8GnXv2cv', '<br>\r\n<br>[Intro]\r\n<br>(Hot) BLACKPINK in your area\r\n<br>(Hot) BLACKPINK in your area\r\n<br>\r\n<br>[Verse 1: Lisa]\r\n<br>Been a bad girl, I know I am\r\n<br>And I’m so hot, I need a fan\r\n<br>I don’t want a boy, I need a man\r\n<br>\r\n<br>[Verse 2: Jennie]\r\n<br>Click-clack Badda bing badda boom\r\n<br>Muneul bakchamyeon modu nal barabom\r\n<br>Gudi aesseo noryeok an haedo\r\n<br>Modeun namjadeuleun kopiga pangpangpang\r\n<br>Pangpang parapara pangpangpang\r\n<br>Jigeum nal wihan chukbaereul jjanjjanjjan\r\n<br>Hands up nae sonen\r\n<br>Bottle full o’ henny\r\n<br>Nega malloman deuddeon gyaega naya Jennie\r\n<br>\r\n<br>[Pre-Chorus 1: Jisoo &amp; Lisa]\r\n<br>Chumchuneun bulbicheun nal gamssago done\r\n<br>Black to the pink eodiseodeun teukbyeolhae (Oh yes)\r\n<br>Chyeoda bodeun maldeun I wanna dance\r\n<br>Like ttaradaradanttan\r\n<br>Ttaradaradanttan ttudurubbau\r\n<br>\r\n<br>[Pre-Chorus 2: Rosé]\r\n<br>Joha i bunwigiga joha\r\n<br>Joha nan jigeum nega joha\r\n<br>Jeongmal banhaesseo oneul bam\r\n<br>Neowa chumchugo sipeo\r\n<br>\r\n<br>[Chorus]\r\n<br>BOOMBAYAH\r\n<br>YAH YAH YAH BOOMBAYAH\r\n<br>YAH YAH YAH BOOMBAYAH\r\n<br>YAH YAH YAH YAH\r\n<br>BOOM BOOM BA BOOM\r\n<br>BOOM BA oppa!\r\n<br>YAH YAH YAH YAH YAH YAH\r\n<br>YAH YAH YAH YAH\r\n<br>YAH YAH YAH YAH YAH YAH\r\n<br>YAH YAH YAH YAH oppa!\r\n<br>YAH YAH YAH YAH YAH YAH\r\n<br>YAH YAH YAH YAH\r\n<br>YAH YAH YAH YAH YAH YAH\r\n<br>YAH BOOM BOOM BA\r\n<br>BOOMBAYAH\r\n<br>((Hot) BLACKPINK in your area)\r\n<br>\r\n<br>[Verse 3: Lisa]\r\n<br>Ije dallyeoyaji mwol eotteokhae\r\n<br>Nan cheol eobseo geob eobseo Man\r\n<br>Middle finger up, F U pay me\r\n<br>90s baby, I pump up the jam\r\n<br>Dallyeobwa dallyeobwa oppaya LAMBO\r\n<br>Oneuleun neowa na jeolmeumeul GAMBLE\r\n<br>Gamhi nal makjima hoksina nuga nal makado\r\n<br>I’m gonna go brrrr\r\n<br>RAMBO\r\n<br>\r\n<br>[Pre-Chorus: Rosé]\r\n<br>Ne soni nae heorireul gamssago done\r\n<br>Front to my back\r\n<br>Nae mommaeneun teukbyeolhae Oh yes\r\n<br>Ne nunbicheun I know you wanna touch\r\n<br>Like touch touch touch\r\n<br>Touch ttudurubbau\r\n<br>\r\n<br>[Pre-Chorus 2: Rosé]\r\n<br>Joha i bunwigiga joha\r\n<br>Joha nan jigeum nega joha\r\n<br>Jeongmal meosisseo oneul bam\r\n<br>Neowa chumchugo sipeo\r\n<br>\r\n<br>[Chorus]\r\n<br>BOOMBAYAH\r\n<br>YAH YAH YAH BOOMBAYAH\r\n<br>YAH YAH YAH BOOMBAYAH\r\n<br>YAH YAH YAH YAH\r\n<br>BOOM BOOM BA\r\n<br>BOOM BOOM BA oppa!\r\n<br>YAH YAH YAH YAH YAH\r\n<br>YAH YAH YAH YAH YAH\r\n<br>YAH YAH YAH YAH YAH\r\n<br>YAH YAH YAH YAH YAH oppa!\r\n<br>YAH YAH YAH YAH YAH\r\n<br>YAH YAH YAH YAH YAH\r\n<br>YAH YAH YAH YAH YAH\r\n<br>YAH YAH BOOM BOOM BA\r\n<br>BOOMBAYAH\r\n<br>\r\n<br>[Outro]\r\n<br>Oneuleun maen jeongsin ttawin beorigo\r\n<br>Haneuleul neomeoseo olla gal geoya\r\n<br>Kkeuteul moreuge ppalli dalligo sipeo\r\n<br>Let’s go, let’s go\r\n<br>Oneuleun maen jeongsin ttawin beorigo\r\n<br>Haneuleul neomeoseo olla gal geoya\r\n<br>Kkeuteul moreuge ppalli dalligo sipeo\r\n<br>Let’s go, let’s go', 'BlackPink', 3),
(22, 'You Belong With Me', 'Taylor Swift, Liz Rose', '4QnjRgyBg6VT', 'Taylor Swift', 'Taylof Swift', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `music_user`
--

CREATE TABLE `music_user` (
  `id` int(50) NOT NULL,
  `music_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `music_user`
--

INSERT INTO `music_user` (`id`, `music_id`, `user_id`) VALUES
(178, 2, 14),
(179, 4, 14),
(180, 3, 14),
(181, 5, 14),
(182, 6, 14),
(183, 8, 14),
(184, 2, 15),
(185, 3, 15),
(220, 2, 21),
(221, 3, 21),
(222, 4, 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`) VALUES
(12, 'lenghia', '123456', 0),
(14, 'maioccho', '123456', 0),
(15, 'tokochan', '123456', 0),
(16, 'dad', '123456', 0),
(17, 'leminhnghia1', '123456', 0),
(18, 'leminhnghia123', '123456', 0),
(19, 'nghiadz', '123456', 0),
(20, 'abcd', '123456', 0),
(21, 'hellokitty123', '123456', 0),
(22, 'nghialeminh', '123456', 0),
(23, '122321', '1321213213', 0),
(24, 'leminhnghia2', '123456', 0),
(25, 'lenghia1', '123456', 0),
(26, 'maixinhgai', '123456', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `music_id` (`music_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `music_user`
--
ALTER TABLE `music_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `music_id` (`music_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `music`
--
ALTER TABLE `music`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `music_user`
--
ALTER TABLE `music_user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`music_id`) REFERENCES `music` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `music`
--
ALTER TABLE `music`
  ADD CONSTRAINT `music_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `music_user`
--
ALTER TABLE `music_user`
  ADD CONSTRAINT `music_user_ibfk_1` FOREIGN KEY (`music_id`) REFERENCES `music` (`id`),
  ADD CONSTRAINT `music_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
