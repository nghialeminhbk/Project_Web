-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 15, 2021 lúc 11:01 AM
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
(1, 'Hãy trao cho anh', 'Sơn Tùng', 'vtEybe9NxLw7', 'La la la la la la la la la la la la (yeah, yeah)<br>\r\nLa la la la la la la la la la la la (yeah, yeah)<br>\r\nLa la la la la la la la la la la la, la (yeah, yeah, Onionn)<br>\r\n<br>\r\nBóng ai đó nhẹ nhàng vụt qua nơi đây<br>\r\nQuyến rũ ngây ngất loạn nhịp làm tim mê say<br>\r\nCuốn lấy áng mây theo cơn sóng xô dập dìu<br>\r\nNụ cười ngọt ngào cho ta tan vào phút giây miên man quên hết con đường về (Eh, let me know your name)<br>\r\nChẳng thể tìm thấy lối về (Eh, let me know your name)<br>\r\nĐiệu nhạc hòa quyện trong ánh mắt (money, money, money)<br>\r\nDẫn lối những bối rối rung động khẽ lên ngôi (và rồi khẽ, và rồi khẽ khẽ)<br>\r\n<br>\r\nChạm nhau mang vô vàn<br>\r\nĐắm đuối vấn vương dâng tràn<br>\r\nLấp kín chốn nhân gian<br>\r\nLàn gió hoá sắc hương mơ màng<br>\r\nMột giây ngang qua đời<br>\r\nCất tiếng nói không nên lời<br>\r\nẤm áp đến trao tay ngàn sao trời<br>\r\nLòng càng thêm chơi vơi<br>\r\nDịu êm không gian bừng sáng<br>\r\nĐánh thức muôn hoa mừng<br>\r\nQuấn quít hát ngân nga từng<br>\r\nChút níu bước chân em dừng<br>\r\nBao ý thơ tương tư ngẩn ngơ (la la la)<br>\r\nLưu dấu nơi mê cung đẹp thẫn thờ (oh, oh, oh)<br>\r\n<br>\r\nHãy trao cho anh, hãy trao cho anh (ahh)<br>\r\nHãy trao cho anh thứ anh đang mong chờ (ah, ah, ah)<br>\r\nHãy trao cho anh, hãy trao cho anh (ahh)<br>\r\nHãy mau làm điều ta muốn vào khoảnh khắc này đê (ah, ah, ah)<br>\r\nHãy trao cho anh, hãy trao cho anh (ahh)<br>\r\nHãy trao anh trao cho anh đi những yêu thương nồng cháy<br>\r\nTrao anh ái ân nguyên vẹn đong đầy<br>\r\nLa la la, la la la la<br>\r\n<br>\r\nLa la la, la la la la<br>\r\nLa la la, la la la la<br>\r\nLa la la, la la la la<br>\r\n<br>\r\n<i>[Snoop Dogg:]</i><br>\r\nLookin\' at my Gucci, it\'s about that time<br>\r\nWe can smoke a blunt and pop a bottle of wine<br>\r\nNow get yourself together and be ready by nine<br>\r\n\'Cause we gon\' do some things that\'ll shatter your spine<br>\r\nCome one, undone, Snoop Dogg, Son Tung<br>\r\nLong Beach is the city that I come from<br>\r\nSo if you want some, get some<br>\r\nBetter enough take some, take some<br>\r\n<br>\r\n<i>[Sơn Tùng M-TP:]</i><br>\r\nChạm nhau mang vô vàn<br>\r\nĐắm đuối vấn vương dâng tràn<br>\r\nLấp kín chốn nhân gian<br>\r\nLàn gió hoá sắc hương mơ màng<br>\r\nMột giây ngang qua đời<br>\r\nCất tiếng nói không nên lời<br>\r\nẤm áp đến trao tay ngàn sao trời<br>\r\nLòng càng thêm chơi vơi<br>\r\nDịu êm không gian bừng sáng<br>\r\nĐánh thức muôn hoa mừng<br>\r\nQuấn quít hát ngân nga từng<br>\r\nChút níu bước chân em dừng<br>\r\nBao ý thơ tương tư ngẩn ngơ<br>\r\nLưu dấu nơi mê cung đẹp thẫn thờ<br>\r\n<br>\r\nHãy trao cho anh, hãy trao cho anh (ahh)<br>\r\nHãy trao cho anh thứ anh đang mong chờ (ah, ah, ah)<br>\r\nHãy trao cho anh, hãy trao cho anh (ahh)<br>\r\nHãy mau làm điều ta muốn vào khoảnh khắc này đê (ah, ah, ah)<br>\r\nHãy trao cho anh, hãy trao cho anh (ahh)<br>\r\nHãy trao anh trao cho anh đi những yêu thương nồng cháy<br>\r\nTrao anh ái ân nguyên vẹn đong đầy<br>\r\nLa la la, la la la la<br>\r\n<br>\r\nLa la la, la la la la<br>\r\nLa la la, la la la la<br>\r\nLa la la, la la la la<br>\r\n<br>\r\nEm cho ta ngắm thiên đàng vội vàng qua chốc lát<br>\r\nNhư thanh âm chứa bao lời gọi mời trong khúc hát<br>\r\nLiêu xiêu ta xuyến xao rạo rực khát khao trông mong<br>\r\nDịu dàng lại gần nhau hơn dang tay ôm em vào lòng<br>\r\nTrao đi trao hết đi đừng ngập ngừng che dấu nữa<br>\r\nQuên đi quên hết đi ngại ngùng lại gần thêm chút nữa<br>\r\nChìm đắm giữa khung trời riêng hai ta như dần hòa quyện mắt<br>\r\nNhắm mắt tay đan tay hồn lạc về miền trăng sao<br>\r\nEm cho ta ngắm thiên đàng vội vàng qua chốc lát (ya, ya)<br>\r\nNhư thanh âm chứa bao lời gọi mời trong khúc hát (ya, ya)<br>\r\nLiêu xiêu ta xuyến xao rạo rực khát khao trông mong<br>\r\nDịu dàng lại gần nhau hơn dang tay ôm em vào lòng (brra)<br>\r\nTrao đi trao hết đi đừng ngập ngừng che dấu nữa (ya, ya)<br>\r\nQuên đi quên hết đi ngại ngùng lại gần thêm chút nữa<br>\r\nChìm đắm giữa khung trời riêng hai ta như dần hòa quyện mắt<br>\r\nNhắm mắt tay đan tay hồn lạc về miền trăng sao (leggo!)<br>\r\n<br>\r\nHãy trao cho anh, hãy trao cho anh<br>\r\nHãy trao cho anh, hãy trao cho anh (la la la, la la la la)<br>\r\nHãy trao cho anh, hãy trao cho anh<br>\r\nHãy trao cho anh, hãy trao cho anh (la la la, la la la la)<br>\r\nHãy trao cho anh, hãy trao cho anh<br>\r\nHãy trao cho anh, hãy trao cho anh (la la la, la la la la)<br>\r\nHãy trao cho anh, hãy trao cho anh<br>\r\nHãy trao cho anh thứ anh đang mong chờ (ah, ah, ah)<br>\r\n<br>\r\n<i>[English translation:]</i><br>\r\n<br>\r\n<i>[Sơn Tùng M-TP:]</i><br>\r\nLa la la la la la la la la la la la (yeah, yeah)<br>\r\nLa la la la la la la la la la la la (yeah, yeah)<br>\r\nLa la la la la la la la la la la la, la (yeah, yeah, Onionn)<br>\r\n<br>\r\nSomeone\'s shadow is slightly passing<br>\r\nIts charm makes heartbeat mixing like the drunk<br>\r\nHooking the clouds following the waves continuously<br>\r\nYour sweet smile makes me disappear and forget all the way to get home (Eh, let me know your name)<br>\r\nCould not find my own way home (Eh, let me know your name)<br>\r\nRhythm mixing in your lips and eyes<br>\r\nCreate the way for the love vibration (And then quietly, and then quietly)<br>\r\n<br>\r\nTouching takes many<br>\r\nAttached love overwhelms<br>\r\nFill up everywhere<br>\r\nDaydream with winds and flowers<br>\r\nJust in that moment<br>\r\nSpeechlessness controls<br>\r\nThousands stars warmly handing make me feel solitary<br>\r\nAll the flowers are awakened up smoothly overwhelming over the spaces<br>\r\nSinging together asking for your stop of each step<br>\r\nThe lovesick is amazed (la la la)<br>\r\nThe shocking beautiful maze save our memories (oh, oh, oh)<br>\r\n<br>\r\nGive it to me, give it to me (ahh)<br>\r\nGive it to me, what I am waiting (ah, ah, ah)<br>\r\nGive it to me, give it to me (ahh)<br>\r\nLet\'s do all we wish right at this moment (ah, ah, ah)<br>\r\nGive it to me, give it to me (ahh)<br>\r\nGive it to me all of burning love<br>\r\nGive me the fully origin love<br>\r\nLa la la, la la la la<br>\r\n<br>\r\nLa la la, la la la la<br>\r\nLa la la, la la la la<br>\r\nLa la la, la la la la<br>\r\n<br>\r\n<i>[Snoop Dogg:]</i><br>\r\nLookin\' at my Gucci, it\'s about that time<br>\r\nWe can smoke a blunt and pop a bottle of wine<br>\r\nNow get yourself together and be ready by nine<br>\r\n\'Cause we gon\' do some things that\'ll shatter your spine<br>\r\nCome one, undone, Snoop Dogg, Son Tung<br>\r\nLong Beach is the city that I come from<br>\r\nSo if you want some, get some<br>\r\nBetter enough take some, take some<br>\r\n<br>\r\n<i>[Sơn Tùng M-TP:]</i><br>\r\nTouching takes many<br>\r\nAttached love overwhelms<br>\r\nFill up everywhere<br>\r\nDaydream with winds and flowers<br>\r\nJust in that moment<br>\r\nSpeechlessness controls<br>\r\nThousands stars warmly handing make me feel solitary<br>\r\nAll the flowers are awakened up smoothly overwhelming over the spaces<br>\r\nSinging together asking for your stop of each step<br>\r\nThe lovesick is amazed (la la la)<br>\r\nThe shocking beautiful maze save our memories (oh, oh, oh)<br>\r\n<br>\r\nGive it to me, give it to me (ahh)<br>\r\nGive it to me, what I am waiting (ah, ah, ah)<br>\r\nGive it to me, give it to me (ahh)<br>\r\nLet\'s do all we wish right at this moment (ah, ah, ah)<br>\r\nGive it to me, give it to me (ahh)<br>\r\nGive it to me all of burning love<br>\r\nGive me the fully origin love<br>\r\nLa la la, la la la la<br>\r\n<br>\r\nLa la la, la la la la<br>\r\nLa la la, la la la la<br>\r\nLa la la, la la la la<br>\r\n<br>\r\nYou let me see the paradise quickly in just a second<br>\r\nLike the sound contains all the invitation via the song<br>\r\nLike a drunk guy looking for, wishing for<br>\r\nSlowly getting closer holding you tightly<br>\r\nGive it, give it all, don\'t waver or hide anymore<br>\r\nForget, forget all, get closer, closer<br>\r\nSinking into the sky, for us only, closing our eyes<br>\r\nHand in hand get lost amongst the stars<br>\r\nYou let me see the paradise quickly in just a second (ya, ya)<br>\r\nLike the sound contains all the invitation via the song (ya, ya)<br>\r\nLike a drunk guy looking for, wishing for<br>\r\nSlowly getting closer holding you tightly (brra)<br>\r\nGive it, give it all, don\'t waver or hide anymore (ya)<br>\r\nForget, forget all, get closer, closer<br>\r\nSinking into the sky, for us only, closing our eyes<br>\r\nHand in hand get lost amongst the stars (leggo!)<br>\r\n<br>\r\nGive it to me, give it to me<br>\r\nGive it to me, give it to me (la la la, la la la la)<br>\r\nGive it to me, give it to me<br>\r\nGive it to me, give it to me (la la la, la la la la)<br>\r\nGive it to me, give it to me<br>\r\nGive it to me, give it to me (la la la, la la la la)<br>\r\nGive it to me, give it to me<br>\r\nGive it to me what I am waiting (ah, ah, ah)\r\n</div>', 'Sơn Tùng', 2),
(2, 'Như phút ban đầu', 'Noo Phước Thịnh', '', '', 'Noo Phước Thịnh', 2),
(3, 'Save me', 'BTS', '', '', 'BTS', 3),
(4, 'Tremo', 'Martin Garix', '', '', 'Adam Lambert', 1),
(5, 'How you like that', 'Black Pink', '', '', 'Lisa, Jenny, Rose, Jiso', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

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
-- AUTO_INCREMENT cho bảng `music`
--
ALTER TABLE `music`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `music`
--
ALTER TABLE `music`
  ADD CONSTRAINT `music_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
