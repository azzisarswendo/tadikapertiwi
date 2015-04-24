-- phpMyAdmin SQL Dump
-- version 4.1.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 24, 2015 at 06:59 AM
-- Server version: 5.5.42-MariaDB-log
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u10321rqs_tp`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `chat_id` text,
  `id_a` text,
  `id_b` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=105 ;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `chat_id`, `id_a`, `id_b`) VALUES
(51, 'GB3n9R', '2014101011', '2014091407'),
(52, 'GB3n9R', '2014091407', '2014101011'),
(53, 'sM9nQ5', 'Bg6yUN', '2014091407'),
(54, 'sM9nQ5', '2014091407', 'Bg6yUN'),
(55, 'w4sLW', '2014101011', 'Bg6yUN'),
(56, 'w4sLW', 'Bg6yUN', '2014101011'),
(57, 'EUJuUO', '9pzuk9', '2014101011'),
(58, 'EUJuUO', '2014101011', '9pzuk9'),
(59, 'xrLNXH', 'FRrQ5V', 'Bg6yUN'),
(60, 'xrLNXH', 'Bg6yUN', 'FRrQ5V'),
(61, 'Nq1YE', 'Bg6yUN', '9pzuk9'),
(62, 'Nq1YE', '9pzuk9', 'Bg6yUN'),
(63, 'TuYKCA', '9pzuk9', '2014091407'),
(64, 'TuYKCA', '2014091407', '9pzuk9'),
(65, 'sn2JPC', '2014101011', 'FRrQ5V'),
(66, 'sn2JPC', 'FRrQ5V', '2014101011'),
(67, 'HutXS1', '2014101011', 'GP3xXR'),
(68, 'HutXS1', 'GP3xXR', '2014101011'),
(69, 'S3GAXO', '2014091407', 'Wn3XRO'),
(70, 'S3GAXO', 'Wn3XRO', '2014091407'),
(71, 'rB4vQ5', 'Wn3XRO', 'FRrQ5V'),
(72, 'rB4vQ5', 'FRrQ5V', 'Wn3XRO'),
(73, 'XyJHMZ', '2014101011', 'LlUAZo'),
(74, 'XyJHMZ', 'LlUAZo', '2014101011'),
(75, 'Iov0NN', '2014101011', 'Wn3XRO'),
(76, 'Iov0NN', 'Wn3XRO', '2014101011'),
(77, 'Exz2Fs', '2014101011', 'W90BJP'),
(78, 'Exz2Fs', 'W90BJP', '2014101011'),
(79, 'FSR84', '2014091407', 'sV11Z2'),
(80, 'FSR84', 'sV11Z2', '2014091407'),
(81, 'RyY6TU', '2014091407', 'FRrQ5V'),
(82, 'RyY6TU', 'FRrQ5V', '2014091407'),
(83, 'X3JMMZ', 'FRrQ5V', 'GP3xXR'),
(84, 'X3JMMZ', 'GP3xXR', 'FRrQ5V'),
(85, 'HXDBSI', 'sV11Z2', '2014101011'),
(86, 'HXDBSI', '2014101011', 'sV11Z2'),
(87, '1nVzYP', 'GP3xXR', 'sV11Z2'),
(88, '1nVzYP', 'sV11Z2', 'GP3xXR'),
(89, '4BGZCR', 'GP3xXR', '2014091407'),
(90, '4BGZCR', '2014091407', 'GP3xXR'),
(91, 'DP36Uw', 'LlUAZo', 'sV11Z2'),
(92, 'DP36Uw', 'sV11Z2', 'LlUAZo'),
(93, '4IE21I', '2014091407', 'LlUAZo'),
(94, '4IE21I', 'LlUAZo', '2014091407'),
(95, 'W9274O', 'Bg6yUN', 'LlUAZo'),
(96, 'W9274O', 'LlUAZo', 'Bg6yUN'),
(97, 'DxJKTX', 'GP3xXR', 'LlUAZo'),
(98, 'DxJKTX', 'LlUAZo', 'GP3xXR'),
(99, 'R0xPDo', 'Bg6yUN', 'sV11Z2'),
(100, 'R0xPDo', 'sV11Z2', 'Bg6yUN'),
(101, '0D4wOW', 'LlUAZo', 'Wn3XRO'),
(102, '0D4wOW', 'Wn3XRO', 'LlUAZo'),
(103, '3WF03K', 'Wn3XRO', 'sV11Z2'),
(104, '3WF03K', 'sV11Z2', 'Wn3XRO');

-- --------------------------------------------------------

--
-- Table structure for table `chat_konten`
--

CREATE TABLE IF NOT EXISTS `chat_konten` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `chat_konten_id` text,
  `chat_id` text,
  `id_user` text,
  `isi_chat` longtext,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=526 ;

--
-- Dumping data for table `chat_konten`
--

INSERT INTO `chat_konten` (`id`, `chat_konten_id`, `chat_id`, `id_user`, `isi_chat`, `status`) VALUES
(290, 'uoU71t', 'GB3n9R', '2014101011', 'hahahahahaha', 0),
(291, 'yZuKSK', 'sM9nQ5', 'Bg6yUN', '*ngakaksampeingusan*', 0),
(292, '0iOHRV', 'w4sLW', '2014101011', 'Ping', 0),
(293, 'xzTrLM', 'w4sLW', '2014101011', '*yaelahK*', 0),
(294, 'wAtlX', 'w4sLW', '2014101011', '*ngakaksampeingusan*', 0),
(295, 'q5MMOS', 'w4sLW', '2014101011', '*waaaK*', 0),
(296, '8eVGKW', 'w4sLW', '2014101011', '*malukagetK*', 0),
(297, 'OiKlQN', 'EUJuUO', '9pzuk9', 'zis*malu*', 0),
(298, 'GnXLYX', 'EUJuUO', '2014101011', 'apa', 0),
(299, 'SXXuXL', 'xrLNXH', 'FRrQ5V', 'cuk', 0),
(300, 'MwwGsL', 'w4sLW', 'Bg6yUN', '*senyumcinta*', 0),
(301, 'IT3FdX', 'w4sLW', 'Bg6yUN', '*senyumcinta*', 0),
(302, 'vSFXRN', 'w4sLW', '2014101011', '*ups*', 0),
(303, 'LdPBTY', 'Nq1YE', 'Bg6yUN', 'oioioioi\n*ngantuk*', 0),
(304, 'NsY0VT', 'EUJuUO', '2014101011', 'chat', 0),
(305, '02vNXR', 'EUJuUO', '2014101011', '*waaa*', 0),
(306, 'ID9mEA', 'EUJuUO', '2014101011', 'ufaypgowryg9-\nWRU]', 0),
(307, 'Pj6IDV', 'EUJuUO', '9pzuk9', 'sjnslnlsnlnjlnmakan bakso', 0),
(308, 'r8sA87', 'EUJuUO', '2014101011', '*waaaK*', 0),
(309, '57IMBF', 'TuYKCA', '9pzuk9', 'pesen   soto dong om', 0),
(310, 'TPJ', 'EUJuUO', '2014101011', 'sfdgarqhgR', 0),
(311, '1XZB8P', 'EUJuUO', '2014101011', '*melas*', 0),
(312, 'pY9AG1', 'Nq1YE', 'Bg6yUN', 'yo''i', 0),
(313, 'yf72w', 'w4sLW', '2014101011', 'cok', 0),
(314, 'Cs2HAW', 'w4sLW', 'Bg6yUN', 'opo', 0),
(315, 'KQvEtO', 'EUJuUO', '9pzuk9', 'ngebakso yuk*mupengK*', 0),
(316, 'qsWXe', 'Nq1YE', '9pzuk9', 'ngana ngapa\n', 0),
(317, 'RYtJW', 'EUJuUO', '2014101011', 'sate ajajajajajaaaaaa*waaaK*', 0),
(318, 'OEDOKD', 'w4sLW', '2014101011', '*geram*', 0),
(319, '7e1IMC', 'EUJuUO', '9pzuk9', 'nasi goreng...', 0),
(320, 'zqHuZQ', 'EUJuUO', '2014101011', 'hahahaha malah nasi goreng.. ngga ngga enak lah', 0),
(321, 'X1PRRX', 'w4sLW', '2014101011', '*keselditahan*', 0),
(322, '0h3WTd', 'w4sLW', 'Bg6yUN', 'jis gue mau curhat..', 0),
(323, 'VvMFVK', 'w4sLW', 'Bg6yUN', '*hening*\n', 0),
(324, 'HiItZL', 'w4sLW', '2014101011', 'curhat apa?', 0),
(325, 'LetF9', 'EUJuUO', '9pzuk9', 'ziss, gue galau. semalem gue dimarahin sama nyokap katanya 17 tapi masih suka ngupil. :(', 0),
(326, 'FJ6sZP', 'w4sLW', 'Bg6yUN', 'tentang cinTAEK\n', 0),
(327, 'DUOZVO', 'EUJuUO', '2014101011', 'yeeee gue juga suka  ngupil', 0),
(328, 'HHyIM', 'w4sLW', '2014101011', 'uuuuu gimana tu?', 0),
(329, 'xrAZF', 'EUJuUO', '2014101011', '\n\n     \n    HTML\n    CSS\n    JAVASCRIPT\n    SQL\n    PHP\n    jQUERY\n    BOOTSTRAP\n    ANGULAR\n    TUTORIALS\n    REFERENCES\n    EXAMPLES\n    FORUM\n     \n     \n\nPHP Tutorial\nPHP HOME PHP Intro PHP Install PHP Syntax PHP Variables PHP Echo / Print PHP Data Types PHP Strings PHP Constants PHP Operators PHP If...Else...Elseif PHP Switch PHP While Loops PHP For Loops PHP Functions PHP Arrays PHP Sorting Arrays PHP Superglobals\nPHP Forms\nPHP Form Handling PHP Form Validation PHP Form Required PHP Form URL/E-mail PHP Form Complete\nPHP Advanced\nPHP Arrays Multi PHP Date and Time PHP Include PHP File Handling PHP File Open/Read PHP File Create/Write PHP File Upload PHP Cookies PHP Sessions PHP Filters PHP Filters Advanced PHP Error Handling PHP Exception\nMySQL Database\nMySQL Database MySQL Connect MySQL Create DB MySQL Create Table MySQL Insert Data MySQL Get Last ID MySQL Insert Multiple MySQL Prepared MySQL Select Data MySQL Delete Data MySQL Update Data MySQL Limit Data\nPHP - XML\nPHP XML Parsers PHP SimpleXML Parser PHP SimpleXML - Get PHP XML Expat PHP XML DOM\nPHP - AJAX\nAJAX Intro AJAX PHP AJAX Database AJAX XML AJAX Live Search AJAX RSS Reader AJAX Poll\nPHP Examples\nPHP Examples PHP Quiz PHP Certificate\nPHP Reference\nPHP Array PHP Calendar PHP Date PHP Directory PHP Error PHP Filesystem PHP Filter PHP FTP PHP HTTP PHP Libxml PHP Mail PHP Math PHP Misc PHP MySQLi PHP SimpleXML PHP String PHP XML PHP Zip PHP Timezones\nPHP Example - AJAX RSS Reader\nÂ« Previous\nNext Chapter Â»\n\nAn RSS Reader is used to read RSS Feeds.\nAJAX RSS Reader\n\nThe following example will demonstrate an RSS reader, where the RSS-feed is loaded into a webpage without reloading:\n\nRSS-feed will be listed here...\nExample Explained - The HTML Page\n\nWhen a user selects an RSS-feed in the dropdown list above, a function called "showRSS()" is executed. The function is triggered by the "onchange" event:\n<html>\n<head>\n<script>\nfunction showRSS(str) {\n  if (str.length==0) {\n    document.getElementById("rssOutput").innerHTML="";\n    return;\n  }\n  if (window.XMLHttpRequest) {\n    // code for IE7+, Firefox, Chrome, Opera, Safari\n    xmlhttp=new XMLHttpRequest();\n  } else {  // code for IE6, IE5\n    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");\n  }\n  xmlhttp.onreadystatechange=function() {\n    if (xmlhttp.readyState==4 && xmlhttp.status==200) {\n      document.getElementById("rssOutput").innerHTML=xmlhttp.responseText;\n    }\n  }\n  xmlhttp.open("GET","getrss.php?q="+str,true);\n  xmlhttp.send();\n}\n</script>\n</head>\n<body>\n\n<form>\n<select onchange="showRSS(this.value)">\n<option value="">Select an RSS-feed:</option>\n<option value="Google">Google News</option>\n<option value="NBC">NBC News</option>\n</select>\n</form>\n<br>\n<div id="rssOutput">RSS-feed will be listed here...</div>\n</body>\n</html>\n\nThe showRSS() function does the following:\n\n    Check if an RSS-feed is selected\n    Create an XMLHttpRequest object\n    Create the function to be executed when the server response is ready\n    Send the request off to a file on the server\n    Notice that a parameter (q) is added to the URL (with the content of the dropdown list)\n\nThe PHP File\n\nThe page on the server called by the JavaScript above is a PHP file called "getrss.php":\n<?php\n//get the q parameter from URL\n$q=$_GET["q"];\n\n//find out which feed was selected\nif($q=="Google") {\n  $xml=("http://news.google.com/news?ned=us&topic=h&output=rss");\n} elseif($q=="NBC") {\n  $xml=("http://rss.msnbc.msn.com/id/3032091/device/rss/rss.xml");\n}\n\n$xmlDoc = new DOMDocument();\n$xmlDoc->load($xml);\n\n//get elements from "<channel>"\n$channel=$xmlDoc->getElementsByTagName(''channel'')->item(0);\n$channel_title = $channel->getElementsByTagName(''title'')\n->item(0)->childNodes->item(0)->nodeValue;\n$channel_link = $channel->getElementsByTagName(''link'')\n->item(0)->childNodes->item(0)->nodeValue;\n$channel_desc = $channel->getElementsByTagName(''description'')\n->item(0)->childNodes->item(0)->nodeValue;\n\n//output elements from "<channel>"\necho("<p><a href=''" . $channel_link\n  . "''>" . $channel_title . "</a>");\necho("<br>");\necho($channel_desc . "</p>");\n\n//get and output "<item>" elements\n$x=$xmlDoc->getElementsByTagName(''item'');\nfor ($i=0; $i<=2; $i++) {\n  $item_title=$x->item($i)->getElementsByTagName(''title'')\n  ->item(0)->childNodes->item(0)->nodeValue;\n  $item_link=$x->item($i)->getElementsByTagName(''link'')\n  ->item(0)->childNodes->item(0)->nodeValue;\n  $item_desc=$x->item($i)->getElementsByTagName(''description'')\n  ->item(0)->childNodes->item(0)->nodeValue;\n  echo ("<p><a href=''" . $item_link\n  . "''>" . $item_title . "</a>");\n  echo ("<br>");\n  echo ($item_desc . "</p>");\n}\n?>\n\nWhen a request for an RSS feed is sent from the JavaScript, the following happens:\n\n    Check which feed was selected\n    Create a new XML DOM object\n    Load the RSS document in the xml variable\n    Extract and output elements from the channel element\n    Extract and output elements from the item elements\n\n\nÂ« Previous\nNext Chapter Â»\n\nWEB HOSTING\nUK Reseller Hosting\nWEB BUILDING\nFREE Website BUILDER Free HTML5 Templates\nW3SCHOOLS EXAMS\nHTML, CSS, JavaScript, PHP, jQuery, and XML Certifications\nSHARE THIS PAGE\nCOLOR PICKER\ncolorpicker\nREPORT ERROR\nPRINT PAGE\nFORUM\nABOUT\nTop 10 Tutorials\nHTML Tutorial\nCSS Tutorial\nJavaScript Tutorial\nSQL Tutorial\nPHP Tutorial\njQuery Tutorial\nBootstrap Tutorial\nAngular Tutorial\nASP.NET Tutorial\nXML Tutorial\nTop 10 References\nHTML Reference\nCSS Reference\nJavaScript Reference\nBrowser Statistics\nHTML DOM\nPHP Reference\njQuery Reference\nHTML Colors\nHTML Character Sets\nXML DOM\nTop 10 Examples\nHTML Examples\nCSS Examples\nJavaScript Examples\nHTML DOM Examples\nPHP Examples\njQuery Examples\nXML Examples\nXML DOM Examples\nASP Examples\nSVG Examples\nWeb Certificates\nHTML Certificate\nHTML5 Certificate\nCSS Certificate\nJavaScript Certificate\njQuery Certificate\nPHP Certificate\nXML Certificate\nW3Schools is optimized for learning, testing, and training. Examples might be simplified to improve reading and basic understanding. Tutorials, references, and examples are constantly reviewed to avoid errors, but we cannot warrant full correctness of all content. While using this site, you agree to have read and accepted our terms of use, cookie and privacy policy. Copyright 1999-2015 by Refsnes Data. All Rights Reserved.\n\nW3Schools.com\n', 0),
(330, '2tCFGV', 'sn2JPC', '2014101011', 'agsfhs', 0),
(331, 'sHGHXP', 'HutXS1', '2014101011', 'sdfgsfdgsfgsfg', 0),
(332, 'LgU89J', 'sM9nQ5', '2014091407', 'http://10.233.3.212/xirpl/public_html/img/emo/Simley-15_24.png', 0),
(333, 'TDWYWY', 'S3GAXO', '2014091407', 'Hallo Pak Budi *nyengirK*', 0),
(334, 'xlZ1TE', 'S3GAXO', 'Wn3XRO', 'test\n', 0),
(335, 'uWKTWL', 'rB4vQ5', 'Wn3XRO', 'test\n', 0),
(336, 'PwIt0', 'S3GAXO', '2014091407', '*nyengirK*', 0),
(337, 'ztGsWE', 'sM9nQ5', '2014091407', '*ngakaksampeingusan*', 0),
(338, 'v9vQU', 'sM9nQ5', '2014091407', '2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n22\n2\n2\n2\n2\n', 0),
(339, 'SpsyRX', 'sn2JPC', '2014101011', '*senyumcinta*', 0),
(340, 'StSLYP', 'sn2JPC', '2014101011', '*melasK*', 0),
(341, 'uFGwZ', 'sn2JPC', '2014101011', 'hahahaha*ngantukK*', 0),
(342, 'E9LK2e', 'XyJHMZ', '2014101011', 'cok\n', 0),
(343, 'USTsOu', 'XyJHMZ', 'LlUAZo', 'kampret\n', 0),
(344, 'ZCj8p8', 'XyJHMZ', '2014101011', 'anjiang*ngakaksampeingusan*', 0),
(345, 'DiV4JN', 'XyJHMZ', 'LlUAZo', 'zfsdfs*ngakaksampeingusanK*sdfsdfsdfsdf', 0),
(346, 'YEYhgH', 'XyJHMZ', 'LlUAZo', '*kagetK*fdgdfgfdgdfgdfg', 0),
(347, 'HByKcW', 'XyJHMZ', '2014101011', 'bales', 0),
(348, 'sNnrdE', 'XyJHMZ', '2014101011', 'balesuy', 0),
(349, '4623', 'XyJHMZ', 'LlUAZo', 'jancukkkk!!!!*waaa*', 0),
(350, 'wW5hkO', 'Iov0NN', '2014101011', 'test *ups*', 0),
(351, 'KZBVAK', 'w4sLW', '2014101011', 'hahahahhaha udah selesai yang editor coy :D', 0),
(352, 'v70ANu', 'sn2JPC', '2014101011', 'on mulu luh hahaha*ups*', 0),
(353, 'vQz7P', 'GB3n9R', '2014101011', 'sfkjgsdfgsdf;g', 0),
(354, 'JsXKSX', 'sM9nQ5', '2014091407', 'wat?\n', 0),
(355, 'IYL5HT', 'GB3n9R', '2014091407', 'msclan x kzj', 0),
(356, '7A9QvX', 'GB3n9R', '2014091407', '*emosi* aasssuuuuuu \n', 0),
(357, 'qKGZqM', 'GB3n9R', '2014101011', 'hahahahah kocaggggggggg', 0),
(358, 'TK6M0o', 'w4sLW', '2014101011', '*waaaK*', 0),
(359, 'uAFBXO', 'Exz2Fs', '2014101011', '*matagenit*', 1),
(360, 'BYJZIV', 'Exz2Fs', '2014101011', 'haha apa kabar men?', 1),
(361, 'xOQYZ4', 'GB3n9R', '2014101011', 'test lewat operamini', 0),
(362, 'UXDs93', 'GB3n9R', '2014091407', 'Hahaha azzis ganteng', 0),
(363, 'hFtQ', 'TuYKCA', '2014091407', ' *nyengir* na gue inggrit', 1),
(364, 'RhN7Qd', 'FSR84', '2014091407', 'Njul hahah', 0),
(365, 'SMVxN3', 'FSR84', '2014091407', '*waaa*', 0),
(366, 'P3RTUX', 'RyY6TU', '2014091407', 'hahaha', 0),
(367, 'Qey8OV', 'X3JMMZ', 'FRrQ5V', 'bangke,,, bapa linux maen di tepe\n', 0),
(368, '53YrZ5', 'RyY6TU', 'FRrQ5V', 'haiii admin', 0),
(369, 'I9ZKXV', 'HXDBSI', 'sV11Z2', 'Testtt\n', 0),
(370, 'XzZzYV', 'FSR84', '2014091407', 'ping', 0),
(371, 'N9dXS', 'FSR84', '2014091407', 'lagi ngapain njul haha', 0),
(372, '8R7ZVT', 'FSR84', 'sV11Z2', 'ah colo haha\n', 0),
(373, 'tvnVT', 'FSR84', '2014091407', 'hahaha keren ngga?', 0),
(374, 'wKSIQ1', 'FSR84', '2014091407', '*nyengir*', 0),
(375, 'XYWFV', 'FSR84', '2014091407', 'et disini aga pending.. sinyalnya ngeselin', 0),
(376, '0xPPSI', 'FSR84', 'sV11Z2', 'boleh lah boleh *nyengirK*', 0),
(377, 'wzOkTM', 'FSR84', 'sV11Z2', 'buang ajaa\n', 0),
(378, '18TAWT', 'FSR84', '2014091407', 'hahaha lo liat, usernya siapa aja tu haha, ngga ngeri loh wkwkwkwk', 0),
(379, 'AmVJWT', 'FSR84', 'sV11Z2', 'anjir Linus Torvalds gabung disini juga? :3', 0),
(380, 'IiAtZP', 'FSR84', '2014091407', 'hahahaha yoi.. bapak gue hahaha', 0),
(381, 'rvGEWN', 'FSR84', 'sV11Z2', 'ngimpi lo hahaha\n', 0),
(382, 'F1STVY', 'FSR84', 'sV11Z2', 'bagusin lagi cuk:3', 0),
(383, '2hHM5', 'FSR84', '2014091407', 'iya emang, masi pada kaku semua.. ilmu gue mentok si ahahahha', 0),
(384, 'UsYzX3', 'FSR84', 'sV11Z2', 'jgn sampe gue transferin ilmu gue nih haha', 0),
(385, 'XrUlXG', '1nVzYP', 'GP3xXR', 'haha', 0),
(386, 'X3RsO', 'FSR84', '2014091407', 'hahaha linus online tu hahah', 0),
(387, 'CVVeXv', 'FSR84', 'sV11Z2', 'boleh tuh minta ilmu dia hahah\n', 0),
(388, 'JNSAEG', 'FSR84', '2014091407', 'hahah.. ett kalo pake chrome aga error njul', 0),
(389, 'K6Iq7q', 'FSR84', 'sV11Z2', 'error gimana? gue ini make chrome wa', 0),
(390, 'rOCPM', 'FSR84', '2014091407', 'coba lo klik user yang lain dah', 0),
(391, 'uP5XsH', 'FSR84', 'sV11Z2', 'udeh, kenapa?', 0),
(392, 'yUWSQJ', 'FSR84', '2014091407', 'ada error ngga?\nkaya udah di klik tapi ngga mau?', 0),
(393, 'tKPJ74', 'FSR84', 'sV11Z2', 'kaga..\nLancar aja gue mah. lo kurang tampan kali hahha', 0),
(394, 'Y5IHkK', 'FSR84', '2014091407', 'hahaha palingan gara gara koneksi si', 0),
(395, '5jMNAY', 'FSR84', '2014091407', '*ups*', 0),
(396, 'Eh4Q7X', 'FSR84', 'sV11Z2', 'payah wifi lo haha..\nngpain aja lo disana?', 0),
(397, 'Vw867', 'FSR84', '2014091407', 'iya disinei lagi ada kendala ni\nni duduk doang ngga ngapa ngapain..\nngga ada kerjaan hahah', 0),
(398, 'MFMkSY', '4BGZCR', 'GP3xXR', 'Test', 0),
(399, 'tOKPG', 'FSR84', 'sV11Z2', 'daripada lo gaada kerjaan mending editin bootanimation buat hape gue haha', 0),
(400, 'EU2ZiX', '4BGZCR', 'GP3xXR', '*yaelah*', 0),
(401, 'IrJtBB', 'FSR84', '2014091407', 'hahahahaha anjirrrrrrr.. ah gue udah ngga mainan hp si.. mainannya kelereng haha', 0),
(402, 'ufTBvK', 'FSR84', 'sV11Z2', 'ahh taee gue gaada bakat buat ngedit2 hahaha', 0),
(403, 'YqyYFZ', '4BGZCR', '2014091407', '*waaa**senyumcinta**matagenit*', 0),
(404, 'XIJLMR', 'FSR84', '2014091407', 'hahaha daripada ngedit mending mrogram aja njul, bisa bikin chatingan haha', 0),
(405, '9j7o0y', 'DP36Uw', 'LlUAZo', 'hey panjul', 0),
(406, 'H1CS8L', 'DP36Uw', 'LlUAZo', 'you have a problem? ', 0),
(407, 'wUA3ES', '4IE21I', '2014091407', 'hahah *emosi*', 0),
(408, 'vgzDHR', 'FSR84', 'sV11Z2', 'iya ntar itu mah skrg hape gue lg ngadat minta jajan haha', 0),
(409, 'EI8TMS', 'DP36Uw', 'sV11Z2', 'No mister.. hhahaha', 0),
(410, 'X94mvK', 'FSR84', '2014091407', 'hahaha jajanin gs aja haha', 0),
(411, 'MOXjES', '4IE21I', 'LlUAZo', 'silit pitik', 0),
(412, 'L3Mo4D', 'FSR84', 'sV11Z2', 'murni dia ga main gitu2an wkwkw', 0),
(413, 'PXT6FW', 'DP36Uw', 'LlUAZo', 'nononon,,, i see you,, you have a problem in your mine', 0),
(414, '4GWPh', 'DP36Uw', 'sV11Z2', 'yes i have a problem with my wallet:(\n', 0),
(415, '1h54JR', 'FSR84', '2014091407', 'hahaha.. tai..\noya hari sabtu kita disuruh kesekolahan ama pak edi', 0),
(416, 'Fz5DZr', 'FSR84', 'sV11Z2', 'iye ke lab kan? cuma disuruh ambil souvenir doang ett', 0),
(417, 'AuSSYR', 'FSR84', '2014091407', 'iya.. sekalian mau ngomongin ini', 0),
(418, 'KErXR', 'DP36Uw', 'LlUAZo', 'u know facebook? yes i  hate  facebookk,, its ', 0),
(419, 'UeQxDL', 'FSR84', 'sV11Z2', 'ngomongin web ini? wahh:3', 0),
(420, 'Lp8fQ8', 'DP36Uw', 'LlUAZo', 'haaaa?? u have wallet? wallet burung?', 0),
(421, 'MGF1QL', 'FSR84', '2014091407', 'yoi.. ini mau gue omongin ke kelas kita aja dulu, setelah semua fix baru kita sebarin ke kelas yang lain', 0),
(422, 'Gz702R', 'DP36Uw', 'LlUAZo', 'u a men? dancing?', 0),
(423, 'L66UuQ', 'DP36Uw', 'sV11Z2', 'u hate facebook? but you''re the owner facebook dude!', 0),
(424, 'JUFXQ2', 'DP36Uw', 'sV11Z2', 'no no no .. wallet in indonesian is mean "Dompet" .. yeah you know', 0),
(425, 'H5KLu6', 'DP36Uw', 'sV11Z2', 'no i''m not like a Desta who liked dancing:3 i''m like MOSHING HAHAH', 0),
(426, '9OCD30', 'FSR84', 'sV11Z2', 'fix dulu semuanya sampe bener2 fix tjakep baru dah', 0),
(427, 'vwyhGX', 'FSR84', '2014091407', 'hahahaha okedah.. kalo ini kelar kan seengganya kelas kita naik derajadnya haha', 0),
(428, '9SG3HQ', 'FSR84', 'sV11Z2', 'yoihh.. naik daun dah, daun lu taikin patah dah tuh batangnya haha', 0),
(429, 'v1g5U', 'DP36Uw', 'LlUAZo', 'yeahh,,, i make tadikapertiwi.com,, cause i wanna destroy my old facebook forum ', 0),
(430, 'pDRdWV', 'FSR84', '2014091407', 'hahahahaha taiiiii.. entar kelas kita yang dibanga bangain coy, walau cuma bikin chattingan doang hahaha', 0),
(431, 'XVF27w', 'DP36Uw', 'sV11Z2', 'that''s look good brother:3', 0),
(432, 'BABx5', 'FSR84', 'sV11Z2', 'iyalah kelas lain blm tentu bisa broh', 0),
(433, 'x2x5ME', 'DP36Uw', 'LlUAZo', 'nonono wallet in indonesia is "Burung" yeah,, ', 0),
(434, 'H8InPN', 'DP36Uw', 'LlUAZo', 'no no...', 0),
(435, 'LS2X0W', 'DP36Uw', 'LlUAZo', 'u know desta?', 0),
(436, 'UU9AZC', 'DP36Uw', 'sV11Z2', 'your chat is soooo pending yes ', 0),
(437, 'NDBsCT', 'DP36Uw', 'sV11Z2', 'yes i know him, him have a young brother who called SOTO', 0),
(438, '88mJZ', 'FSR84', '2014091407', 'iya tapi kelas kita juga belom tentu bisa masarin susu kaleng hahaha', 0),
(439, 'qJWd5H', 'DP36Uw', 'LlUAZo', 'nooo,,, i have a problem with my connection in  Australia', 0),
(440, 'NP46C4', 'DP36Uw', 'LlUAZo', 'whatt,,, i know soto,, heis your brother', 0),
(441, 'D9D8BO', 'FSR84', 'sV11Z2', 'males lagian juga ah mending susu emak hahah', 0),
(442, 'FBTWMD', 'DP36Uw', 'sV11Z2', 'wow.. you''re in Australia now????', 0),
(443, 'C5ECIO', 'FSR84', '2014091407', 'hahaha susu emak ijah aja', 0),
(444, '2Cz73I', 'DP36Uw', 'sV11Z2', 'no no no i don''t have a brother, if i hv a brother like him i will kill him', 0),
(445, 'FWVSNj', 'FSR84', 'sV11Z2', 'udah kendor haha', 0),
(446, 'qj2h3H', 'FSR84', '2014091407', 'lo disitu ngapain njul, suruh dugem?', 0),
(447, '6BNFI', 'DP36Uw', 'LlUAZo', 'yes,, Australia its city in Citayam Country ', 0),
(448, '0OPdDT', 'FSR84', 'sV11Z2', 'kga disuruh ngapa2in.. gue boring aja nih ngedit2 bootanimation hape', 0),
(449, 'pz9TC9', 'FSR84', 'sV11Z2', 'sekalian maenin updater-script haha', 0),
(450, '6QRGLZ', 'W9274O', 'Bg6yUN', 'Fuck yoi Zuck!!\n', 0),
(451, 'PYENIR', 'FSR84', '2014091407', 'hahaha enak luh kaya gue juga enak si hahaha, disini mah bebas.. haha', 0),
(452, 'YIMxL1', 'DP36Uw', 'LlUAZo', 'what??u wanna kill him? if ihave a brother like him,, i wanna sell him in loak market,, and  i get muchmoney ahahaha', 0),
(453, '43XwAD', 'FSR84', 'sV11Z2', 'bebas asal sopan tjoy haha', 0),
(454, '6T6wW7', 'DP36Uw', 'sV11Z2', 'oh that city move into Citayam:3', 0),
(455, 'JCKmUI', 'FSR84', '2014091407', 'kalo disini mah bebas banget, udah kaya di hutan rimba hahaha, saking bebasnya gue bisa nonton bokep di toilet haha', 0),
(456, 'LZYI', 'W9274O', 'LlUAZo', 'what? i will block u proffile in facebook', 0),
(457, '3jU1BQ', 'DP36Uw', 'sV11Z2', 'yes i will kill him with my hand.. no him is doesn''t hv a price because him si ugly hahahahhaha', 0),
(458, 's6IVPM', 'FSR84', 'sV11Z2', 'ah di toilet mah gue juga bisa cukkk ett haha', 0),
(459, '2iVBEV', 'FSR84', '2014091407', 'hahahahaha intinya kan bebas bingit hahaha', 0),
(460, 'CiKkZV', 'FSR84', 'sV11Z2', 'iya ajadah hahha', 0),
(461, '1hNiGR', 'DxJKTX', 'GP3xXR', '*ngantuk*', 0),
(462, 'BKNMR', 'FSR84', '2014091407', 'ada gista putri haha', 0),
(463, 'AhUqBX', 'sM9nQ5', '2014091407', 'hi gista?', 0),
(464, '0BWWBu', 'R0xPDo', 'Bg6yUN', 'ciee di chat gista *gerogiK*', 0),
(465, 'WFOjMO', 'FSR84', 'sV11Z2', 'itu pasti mamat hahha', 0),
(466, 'BfWOYy', 'DP36Uw', 'LlUAZo', 'yeah,, cause im is precident in citayam country now', 0),
(467, 'GoUdFJ', 'R0xPDo', 'sV11Z2', 'alah siapa lg ini hahaha', 0),
(468, 'uLWBGR', 'R0xPDo', 'Bg6yUN', 'ah gapernah nonton tipi nih _-\n', 0),
(469, 'xRDfBW', 'DP36Uw', 'LlUAZo', 'no no no,, he have have a price,, $1 ', 0),
(470, 'LlPyTZ', 'sM9nQ5', 'Bg6yUN', 'hi mimin', 0),
(471, '2k4FNq', 'DxJKTX', 'LlUAZo', 'hey nus', 0),
(472, 'BI8mRT', 'FSR84', '2014091407', 'dia lagi tidur.. tidur di pelukan gista haha', 0),
(473, '8qQzFU', 'W9274O', 'LlUAZo', 'hai gista', 0),
(474, 'w4BNTL', 'W9274O', 'Bg6yUN', 'taek', 0),
(475, '3gA9QS', 'W9274O', 'LlUAZo', 'cuk,, beautifull beatifull have a shit mouth', 0),
(476, 'DDDlS', 'R0xPDo', 'sV11Z2', 'mamat sue haha', 0),
(477, 'Ip84Vo', 'FSR84', 'sV11Z2', 'taekkk haha', 0),
(478, 'VRXjUU', 'FSR84', '2014091407', 'kelompok lo yang berangkat cuma lo doang?', 0),
(479, '3LxOk', 'R0xPDo', 'Bg6yUN', 'jiahahaha taiik lu siapa setaaann\n', 0),
(480, 'RhNUMF', 'R0xPDo', 'sV11Z2', 'panjul orang paling tampan:v hahaha', 0),
(481, 'MJMNKH', 'FSR84', 'sV11Z2', 'berangkat semua alhamdulillah', 0),
(482, 'HR8MUM', 'R0xPDo', 'Bg6yUN', 'anjiang orang paling tampan rupawan yg gak doyan perawan :v', 0),
(483, 'vuDJZ', 'FSR84', '2014091407', 'iya hari ini doang hahaha', 0),
(484, 'LYYJRU', 'R0xPDo', 'sV11Z2', 'taek:v gue doyan perawan:v doyan perawanin juga:v', 0),
(485, 'IX12VH', 'S3GAXO', '2014091407', 'ndut hahaha', 0),
(486, '1fQ0VZ', '0D4wOW', 'LlUAZo', 'taek', 1),
(487, 'UV1ARw', 'FSR84', 'sV11Z2', 'berangkat terus lah kan tinggal dikit lagi haha', 0),
(488, 'VuAHZT', 'R0xPDo', 'Bg6yUN', 'perawan juga ogah pan merawanin lu, biji :v', 0),
(489, '2y3eNs', 'Iov0NN', 'Wn3XRO', 'iya test*nyengir*', 0),
(490, 'MwKiUG', 'FSR84', '2014091407', 'hahaha tai.. mentang mentang tinggal dikit terus pada berangkat semua haha\n\n\ntu si aal gendut pake stive jobs', 0),
(491, 'wrNHOR', 'R0xPDo', 'sV11Z2', 'mamat otaknya koslet anjeng:v', 0),
(492, 'JhCpD', 'Iov0NN', '2014101011', 'gendut haha', 1),
(493, 'KCNLU3', 'HXDBSI', '2014101011', 'haha', 0),
(494, 'uJGyVR', 'Iov0NN', '2014101011', '*mupeng**nyengir**ups**terharu**yaelahK**lumayankagetK**flatK**nahankeselsampesedihK**keselditahanK*', 1),
(495, 'Q9LY5', 'XyJHMZ', '2014101011', 'asu', 1),
(496, '46ZwWA', 'w4sLW', '2014101011', 'hi gista', 0),
(497, '7pSTG', 'FSR84', 'sV11Z2', 'oh ada si gendut juga disini?:3', 0),
(498, '9pQDWX', 'S3GAXO', 'Wn3XRO', 'assalamualaikum', 0),
(499, 'F2zUUp', 'S3GAXO', 'Wn3XRO', 'test', 0),
(500, 'pJ7qE', 'S3GAXO', '2014091407', 'wa''alaikumsalam haha', 0),
(501, 'KXRQZT', 'FSR84', '2014091407', 'yoiiiiiii haha', 0),
(502, 'LFS9Xy', 'S3GAXO', 'Wn3XRO', 'keren zis prok prok prok*nyengir*', 0),
(503, 'Vz5BXS', 'S3GAXO', '2014091407', '*ups**nyengir*\nhahaha tapi masih kurang men.. masa tombol buat ke Home lupa dibikin hahahah, malu maluin haha', 0),
(504, 'z74kM', 'S3GAXO', '2014091407', 'ada bocah yang mau nyobain juga ngga?', 0),
(505, '3NDBYO', 'S3GAXO', 'Wn3XRO', 'Hahahahah sulit sulit bikin dulu dah dulu', 0),
(506, '2EO3BR', 'S3GAXO', '2014091407', 'hahaha palingan gue rombak besok liburan hihihi.. disini mah santai gue ndut haha', 0),
(507, 'Np7twN', 'FSR84', 'sV11Z2', 'siapa aja yg udah adaa?', 0),
(508, 'PgK2JN', 'FSR84', '2014091407', 'aal ama gista putri haha', 0),
(509, 'UjC1dM', 'FSR84', 'sV11Z2', 'anjeerr:3', 0),
(510, 'yP1yTP', 'FSR84', 'sV11Z2', 'Raisa kemana? mana tuh cewe gue?:3', 0),
(511, '4UHvQp', 'S3GAXO', '2014091407', 'tu akunnya panjul yang Trial User', 0),
(512, 'YS8YFP', 'FSR84', '2014091407', 'hahahahaha tenang aja, nanti bisa modusin bocah tp hahaha', 0),
(513, '615EQL', 'S3GAXO', 'Wn3XRO', 'oh oke oke siap', 0),
(514, 'HeHBKV', '3WF03K', 'Wn3XRO', 'assalamualaikum joul', 0),
(515, 'LVQSVS', 'S3GAXO', '2014091407', 'ada bocah yang mau nyobain juga ngga?', 0),
(516, 'xQorV', '3WF03K', 'sV11Z2', 'walaikumsalam bang.. haha', 1),
(517, 'LXErTX', 'S3GAXO', 'Wn3XRO', 'enggak tau zis gua cobaa aja lu tanyain dwi lagi banyak kerjaan wati lagi tidur widi belom dateng pada sibuk sendiri semua zis disini', 0),
(518, 'xJTj2R', 'FSR84', 'sV11Z2', 'ah bocah tp gada yg enak haha *ciumK*', 0),
(519, 'N99G4R', 'S3GAXO', '2014091407', 'hahahahah besok sabtu aja dah heheh\n\nemang lo lagi ngapain ndut', 0),
(520, '8zCG53', 'FSR84', '2014091407', 'hahahaha seengganya bisa di kadalin haha', 0),
(521, 'w4QvzV', 'S3GAXO', 'Wn3XRO', 'zis dah dulu ya gua suruh ngedisain ocre', 0),
(522, '6LBt4Z', 'S3GAXO', '2014091407', 'oke goodluck *matagenitK*', 1),
(523, '5XUSZI', 'FSR84', 'sV11Z2', 'iyadah ahaha', 0),
(524, 'Uf1uP6', 'FSR84', '2014091407', 'lo pulangnya jam berapa', 0),
(525, '65Y1YB', 'FSR84', 'sV11Z2', 'jam 4, ngapa?', 0);

-- --------------------------------------------------------

--
-- Table structure for table `chat_waktu`
--

CREATE TABLE IF NOT EXISTS `chat_waktu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `chat_konten_id` text,
  `tanggal` text,
  `bulan` text,
  `tahun` text,
  `hari` text,
  `jam` text,
  `menit` text,
  `detik` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `info_web`
--

CREATE TABLE IF NOT EXISTS `info_web` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `col` text COLLATE utf8_unicode_ci NOT NULL,
  `val` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `info_web`
--

INSERT INTO `info_web` (`id`, `col`, `val`) VALUES
(1, 'title', 'Tadika Pertiwi'),
(2, 'slogan', 'Sekolah Tadika Pertiwi Bisa!!!'),
(3, 'about', '<p><strong>Hi Guys!!</strong></p>\r\n\r\n<p><br />\r\nWhat&#39;s Up?? kami harap kalian sehat jasmani &amp; rohani<br />\r\nWeb ini berawal dari tabrakan tabrakan ide dari yang menimbulkan perdebatan yang penting sih enggak.<br />\r\ndan akhirnya Jeeng Jeeen Jeeeng.<br />\r\nTo The Point website ini sebenarnya mempunyai tujuan untuk memudahkan sistem belajar para siswa Tadika Pertiwi.<br />\r\n<br />\r\npengen tau selanjutnya? Sabarr... ini masih Work In Progress.<br />\r\nkalo misal ada usul atau kritik, kirim lewat email&nbsp;di bawah ini ya<br />\r\n<br />\r\ninfo@tadikapertiwi.com<br />\r\n<br />\r\nudahan ahh adminnya yang ini suka bercanda hahaha<br />\r\n<br />\r\n<strong>See you</strong></p>');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `kelas` varchar(100) NOT NULL DEFAULT '',
  `senin` text,
  `selasa` text,
  `rabu` text,
  `kamis` text,
  `jumat` text,
  `sabtu` text,
  PRIMARY KEY (`id`,`kelas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `kelas`, `senin`, `selasa`, `rabu`, `kamis`, `jumat`, `sabtu`) VALUES
(1, 'GQm4yX', 'A', 'A', 'A', 'A', 'A', 'A'),
(2, 'GQm4yX', 'B', 'B', 'B', 'B', 'B', 'B'),
(3, 'GQm4yX', 'C', 'C', 'C', 'C', 'C', 'C'),
(4, 'GQm4yX', 'D', 'D', 'D', 'D', 'D', 'D'),
(5, '9E6V08', 'A', 'A', 'A', 'A', 'A', 'A'),
(6, '9E6V08', 'B', 'B', 'B', 'B', 'B', 'B'),
(7, '9E6V08', 'C', 'C', 'C', 'C', 'C', 'C'),
(8, '9E6V08', 'D', 'D', 'D', 'D', 'D', 'D'),
(9, '2WVurC', 'A', 'A', 'A', 'A', 'A', 'A'),
(10, '2WVurC', 'B', 'B', 'B', 'B', 'B', 'B'),
(11, '2WVurC', 'C', 'C', 'C', 'C', 'C', 'C'),
(12, '2WVurC', 'D', 'D', 'D', 'D', 'D', 'D'),
(17, 'OHqp9H', 'A', 'A', 'A', 'A', 'A', 'A'),
(18, 'OHqp9H', 'B', 'B', 'B', 'B', 'B', 'B'),
(19, 'OHqp9H', 'C', 'C', 'C', 'C', 'C', 'C'),
(20, 'OHqp9H', 'D', 'D', 'D', 'D', 'D', 'D'),
(21, '1P0Hmt', 'A', 'A', 'A', 'A', 'A', 'A'),
(22, '1P0Hmt', 'B', 'B', 'B', 'B', 'B', 'B'),
(23, '1P0Hmt', 'C', 'C', 'C', 'C', 'C', 'C'),
(24, '1P0Hmt', 'D', 'D', 'D', 'D', 'D', 'D'),
(25, 'y73tVA', 'A', 'A', 'A', 'A', 'A', 'A'),
(26, 'y73tVA', 'B', 'B', 'B', 'B', 'B', 'B'),
(27, 'y73tVA', 'C', 'C', 'C', 'C', 'C', 'C'),
(28, 'y73tVA', 'D', 'D', 'D', 'D', 'D', 'D'),
(29, '5XBIy5', 'A', 'A', 'A', 'A', 'A', 'A'),
(30, '5XBIy5', 'B', 'B', 'B', 'B', 'B', 'B'),
(31, '5XBIy5', 'C', 'C', 'C', 'C', 'C', 'C'),
(32, '5XBIy5', 'D', 'D', 'D', 'D', 'D', 'D'),
(33, 'OvvTI6', 'A', 'A', 'A', 'A', 'A', 'A'),
(34, 'OvvTI6', 'B', 'B', 'B', 'B', 'B', 'B'),
(35, 'OvvTI6', 'C', 'C', 'C', 'C', 'C', 'C'),
(36, 'OvvTI6', 'D', 'D', 'D', 'D', 'D', 'D'),
(45, 'P6KzDX', 'PKN', 'A', 'A', 'A', 'A', 'A'),
(46, 'P6KzDX', 'B', 'B', 'B', 'B', 'Bahasa Sunda', 'B'),
(47, 'P6KzDX', 'C', 'C', 'C', 'C', 'C', 'C'),
(48, 'P6KzDX', 'D', 'D', 'Matematika', 'D', 'D', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_bc`
--

CREATE TABLE IF NOT EXISTS `jadwal_bc` (
  `id` int(10) NOT NULL DEFAULT '0',
  `kelas` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `senin` text CHARACTER SET latin1,
  `selasa` text CHARACTER SET latin1,
  `rabu` text CHARACTER SET latin1,
  `kamis` text CHARACTER SET latin1,
  `jumat` text CHARACTER SET latin1,
  `sabtu` text CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jadwal_bc`
--

INSERT INTO `jadwal_bc` (`id`, `kelas`, `senin`, `selasa`, `rabu`, `kamis`, `jumat`, `sabtu`) VALUES
(1, 'GQm4yX', 'A', 'A', 'A', 'A', 'A', 'A'),
(2, 'GQm4yX', 'B', 'B', 'B', 'B', 'B', 'B'),
(3, 'GQm4yX', 'C', 'C', 'C', 'C', 'C', 'C'),
(4, 'GQm4yX', 'D', 'D', 'D', 'D', 'D', 'D'),
(5, '9E6V08', 'A', 'A', 'A', 'A', 'A', 'A'),
(6, '9E6V08', 'B', 'B', 'B', 'B', 'B', 'B'),
(7, '9E6V08', 'C', 'C', 'C', 'C', 'C', 'C'),
(8, '9E6V08', 'D', 'D', 'D', 'D', 'D', 'D'),
(9, '2WVurC', 'A', 'A', 'A', 'A', 'A', 'A'),
(10, '2WVurC', 'B', 'B', 'B', 'B', 'B', 'B'),
(11, '2WVurC', 'C', 'C', 'C', 'C', 'C', 'C'),
(12, '2WVurC', 'D', 'D', 'D', 'D', 'D', 'D'),
(13, 'P6KzDX', 'A', 'A', 'A', 'A', 'A', 'A'),
(14, 'P6KzDX', 'B', 'B', 'B', 'B', 'B', 'B'),
(15, 'P6KzDX', 'C', 'C', 'C', 'C', 'C', 'C'),
(16, 'P6KzDX', 'D', 'D', 'D', 'D', 'D', 'D'),
(17, 'OHqp9H', 'A', 'A', 'A', 'A', 'A', 'A'),
(18, 'OHqp9H', 'B', 'B', 'B', 'B', 'B', 'B'),
(19, 'OHqp9H', 'C', 'C', 'C', 'C', 'C', 'C'),
(20, 'OHqp9H', 'D', 'D', 'D', 'D', 'D', 'D'),
(21, '1P0Hmt', 'A', 'A', 'A', 'A', 'A', 'A'),
(22, '1P0Hmt', 'B', 'B', 'B', 'B', 'B', 'B'),
(23, '1P0Hmt', 'C', 'C', 'C', 'C', 'C', 'C'),
(24, '1P0Hmt', 'D', 'D', 'D', 'D', 'D', 'D'),
(25, 'y73tVA', 'A', 'A', 'A', 'A', 'A', 'A'),
(26, 'y73tVA', 'B', 'B', 'B', 'B', 'B', 'B'),
(27, 'y73tVA', 'C', 'C', 'C', 'C', 'C', 'C'),
(28, 'y73tVA', 'D', 'D', 'D', 'D', 'D', 'D'),
(29, '5XBIy5', 'A', 'A', 'A', 'A', 'A', 'A'),
(30, '5XBIy5', 'B', 'B', 'B', 'B', 'B', 'B'),
(31, '5XBIy5', 'C', 'C', 'C', 'C', 'C', 'C'),
(32, '5XBIy5', 'D', 'D', 'D', 'D', 'D', 'D'),
(33, 'OvvTI6', 'A', 'A', 'A', 'A', 'A', 'A'),
(34, 'OvvTI6', 'B', 'B', 'B', 'B', 'B', 'B'),
(35, 'OvvTI6', 'C', 'C', 'C', 'C', 'C', 'C'),
(36, 'OvvTI6', 'D', 'D', 'D', 'D', 'D', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `kode` text,
  `nama` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `kode`, `nama`) VALUES
(10, 'GQm4yX', 'X RPL'),
(11, '9E6V08', 'X AP'),
(12, '2WVurC', 'X PM'),
(13, 'P6KzDX', 'XI RPL'),
(14, 'OHqp9H', 'XI AP'),
(15, '1P0Hmt', 'XI PM'),
(16, 'y73tVA', 'XII RPL'),
(17, '5XBIy5', 'XII AP'),
(18, 'OvvTI6', 'XII PM');

-- --------------------------------------------------------

--
-- Table structure for table `komen`
--

CREATE TABLE IF NOT EXISTS `komen` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `id_mapel` varchar(100) DEFAULT NULL,
  `id_pengguna` varchar(100) DEFAULT NULL,
  `tanggal` varchar(100) DEFAULT NULL,
  `komentar` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE IF NOT EXISTS `mapel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mapel` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `mapel`) VALUES
(1, 'Agama'),
(2, 'Bahasa Indonesia'),
(3, 'Bahasa Inggris'),
(4, 'Bahasa Sunda'),
(5, 'Fisika'),
(6, 'Kewirausahaan'),
(7, 'Matematika'),
(8, 'Olahraga'),
(9, 'Pemrograman SQL'),
(10, 'Pemrograman Desktop'),
(11, 'Pemrograman Java'),
(12, 'Pemrograman Web'),
(13, 'PKN'),
(14, 'Seni Budaya'),
(15, 'Sejarah'),
(16, 'Simulasi Digital'),
(17, 'System Komputer');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE IF NOT EXISTS `materi` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user` text NOT NULL,
  `id_materi` varchar(100) DEFAULT NULL,
  `tanggal` int(10) DEFAULT NULL,
  `bulan` varchar(100) DEFAULT NULL,
  `tahun` int(100) DEFAULT NULL,
  `mapel` varchar(100) NOT NULL,
  `judul` text NOT NULL,
  `materi` longtext,
  `kelas` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id`, `user`, `id_materi`, `tanggal`, `bulan`, `tahun`, `mapel`, `judul`, `materi`, `kelas`) VALUES
(40, '2014101011', '20150416024604', 16, 'Apr', 2015, 'Pemrograman SQL', 'Materi Pemrograman SQL Part 4 for SMK Tadika Pertiwi', '<h2>Fungsi Pembandingan</h2>\r\n\r\n<h3 style="color:#aaa; font-style:italic">Fungsi-fungsi pembandingan</h3>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<div>Pola</div>\r\n			</td>\r\n			<td>\r\n			<div>Keterangan</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div><span style="font-family:times new roman,serif; font-size:12.0pt">GREATEST(<em>arg1, arg2, ...</em>)</span></div>\r\n			</td>\r\n			<td style="width:307.85pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">Menghasilkan nilai terbesar dari argumen-argumennya.</span></div>\r\n\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">Coontoh:</span></div>\r\n\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">GREATEST(25,26,30,15) ?30</span></div>\r\n\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">GREATEST(&lsquo;A&rsquo;, &lsquo;a&rsquo;, &lsquo;b&rsquo;, &lsquo;x&rsquo;) ?&rsquo;x&rsquo;</span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:154.25pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">INTERVAL(<em>n, n1, n2, n3, ...</em>)</span></div>\r\n			</td>\r\n			<td style="width:307.85pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">Memnghasilkan:</span></div>\r\n\r\n			<div class="MsoListParagraphCxSpFirst" style="margin-bottom: 0.0001pt; text-indent: -18pt;"><!--[if !supportLists]--><span style="font-family:symbol; font-size:12.0pt">&middot;<span style="font-family:times new roman; font-size:7pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style="font-family:times new roman,serif; font-size:12.0pt">0 jika n&lt;n1</span></div>\r\n\r\n			<div class="MsoListParagraphCxSpMiddle" style="margin-bottom: 0.0001pt; text-indent: -18pt;"><!--[if !supportLists]--><span style="font-family:symbol; font-size:12.0pt">&middot;<span style="font-family:times new roman; font-size:7pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style="font-family:times new roman,serif; font-size:12.0pt">1 jika n&lt;n2</span></div>\r\n\r\n			<div class="MsoListParagraphCxSpLast" style="margin-bottom: 0.0001pt; text-indent: -18pt;"><!--[if !supportLists]--><span style="font-family:symbol; font-size:12.0pt">&middot;<span style="font-family:times new roman; font-size:7pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style="font-family:times new roman,serif; font-size:12.0pt">2jika n&lt;n3</span></div>\r\n\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">Dan seterusnya</span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:154.25pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">LEAST(<em>arg1, arg2, ...</em>)</span></div>\r\n			</td>\r\n			<td style="width:307.85pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">Menghasilkan nilai terkecil dari argumen-argumennya.</span></div>\r\n\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">Contoh:</span></div>\r\n\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">LEAST(25,26,30,15) ? 15</span></div>\r\n\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">LEAST(&lsquo;A&rsquo;, &lsquo;a&rsquo;, &lsquo;b&rsquo;, &lsquo;x&rsquo;) ? &lsquo;A&rsquo;</span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:154.25pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">STRCMP(<em>str1, str2</em>)</span></div>\r\n			</td>\r\n			<td style="width:307.85pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">Menghsilkan:</span></div>\r\n\r\n			<div class="MsoListParagraphCxSpFirst" style="margin-bottom: 0.0001pt; text-indent: -18pt;"><!--[if !supportLists]--><span style="font-family:symbol; font-size:12.0pt">&middot;<span style="font-family:times new roman; font-size:7pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style="font-family:times new roman,serif; font-size:12.0pt">1 kalau <em>str1</em> sama dengan <em>str2</em></span></div>\r\n\r\n			<div class="MsoListParagraphCxSpMiddle" style="margin-bottom: 0.0001pt; text-indent: -18pt;"><!--[if !supportLists]--><span style="font-family:symbol; font-size:12.0pt">&middot;<span style="font-family:times new roman; font-size:7pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style="font-family:times new roman,serif; font-size:12.0pt">0 kalau kedua string berbeda</span></div>\r\n\r\n			<div class="MsoListParagraphCxSpLast" style="margin-bottom: 0.0001pt; text-indent: -18pt;"><!--[if !supportLists]--><span style="font-family:symbol; font-size:12.0pt">&middot;<span style="font-family:times new roman; font-size:7pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style="font-family:times new roman,serif; font-size:12.0pt">NULL kalau ada argumen bernilai NULL</span></div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3 style="color:#aaa; font-style:italic"><span style="font-family:times new roman,serif; font-size:12.0pt"><em><strong>Bermacam-macam fungsi yang lain</strong></em></span></h3>\r\n\r\n<table cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td style="width:154.25pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">Fungsi</span></div>\r\n			</td>\r\n			<td style="width:307.85pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">Keterangan</span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:154.25pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">AES_ENCRYPT(<em>str, str_kunci</em>), AES_ENCRYPT(<em>str_crypt_str,str_kunci)</em></span></div>\r\n			</td>\r\n			<td style="width:307.85pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">AES_ENCRYPT() berguna untuk mengenkripsinstring <em>str</em> dengan menggunakan kunci berupa <em>str_kunci </em>. dalam hal ini, algoritma enkripsi yang digunakan yaitu AES (<em>Advanced Encription Standard</em>). Perlu diketahui, tujuan enkripsi adalah untuk mengubah suatu teks menjadi bentuk lain supaya tidak bisa dibaca oleh orng yang tidak berhak.</span></div>\r\n\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">Untuk mengembalikam string semula yang telah dienkripsi melalui</span></div>\r\n\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">&nbsp;AES_ENCRYPT(), gunakan fungsi AES_ENCRYPT().</span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:154.25pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">ENCODE(<em>str, str_pass)</em></span></div>\r\n\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">DECODE(<em>str_crypt, str_pass)</em></span></div>\r\n			</td>\r\n			<td style="width:307.85pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">ENCODE() berfungsi untuk mengekripsi string <em>str</em> dengan menggunakan kunci berupa <em>str_pass,</em> sedangkankebalikannya dilakukan oleh DECODE()</span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:154.25pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">DES_ ENCRYPT(<em>str</em>[,(<em>key_num|key_str</em>)])</span></div>\r\n\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">DES_ DECRYPT(<em>str_crypt</em>[, <em>str_key</em>])</span></div>\r\n			</td>\r\n			<td style="width:307.85pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">DES_ ENCRYPT() berfungsi untuk melakukan ekripsi dengan menggunakan algoritma DES (). Proses kebalikannya ditangani melalui DES_ DECRYPT().</span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:154.25pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">PASSWORD(<em>str</em>)</span></div>\r\n			</td>\r\n			<td style="width:307.85pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">Berguna untuk mengekripsikam string <em>str</em>. Hanya bersifat stu arah. Hasilnya tidak dapat dikembalikan ke string semula.</span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:154.25pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">MD5(<em>str</em>)</span></div>\r\n			</td>\r\n			<td style="width:307.85pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">Menghasilkan <em>checksum</em> MD5 yang terdiri atas 128-bit. Hasilnya berupa deretan digit heksadesimal.</span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:154.25pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">SHA1(<em>str</em>), SHA(<em>str</em>)</span></div>\r\n			</td>\r\n			<td style="width:307.85pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">Menghasilkan <em>checksum</em> 160-bit yang didasarkan pada algoritma SHA</span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:154.25pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">USER() atau SYSTEM_USER() atau SESSION_USER()</span></div>\r\n			</td>\r\n			<td style="width:307.85pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">Menghasilkan user yang sedang menggunakan MySQL.</span></div>\r\n\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">Contoh:</span></div>\r\n\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">USER() ?&rsquo;root@localhost&rsquo;</span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:154.25pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">DATABASE() atau SCHEMA()</span></div>\r\n			</td>\r\n			<td style="width:307.85pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">Menghasilkan nama <em>database</em> sekarang</span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:154.25pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">VERSION()</span></div>\r\n			</td>\r\n			<td style="width:307.85pt">\r\n			<div class="MsoNormal" style="margin-bottom: 0.0001pt;"><span style="font-family:times new roman,serif; font-size:12.0pt">Menghasilkan versi MySQL</span></div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class="MsoNormal"><span style="font-family:times new roman,serif; font-size:12.0pt">Contoh berikut menunjukkan penggunaan PASSWORD() untuk mencocokkan <em>password</em> atau kata-sandi yang dimasukkan pemakai. Mula-mula, buatlah tabel bernama <strong>pass </strong>pada <em>database</em> <strong>test.</strong></span></div>\r\n\r\n<div class="MsoNormal"><span style="font-size:10.0pt"><em>USES test;</em></span></div>\r\n\r\n<div class="MsoNormal"><span style="font-size:10.0pt"><em>CREATE TABLE pass(</em></span></div>\r\n\r\n<div class="MsoNormal"><span style="font-size:10.0pt"><em>user_id CHAR (8) NOT NULL PRIMARY KEY,</em></span></div>\r\n\r\n<div class="MsoNormal"><span style="font-size:10.0pt"><em>password CHAR (64) NOT NULL);</em></span></div>\r\n\r\n<div class="MsoNormal"><span style="font-family:times new roman,serif; font-size:12.0pt">Selanjutnya masukkan data dengan memberikan perintah berikut:</span></div>\r\n\r\n<div class="MsoNormal"><span style="font-size:10.0pt"><em>INSERT INTO pass</em></span></div>\r\n\r\n<div class="MsoNormal"><span style="font-size:10.0pt"><em>VALUES (&lsquo;ariel&rsquo;, PASSWORD (&lsquo;peterpan&rsquo;));</em></span></div>\r\n\r\n<div class="MsoNormal"><span style="font-size:10.0pt"><em>UPDATE pass SET password =</em></span></div>\r\n\r\n<div class="MsoNormal"><span style="font-size:10.0pt"><em>ENCODE (&lsquo;peterpan&rsquo;,&nbsp; &lsquo;rahasia&rsquo;)</em></span></div>\r\n\r\n<p><span style="font-size:10.0pt"><em>WHERE user_id = &lsquo;ariel&rsquo;</em></span><span style="font-family:times new roman,serif; font-size:12.0pt"><em>;</em></span><br />\r\n<br />\r\n<span style="font-size:10.0pt"><em><strong>NB:</strong></em></span><br />\r\n<span style="font-size:10.0pt"><em>Harap materi di atas di CATAT didalam buku catatan. Suatu saat WAJIB dikumpulkan sebagai nilai extra. THX</em></span></p>\r\n', 'XI RPL'),
(41, '2014101011', '20150416030810', 16, 'Apr', 2015, 'Pemrograman SQL', 'Materi Pemrograman SQL Part 3 for SMK Tadika Pertiwi', '<h3><strong>Fungsi Numeris</strong></h3>\r\n\r\n<div><em>Daftar fungsi numeris</em></div>\r\n\r\n<table cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>Fungsi</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Keterangan</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>ACOS(<em>x</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghasilkan&nbsp;<em>arccosine&nbsp;</em>bilangan&nbsp;<em>x</em>. Hasil dalam satuan radian . Nilai&nbsp;<em>x</em>&nbsp;harus antara -1 sampai dengan 1. Kalau tidak, hasil fungsi berupa NULL.</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>ASIN (<em>x</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghasilkan&nbsp;<em>arcsine&nbsp;</em>bilangan&nbsp;<em>x</em>. Hasil dalam satuan radian. Nilai&nbsp;<em>x</em>&nbsp;harus antara -1 sampai dengan 1. Kalau tidak, hasil fungsi berupa NULL.</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>ATAN(<em>x</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghasilkan&nbsp;<em>arctangent</em>&nbsp;bilangan&nbsp;<em>x</em>. Hasil dalam satuan radian.</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>ATAN(<em>y, x</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghasilkan&nbsp;<em>arctangent</em>&nbsp;bilangan&nbsp;<em>x dan y.&nbsp;</em>Identik dengan ATAN(y/x)</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>COS(<em>x</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghasilkan nilali&nbsp;<em>cosine x. X</em>&nbsp;dalam satuan radian.</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>COT(<em>x</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghasilkan nilali&nbsp;<em>cotangent x. X</em>&nbsp;dalam satuan radian.</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>SIN(<em>x</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghasilkan nilali&nbsp;<em>cosine x. X</em>&nbsp;dalam satuan radian.</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>TAN(<em>x</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghasilkan nilali&nbsp;<em>tangen x. X</em>&nbsp;dalam satuan radian.</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>DEGREES(<em>x</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghsilkan nilai dalalm derajat berdasarkan nilali argumen yang berupa radian.</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>RADIANS(<em>x</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Mengonversi dari derajat ke radian.</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>CEILING (<em>x</em>) atau CEIL(<em>x</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghasilkan bilangan bulat terkecil yang tidak kurang dari&nbsp;<em>x</em>.</div>\r\n\r\n			<div>&nbsp;</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>CEILING(6.7) &rarr; 7</div>\r\n\r\n			<div>CEILING(-6.7) &rarr; -6</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>FLOOR(<em>x</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghasilkan bilangan terbesar yang tidak lebih dari&nbsp;<em>x</em>.</div>\r\n\r\n			<div>&nbsp;</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>FLOOR(6.7) &rarr; 6</div>\r\n\r\n			<div>FLOOR(-6.7) &rarr;-7</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>ROUND(<em>x</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Membulatkan&nbsp;<em>x</em>&nbsp;ke bilangan bulat yang terdekat.</div>\r\n\r\n			<div>&nbsp;</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>ROUND(-6.7) &rarr;-7</div>\r\n\r\n			<div>ROUND(6.7) &rarr; 7</div>\r\n\r\n			<div>ROUND(6.2) &rarr;-6</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>ROUND(<em>x,d</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Membulatkan bilangan sampai bagian pecahan berupa<em>&nbsp;d</em>digit. Bila&nbsp;<em>d</em>&nbsp;berupa negatif, pembulatan dilakukan pada bagian yang berada dikiri titik pecahan.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>ROUND(-6.78,4) &rarr; -6.7800</div>\r\n\r\n			<div>ROUND(-6.78,3) &rarr;-6.780</div>\r\n\r\n			<div>ROUND(-6.78,2) &rarr;-6.78</div>\r\n\r\n			<div>ROUND(-6.78,1) &rarr;-6.8</div>\r\n\r\n			<div>ROUND(-6.78,0) &rarr;-7</div>\r\n\r\n			<div>&nbsp;</div>\r\n\r\n			<div>ROUND(-123456.78,1) &rarr;-123460</div>\r\n\r\n			<div>ROUND(-123456.78,2) &rarr;-123500</div>\r\n\r\n			<div>ROUND(-123456.78,3) &rarr;-123000</div>\r\n\r\n			<div>ROUND(-123656.78,3) &rarr;-124000</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>TRUNCATE(<em>x,d</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghasilkan bilangan dengan<em>&nbsp;d</em>&nbsp;menyatakan jumlah digit untuk bagian pecahannya. Tidak ada pembulatan. Nilali<em>&nbsp;d</em>juga bisa negatif, yang berefek pada pemotongan bagian kiri&nbsp; tanda pecahan. Semua bilangan dibulatkan ke arah nol.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>TRUNCATE(-123456.78,0) &rarr; -123456</div>\r\n\r\n			<div>TRUNCATE(-123456.78,1) &rarr; -123456.7</div>\r\n\r\n			<div>TRUNCATE(-123456.78,2) &rarr; -123456.78</div>\r\n\r\n			<div>TRUNCATE(-123456.78,-1) &rarr; -123450</div>\r\n\r\n			<div>TRUNCATE(-123456.78,-2) &rarr; -123400</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>ABS(<em>x</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghasilkan nilali mutlak (absolut).</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>ABS(5) &rarr; 5</div>\r\n\r\n			<div>ABS(-5) &rarr; 5</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>EXP(<em>x</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghasilkan nilai e<sup>x</sup></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>LN(<em>x</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghasilkan logaritma alami nilai&nbsp;<em>x&nbsp;</em>atau&nbsp;<sup>e</sup>&nbsp;log x.</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:27px; width:187px">\r\n			<div>LOG(<em>x</em>), LOG (<em>x,y</em>)</div>\r\n			</td>\r\n			<td style="height:27px; width:429px">\r\n			<div>Menghasilkan logaritma alami&nbsp; x kalu argumen hanya satu. Bila argumen 2, basis logaritma ditentukan oleh argumen pertama. Jadi,</div>\r\n\r\n			<div>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOG(x) identik dengan LN(x), dan</div>\r\n\r\n			<div>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOG(10, x) identik dengan LOG10(x).</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>Log2(<em>x</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghasilkan logaritma berbasis 2 dari nilai x(<sup>2</sup>log x).</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>LOG2(8) &rarr; 3</div>\r\n\r\n			<div>LOG2(4) &rarr; 2</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>LOG10(<em>x</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghasilkan logaritma berbasis 10 dari nilai x(<sup>10</sup>logx).</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>LOG10(100)&rarr;2</div>\r\n\r\n			<div>LOG10(10) &rarr;1</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>MOD(<em>n,m</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghasilkan sisa pembagian bilanngan&nbsp;<em>n</em>&nbsp;dengan&nbsp;<em>m</em>. Berlaku untuk bilangan real.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>MOD(7,2) &rarr; 1</div>\r\n\r\n			<div>MOD(7,2.5) &rarr; 2.0</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>PI()</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghasilkan nilai&nbsp;<img src="file:///C:/Users/EDDY''B~1/AppData/Local/Temp/msohtmlclip1/01/clip_image002.gif" style="height:22px; width:10px" />&nbsp;(3.141593)</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>POW(<em>x,y</em>) atau POWER(<em>x,y</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghasilkan x<sup>y</sup>.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>POW(2,3) &rarr; 2</div>\r\n\r\n			<div>POW(25,0.5) &rarr; 5 (berarti akar 25)</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>RAND()</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghasilkan bilangan acak antara 0 sampai dengan 1.</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>RAND(<em>n</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghasilkan bilangan acak yang menetap jika&nbsp;<em>n</em>&nbsp;berupa suatu bilanngan yang sama.</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>SING(<em>x</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghasilka nilai berupa:</div>\r\n\r\n			<div>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-1 kalau&nbsp;<em>x</em>&nbsp;negatif</div>\r\n\r\n			<div>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 kalau&nbsp;<em>x</em>&nbsp;berupa nol</div>\r\n\r\n			<div>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1 kalau&nbsp;<em>x</em>&nbsp;positif</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:187px">\r\n			<div>SQRT(<em>x</em>)</div>\r\n			</td>\r\n			<td style="width:429px">\r\n			<div>Menghasilkan akar bilangan x . dalam hal ini, x harus tidak negatif.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>SQRT(25) &rarr; 5</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div>Contoh 1:</div>\r\n\r\n<div><em>SELECT nama,</em></div>\r\n\r\n<div><em>TRUNCATE(DATEDIFF(NOW(), tgl_lahir)/365,0)AS usia</em></div>\r\n\r\n<div><em>FROM infoprib</em><em>;</em></div>\r\n\r\n<div><em>SELECT nama,</em></div>\r\n\r\n<div><em>ROUND(DATEDIFF(NOW(), tgl_lahir)/365,0)AS usia</em></div>\r\n\r\n<div><em>FROM infoprib;</em><br />\r\n<br />\r\n<br />\r\n<em><strong>NB:</strong></em><br />\r\n<br />\r\n<em>Harap materi di atas di CATAT didalam buku catatan. Suatu saat WAJIB dikumpulkan sebagai nilai extra. THX</em></div>\r\n', 'XI RPL'),
(44, '2014091407', '20150420060435', 20, 'Apr', 2015, 'Pemrograman SQL', 'Materi Pemrograman SQL Part 5 for SMK Tadika Pertiwi', '<div id="post-body-4158631164450015974">\r\n<div>\r\n<div><strong>BAB 10 LEBIH JAUH TENTANG PENGGABUNGAN DATA</strong></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>1. Join dan Equijoin</strong></div>\r\n\r\n<div>Makna join adalah penggabungan data yang berasal dari beberapa tabel. Penggabungan yang menggunakan operator inilah yang dikenal dengan sebutan <strong><em>equlity join</em></strong> atau <strong><em>equipoin</em></strong>.</div>\r\n\r\n<div>\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code class="language-sql">CREATE DATABASE wilayah;\r\nUSE wilayah;\r\nCREATE TABLE provinsi (\r\nKode_prov VARCHAR(2) NOT NULL PRIMARY KEY,\r\nNama_prov VARCHAR(20)  NOT NULL);\r\n\r\nCREATE TABLE kota (\r\nKode_prov VARCHAR(2) NOT NULL ,\r\nKode_kota VARCHAR(2)  NOT NULL,\r\nNama _kota VARCHAR(25)  NOT NULL,\r\nPRIMARY KEY (kode_prov, kode_kota));\r\n\r\nCREATE TABLE kecamatan (\r\nKode_prov VARCHAR(2) NOT NULL ,\r\nKode_kota VARCHAR(2)  NOT NULL,\r\nKode_kec VARCHAR(2)  NOT NULL,\r\nNama _kec VARCHAR(25)  NOT NULL,\r\n\r\nPRIMARY KEY (kode_prov, kode_kota, kode_kec));</code></pre>\r\n\r\n<p><strong>2. Natural Join</strong></p>\r\n</div>\r\n\r\n<div>\r\n<div>Natural join adalah penggabungan data dari dua buah tabel yang didasarkan pada kolom dengan nama sama pada kedaua tabel.\r\n<pre>\r\n<code class="language-sql">SELECT kota.nama_kota, provinsi.nama_prov\r\nFORM kota, provinsi\r\nWHERE kota.kode_prov = provinsi.kode_prov;</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div>MySQL memberikan cara alternatif dengan menggunakan kata-kunci NATURAL JOIN. Pernyataan yang diperlukan:</div>\r\n\r\n<div>\r\n<pre>\r\n<code class="language-sql">SELECT nama_kota, nama_prov\r\nFROM kota NATURAL JOIN provinsi;</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div>NATURAL JOIN pada prinsipnya dapat digunakan beberapa kali dalam sebuah pernyataan SELECT.</div>\r\n\r\n<div>\r\n<pre>\r\n<code class="language-sql">SELECT kota.nama_kecn nama_kota, nama_prov\r\nFORM kecamatan\r\nNATURAL JOIN kota\r\nNATURAL JOIN provinsi;</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div>Kalau tidak menggunakan kata-kunci NATURAL JOIN, pernyataannya seperti berikut:</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<pre>\r\n<code class="language-sql">SELECT kota.nama_kecn nama_kota, nama_prov\r\nFROM kecamatan, kota, provinsi\r\nWHERE kecamatan.kode_prov = kota.kode_prov AND\r\n                  kecamatan.kode_kota = kota.kode_kota AND\r\n                  kota.kode_prov= provinsi.kode_prov;</code></pre>\r\n\r\n<div style="clear:both;">&nbsp;</div>\r\n</div>\r\n', 'XI RPL'),
(49, '2014091407', '20150420053617', 20, 'Apr', 2015, 'Pemrograman SQL', 'Materi Pemrograman SQL Part 1 for SMK Tadika Pertiwi', '<p><strong>PENGGUNAAN FUNGSI</strong></p>\r\n\r\n<div id="post-body-3482393649402456">\r\n<div><strong>9.2 Fungsi String</strong></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<table cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>Fungsi</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Keterangan</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>ASC<em>(str)</em></div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan nilai ASCII karakter terdiri pada string <em>str</em>.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>ASC(&lsquo;ABCD&rsquo;)&rarr;65</div>\r\n\r\n			<div>(65 yang merupakan nilai ASCII huruf A)</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>BIN(<em>n</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan string yang menyatakan bentuk biner dari bilangan bulat <em>n</em>.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>BIN(4) &rarr;&rsquo;100&rsquo;</div>\r\n\r\n			<div>BIN(128) &rarr;&rsquo;10000000&rsquo;</div>\r\n\r\n			<div>BIN(65532) &rarr;&rsquo;11111111111111100&rsquo;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>BIT_LENGTH(<em>str</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan jumlah bit dalam string <em>str.</em></div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>BIT_LENGTH(&lsquo;A&rsquo;) &rarr;8</div>\r\n\r\n			<div>BIT_LENGTH(&lsquo;abc&rsquo;) &rarr;24</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>CHAR(<em>n</em>, ...)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan string yang karakter-karakternya secara individual bernilai <em>n</em> (nilai numeris).</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>CHAR(65) &rarr;&rsquo;A&rsquo;</div>\r\n\r\n			<div>CHAR(65,66,67,70) &rarr;&rsquo;ABCF&rsquo;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>CHAR_LENGTH(<em>str</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan jumlah karakter yang terdapat pada string <em>str</em>.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>CHAR_LENGTH(&ldquo;) &rarr; 0</div>\r\n\r\n			<div>CHAR_LENGTH(&lsquo;A&rsquo;) &rarr; 1</div>\r\n\r\n			<div>CHAR_LENGTH(&lsquo;ABCDE&rsquo;) &rarr; 5</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>CONCAT(<em>str</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan string yang merupakan gabungan dari semua argumennya.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>CONCAT(&lsquo;AB&rsquo;,&rsquo;7374&rsquo;,&rsquo;SA&rsquo;) &rarr; &lsquo;AB7374SA&rsquo;</div>\r\n\r\n			<div>Bila ada argumen bernilai NULL, hasilnya NULL</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>CONCAT_WS(<em>pemisah, str, ..</em>.)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan string yang merupakan gabungan dari argumen kedua dan seterusnya, dengan hasil antar argumen akan dipisahkan oleh <em>pemisah</em>.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>CONCAT_WS(&lsquo;-&lsquo;,&rsquo;Andi Akbar&rsquo;,&rsquo;Yudi&rsquo;, Dian Permana&rsquo;) &rarr; Andi Akbar-Yudi-Dian Permana</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>CONV(<em>n, basis_asal, basil_tujuan</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan string yang merupakan representasi nilai numerik <em>n</em> dalam<em> basis_asal</em> menjadi<em>basis_tujuan.</em></div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>Untuk mengonversi 12 bilangan desimal menjadi heksadesimal:</div>\r\n\r\n			<div>CONCAT(12,10,16) &rarr;&rsquo;c&rsquo;</div>\r\n\r\n			<div>Untuk mengonversi 12 bilangan desimal menjadi oktal:</div>\r\n\r\n			<div>CONCAT(12,10,8) &rarr; &lsquo;14&rsquo;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>ELT(<em>n, str1, str2, str3, ...</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan:</div>\r\n\r\n			<div>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; String <em>str1</em> jika<em> n </em>= 1</div>\r\n\r\n			<div>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; String <em>str2 </em>jika <em>n</em> = 2</div>\r\n\r\n			<div>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; String <em>str3</em> jika <em>n</em> = 3</div>\r\n\r\n			<div>Jika nilai <em>n </em>kurang dari 1 atau lebih besar dari jumlah argumen string, hasilnya berupa NULL.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>ELT(1, &lsquo;satu&rsquo;, &lsquo;dua&rsquo;, &lsquo;tiga&rsquo;) &rarr;&rsquo;satu&rsquo;</div>\r\n\r\n			<div>ELT(2, &lsquo;satu&rsquo;, &lsquo;dua&rsquo;, &lsquo;tiga&rsquo;) &rarr;&rsquo;dua&rsquo;</div>\r\n\r\n			<div>ELT(3, &lsquo;satu&rsquo;, &lsquo;dua&rsquo;, &lsquo;tiga&rsquo;) &rarr;&rsquo;tiga&rsquo;</div>\r\n\r\n			<div>ELT(4, &lsquo;satu&rsquo;, &lsquo;dua&rsquo;, &lsquo;tiga&rsquo;) &rarr;NULL</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>FIELD(<em>str, str1, str2, str3, ...</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan indeks milik <em>str</em> terhadap <em>str1, str2</em>, dan seterusnya.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>FIELD(&lsquo;edi&rsquo;, &lsquo;edi&rsquo;, &lsquo;ali&rsquo;, &lsquo;ega&rsquo;) &rarr;1</div>\r\n\r\n			<div>FIELD(&lsquo;ega&rsquo;, &lsquo;edi&rsquo;, &lsquo;ali&rsquo;, ega&rsquo;) &rarr; 3</div>\r\n\r\n			<div>FIELD(&lsquo;edward&rsquo;, edi&rsquo;, ali&rsquo;, &lsquo;ega&rsquo;) &rarr;0</div>\r\n\r\n			<div>Bila string argumen pertama tidak terdapat pada string-string argumen berikutnya, hasil fungsi ini berupa nol.</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>FIND_IN_SET(<em>str, daftar_str</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan posisi <em>str </em>&nbsp;di dalam string <em>daftar_str</em>.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>FIND_IN_SET(&lsquo;ali&rsquo;, &lsquo;edi,ali,siti,fika&rsquo;) &rarr; 2</div>\r\n\r\n			<div>FIND_IN_SET(&lsquo;ari&rsquo;, &lsquo;edi,ali,siti,fika&rsquo;) &rarr; 0</div>\r\n\r\n			<div>Pada contoh diatas, hasil nol menyatakan bahwa &lsquo;ari&rsquo; tidak ditemukan dalam string &lsquo;edi,ali,siti,fika&rsquo;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>FORMAT(<em>n, d</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan string yang merupakan hasil pemformatan bilangan <em>n</em> dengan bentuk semacam ###,###,###,##. Dalam hal ini<em>, d </em>menentukan jumlah digit pecahan.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>FORMAT(12345678.9,4). &rarr; &rsquo;12,345,678,9000&rsquo;</div>\r\n\r\n			<div>FORMAT(12345678.9,3) &rarr;&rsquo;12,345,678,900&rsquo;</div>\r\n\r\n			<div>FORMAT(12345678.9,2) &rarr;&rsquo;12,345,678,90&rsquo;</div>\r\n\r\n			<div>FORMAT(12345678.9,1) &rarr;&rsquo;12,345,678,9&rsquo;</div>\r\n\r\n			<div>FORMAT(12345678.9,0) &rarr;&rsquo;12,345,679&rsquo;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>HEX(<em>n</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Mengasilkan string yang merupakan bentuk representasi bilangan heksadesimal dari bilangan <em>n</em>.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>HEX(12) &rarr; &lsquo;C&rsquo;</div>\r\n\r\n			<div>HEX(1234) &rarr; &lsquo;4D2&rsquo;</div>\r\n\r\n			<div>Bila argumen berupa string, setiap nilai ASCII dari karakter diubah menjadi bentuk heksadesimal.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>HEX(&lsquo;AB&rsquo;) &rarr;&rsquo;4142&rsquo;</div>\r\n\r\n			<div>41 adalah bentuk heksadesimal dari huru A, dan 42 adalah bentuk heksadesimal dari huruf B</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>INSERT(<em>str, pos, n, pengganti</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan string yang berasal dari str, dengan karakter posisi <em>pos</em> dan sebanyak <em>n</em> karakter diganti oleh string <em>pengganti.</em></div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>INSERT(&lsquo;abcdefghij&rsquo;, 5,3, &lsquo;STUW) &rarr; &lsquo;abcdSTUWhij&rsquo;</div>\r\n\r\n			<div>Tiga karakter mulai posisi kellima (yaitu efg) diganti dengan STUW</div>\r\n\r\n			<div>Bila ada argumemn bernilai NULL, hasil berupa NULL</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>INSTR(<em>str, substr</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan posisi string<em> substr </em>yang ditemukan pertama kali pada string <em>str</em>. Hanya bersifat <em>case sensitive</em> kalau ada&nbsp; string biner.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>INSTR(&lsquo;ABCDEFG&rsquo;, &lsquo;bc&rsquo;) &rarr; 2 (bc ditemukan pada posisi kedua pada string ABCDEFG. Hufur kapital dan kecil dianggap sama)</div>\r\n\r\n			<div>INSTR(&lsquo;ABCDEFG&rsquo;, BINARY &lsquo;bc&rsquo;) &rarr; 0</div>\r\n\r\n			<div>INSTR(&lsquo;ABCDEFG&rsquo;, BINARY &lsquo;BC&rsquo;) &rarr; 2</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>LCASE(<em>str</em>) atau LOWER(<em>str</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan string dengan semua huruf akan menjadi huruf kecil.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>LEFT(&lsquo;ABCDefGH&rsquo;) &rarr; &lsquo;abcdefgh&rsquo;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>LEFT(<em>str, n</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan string yang berupa <em>n</em> karakter terkiri dari string <em>str</em>.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>LEFT(&lsquo;ABCDE&rsquo;, 3) &rarr; &lsquo;ABC&rsquo;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>LENGTH(<em>str</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan jumlah karakter pada string <em>str</em>dengan ukuran <em>byte</em>. Karakter dengan bentuk 2 byte akan dihitung sebagai 2.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>LENGTH(&lsquo;ABCDE&rsquo;) &rarr; 5</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>LOCATE(<em>substr, str</em>) atau POSITION(<em>substr</em> IN <em>str</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan posisi string <em>substr</em> pada string <em>str</em>. Jika tidak ditemukan, hasil berupa nol.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>LOCATE(&lsquo;CD&rsquo;, &lsquo;ABCDE&rsquo;) &rarr; 3</div>\r\n\r\n			<div>LOCATE(&lsquo;FD&rsquo;, &lsquo;ABCDE&rsquo;) &rarr; 0</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>LOCATE(<em>substr, str, pos</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Pada bentuk ini, <em>pos </em>digunakan sebagai posisi awal untuk pencarian.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>LOCATE(&lsquo;AB&rsquo;, &lsquo;AB7374AB&rsquo;,1) &rarr; 1 (dicari</div>\r\n\r\n			<div>Mulai posisi pertama dan ditemukan pada posisi pertama)</div>\r\n\r\n			<div>LOCATE(&lsquo;AB&rsquo;, &lsquo;AB7374AB&rsquo;,3) &rarr; 7 (dicari mulai posisi ketiga dan ditemukan pada posisi ketujuh)</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>LPAD(<em>str, n, pengisi</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan string yanng berupa <em>str </em>yang diatur agar&nbsp; memiliki panjang <em>n</em> karakter. Dalam hal ini,<em>pengisi </em>digunakan sebagai penambah agar string hasil memiliki panjang <em>n</em> karakter. Penambahan dilakukan di bagian kiri.</div>\r\n\r\n			<div>Bila&nbsp; <em>n</em> lebih kecil dari panjang string<em> str, </em>terjadi pemotongan</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>LPAD(&lsquo;123&rsquo;, 7, &lsquo;*&rsquo;) &rarr;&rsquo;****123&rsquo;</div>\r\n\r\n			<div>LPAD(&lsquo;123&rsquo;, 6, &lsquo;*&rsquo;) &rarr;&rsquo;***123&rsquo;</div>\r\n\r\n			<div>LPAD(&lsquo;123&rsquo;, 2, &lsquo;*&rsquo;) &rarr;&rsquo;12&rsquo; (terjadi pemotongan)</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>LTRIM(<em>str</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan string dengan semua spasi di kiri pada string <em>str</em> dibuang.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>LTRIM(&lsquo;&nbsp;&nbsp; abc&rsquo;) &rarr; &lsquo;abc&rsquo; (spasi dibelakang tidak dibuang)</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>MID(<em>str, pos, n</em>) atau SUBSTRING(<em>str, pos, n</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan string yang berupa<em> n</em> buah karakter pada string <em>str</em> dimulai dari posisi <em>pos</em>.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>MID(&lsquo;ABCDEF&rsquo;, 3,2) &rarr; &lsquo;CD&rsquo;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>OCT(<em>n</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan string yang merupakan bentuk representasi bilangan oktel (berbasis 8) dari bilangan<em>n</em>.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>OCT(12) &rarr;&rsquo;14&rsquo;</div>\r\n\r\n			<div>OCT(&lsquo;1234&rsquo;) &rarr;&rsquo;2322&rsquo;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>QUOTE(<em>str</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan string <em>str</em> yang diberi tanda petik tunggal. Bila di dalam string terdapat tanda petik tunggal, backslash, karakter NUL, ataupun Ctrl-Z, maka akan diberi notasi<em> backslash</em> (\\).</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>QUOTE(&lsquo;jum&rsquo;&rsquo;at&rsquo;) &rarr;&rsquo;jum\\&rsquo;at&rsquo;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>REPEAT(<em>str, n</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan string berupa nilai n buah <em>str</em>.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>REPEAT(&lsquo;KA&rsquo;, 5) &rarr; &lsquo;KAKAKAKAKA&rsquo;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>REPLACE(<em>str, str_asal, str_pengganti</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan string dengan semua substring<em>str_asal</em> pada <em>str</em> diganti dengan <em>str_pengganti</em>.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>REPLACE(&lsquo;Apa kabar?&rsquo;, &lsquo;a&rsquo;, &lsquo;z&rsquo;) &rarr; &lsquo;Apz kzbzr?&rsquo;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>REVERSE(<em>str</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan string dengan susunan karkter balik.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>REVERSE(&lsquo;ABCDE&rsquo;) &rarr;&rsquo;EDCBA&rsquo;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>RIGHT(<em>str, n</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan <em>n </em>karakter terkanan pada string <em>str</em>.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>RIGHT(&lsquo;ABCDE&rsquo;,2) &rarr; &lsquo;DE&rsquo;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>RPAD(<em>str, n, pengisi</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan&nbsp; string yang berupa str yang diatur agar memiliki panjang <em>n</em> karakter. Dalam hal ini, pengisidigunakan sebagai penambah agar string hasil memiliki panjang <em>n</em> karakter. Penambahan dilakukan di bagian kanan.</div>\r\n\r\n			<div>Bila <em>n</em> lebiih kecil dari panjang string <em>str</em>, terjadi peotngan</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>RPAD(&lsquo;123&rsquo;,7, &lsquo;*&rsquo;) &rarr;&rsquo;123****&rsquo;</div>\r\n\r\n			<div>RPAD(&lsquo;123&rsquo;,6, &lsquo;*&rsquo;) &rarr;&rsquo;123***&rsquo;</div>\r\n\r\n			<div>RPAD(&lsquo;123&rsquo;,2, &lsquo;*&rsquo;) &rarr;&rsquo;12&rsquo; (terjadi pemotongan)</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>RTRIM(<em>str</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan string dengan semua spasi di kanan pada string str dibuang.</div>\r\n\r\n			<div>RTRIM(&lsquo;&nbsp;&nbsp; abc&rsquo;) &rarr;&rsquo;&nbsp;&nbsp; abc&rsquo; (spasi di depan tidak dibuang)</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>SPACE(<em>n</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Meghasilkan string berupa <em>n</em> buah spasi.</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>SUBSTRING_INDEX(<em>str, pemisah, cacah</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan string dari string <em>str</em> tepat sebelum<em>pemisah</em> yang ke-<em>cacah</em> ditemukan .</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>SUBSTRING_INDEX(&lsquo;AB.CD.EF.GH&rsquo;,&rsquo;.&rsquo;, 1) &rarr; &lsquo;AB&rsquo;</div>\r\n\r\n			<div>SUBSTRING_INDEX(&lsquo;AB.CD.EF.GH&rsquo;,&rsquo;.&rsquo;, 1) &rarr;&rsquo;AB.CD.EF.&rsquo;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>TRIM(<em>str</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan string dari <em>str</em> dengan semua spasi di depan dan di belakang dibuang.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>TRIM(&lsquo;&nbsp; abc&nbsp; &lsquo;) &rarr;&rsquo;abc&rsquo;</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:234px">\r\n			<div>UCASE(<em>str</em>) atau UPPER(<em>str</em>)</div>\r\n			</td>\r\n			<td style="width:382px">\r\n			<div>Menghasilkan string dengan semua huruf akan menjadi huruf kapital.</div>\r\n\r\n			<div>Contoh:</div>\r\n\r\n			<div>UCASE(&lsquo;ABCdefGH&rsquo;) &rarr; &lsquo;ABCDEFGH&#39;</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Contoh 2:\r\n<pre>\r\n<code class="language-sql">SELECT infoprib.nama, FORMAT(pekerjaan.gaji,0)\r\nFROM infoprib, pekerjaan\r\nWHERE infoprib.nip = pekerjaan.nip;</code></pre>\r\n</div>\r\n\r\n<div>contoh 3:\r\n<pre>\r\n<code class="language-sql">SELECT infoprib.nama,\r\nLPAD(FORMAT(pekerjaan.gaji,0), 12, CHAR(32))\r\nFROM infoprib, pekerjaan WHERE infoprib.nip = pekerjaan.nip;</code></pre>\r\n</div>\r\n\r\n<div><br />\r\n<br />\r\n<em><strong>NB:</strong></em><br />\r\n<em>Harap materi di atas di CATAT didalam buku catatan. Suatu saat WAJIB dikumpulkan sebagai nilai extra. THX</em></div>\r\n</div>\r\n', 'XI RPL');
INSERT INTO `materi` (`id`, `user`, `id_materi`, `tanggal`, `bulan`, `tahun`, `mapel`, `judul`, `materi`, `kelas`) VALUES
(50, '2014101011', '20150420054155', 20, 'Apr', 2015, 'Pemrograman Java', 'Pemrograman Java part 4 for SMK Tadika Pertiwi', '<h3><strong><span style="font-size:large">Cara membuat pemrograman sederhana menggunakan&nbsp;</span></strong></h3>\r\n\r\n<div class="post-body entry-content" id="post-body-8742185161093723265" style="width: 578px; line-height: 1.4; font-size: 14.8500003814697px; position: relative; font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif;">\r\n<div style="text-align: center;"><strong><span style="font-size:x-large">NETBEANS</span></strong></div>\r\n<br />\r\nStep &quot;1, Buka aplikasi Netbeans seperti di bawah ini :<br />\r\n&nbsp;\r\n<div class="separator" style="clear: both; text-align: center;"><a href="http://4.bp.blogspot.com/-73nkKEyYc64/VTHFTS1z89I/AAAAAAAAEw8/-Nc0T0g_t-Q/s1600/net%2B1.jpg" style="text-decoration: none; color: rgb(119, 17, 0); margin-left: 1em; margin-right: 1em;"><img src="http://4.bp.blogspot.com/-73nkKEyYc64/VTHFTS1z89I/AAAAAAAAEw8/-Nc0T0g_t-Q/s1600/net%2B1.jpg" style="height:200px; position:relative; width:320px" /></a></div>\r\n\r\n<div style="text-align: center;">&nbsp;</div>\r\nStep &quot;2, Klik menu file lalu pilih new project then &quot;Java Application&quot; seperti di bawah ini :<br />\r\n&nbsp;\r\n<div class="separator" style="clear: both; text-align: center;"><a href="http://4.bp.blogspot.com/-ztXQ8xzTGeE/VTHFs3MchRI/AAAAAAAAExE/vBRn_aoLmOI/s1600/net%2B2.jpg" style="text-decoration: none; color: rgb(119, 17, 0); margin-left: 1em; margin-right: 1em;"><img src="http://4.bp.blogspot.com/-ztXQ8xzTGeE/VTHFs3MchRI/AAAAAAAAExE/vBRn_aoLmOI/s1600/net%2B2.jpg" style="height:200px; position:relative; width:320px" /></a></div>\r\n<br />\r\nStep &quot;3, Buatkan nama projectnya dan biarkan kosong pada create class seperti di bawah ini :<br />\r\n&nbsp;\r\n<div class="separator" style="clear: both; text-align: center;"><a href="http://4.bp.blogspot.com/-LxPo2lv1KIo/VTHGtmjlZgI/AAAAAAAAExQ/g3BRSx4ee-w/s1600/net%2B3.jpg" style="text-decoration: none; color: rgb(119, 17, 0); margin-left: 1em; margin-right: 1em;"><img src="http://4.bp.blogspot.com/-LxPo2lv1KIo/VTHGtmjlZgI/AAAAAAAAExQ/g3BRSx4ee-w/s1600/net%2B3.jpg" style="height:200px; position:relative; width:320px" /></a></div>\r\nhal ini disebabkan, kita akan membiasakan diri membuat project dengan pembuatan class sesuai dengan keinginan progerammer. Lalu bagian pada browser, seperti biasa user diberi kebebasan dalam tempat penyimpanan project yang dibuat. Lalu finish...<br />\r\n<br />\r\nStep &quot;4, Buatkan koding dengan cara seperti di bawah ini :<br />\r\n&nbsp;\r\n<div class="separator" style="clear: both; text-align: center;"><a href="http://3.bp.blogspot.com/-CkiZ3x7cdI4/VTHHydMEdSI/AAAAAAAAExc/zDkBoRDJ_dg/s1600/net%2B4.jpg" style="text-decoration: none; color: rgb(119, 17, 0); margin-left: 1em; margin-right: 1em;"><img src="http://3.bp.blogspot.com/-CkiZ3x7cdI4/VTHHydMEdSI/AAAAAAAAExc/zDkBoRDJ_dg/s1600/net%2B4.jpg" style="height:200px; position:relative; width:320px" /></a></div>\r\n&nbsp;\r\n\r\n<div class="separator" style="clear: both; text-align: center;"><a href="http://1.bp.blogspot.com/-nH-hbFkiB3c/VTHIBUwYadI/AAAAAAAAExk/YSTq7RXEAk8/s1600/net%2B4.jpg" style="text-decoration: none; color: rgb(119, 17, 0); margin-left: 1em; margin-right: 1em;"><img src="http://1.bp.blogspot.com/-nH-hbFkiB3c/VTHIBUwYadI/AAAAAAAAExk/YSTq7RXEAk8/s1600/net%2B4.jpg" style="height:200px; position:relative; width:320px" /></a></div>\r\nStep &quot;4, Buatkan koding seperti di bawah ini :<br />\r\n&nbsp;\r\n<div class="separator" style="clear: both; text-align: center;"><a href="http://4.bp.blogspot.com/--NJqZ6gGMbk/VTHJSq583FI/AAAAAAAAExw/aNPPRz4_Z8M/s1600/net%2B5.jpg" style="text-decoration: none; color: rgb(119, 17, 0); margin-left: 1em; margin-right: 1em;"><img src="http://4.bp.blogspot.com/--NJqZ6gGMbk/VTHJSq583FI/AAAAAAAAExw/aNPPRz4_Z8M/s1600/net%2B5.jpg" style="height:200px; position:relative; width:320px" /></a></div>\r\nNah, jika pembuatan koding telah selesai. Maka saatnya tuk membuild/compaile koding yang ada dengan cara F11. Setelah itu me&quot;run&quot;nya dengan ctrl+F5. Hasilnya karena berupa console, maka dapat dilihat d bagian output bar di bawah form coding.<br />\r\nPada bahasa JAVA, perintah untuk menampilkan digunakan perintah System.out.println(obj). Hal ini mirip dengan pemrograman C++.<br />\r\nSample coding latihan :\r\n<div class="separator" style="clear: both; text-align: center;"><a href="http://4.bp.blogspot.com/-CWPRAx99jQw/VTHK2dvkxbI/AAAAAAAAEx8/olpOqnod0l8/s1600/net%2B6.jpg" style="text-decoration: none; color: rgb(119, 17, 0); margin-left: 1em; margin-right: 1em;"><img src="http://4.bp.blogspot.com/-CWPRAx99jQw/VTHK2dvkxbI/AAAAAAAAEx8/olpOqnod0l8/s1600/net%2B6.jpg" style="height:200px; position:relative; width:320px" /></a></div>\r\n<br />\r\nPR:<br />\r\n1. Buatkan program sederhana menggunakan JAVA seperti output di bawah ini :\r\n<div class="separator" style="clear: both; text-align: center;"><a href="http://4.bp.blogspot.com/-RKVVfT1CQmE/VTHMgPyNQGI/AAAAAAAAEyI/SxjnYZWeMOg/s1600/net%2B7.jpg" style="text-decoration: none; color: rgb(119, 17, 0); margin-left: 1em; margin-right: 1em;"><img src="http://4.bp.blogspot.com/-RKVVfT1CQmE/VTHMgPyNQGI/AAAAAAAAEyI/SxjnYZWeMOg/s1600/net%2B7.jpg" style="height:96px; position:relative; width:320px" /></a></div>\r\ndengan kondisi yakni nama dan umur berasal dari nilai sebuah variable.<br />\r\n<br />\r\n2. Buatkan program sederhana menggunakan JAVA seperti output di bawah ini :\r\n<div class="separator" style="clear: both; text-align: center;"><a href="http://1.bp.blogspot.com/-8eAQAwh-r_A/VTHMy5pFiMI/AAAAAAAAEyQ/QIz_VZTn2UA/s1600/net%2B8.jpg" style="text-decoration: none; color: rgb(119, 17, 0); margin-left: 1em; margin-right: 1em;"><img src="http://1.bp.blogspot.com/-8eAQAwh-r_A/VTHMy5pFiMI/AAAAAAAAEyQ/QIz_VZTn2UA/s1600/net%2B8.jpg" style="height:107px; position:relative; width:320px" /></a></div>\r\ndengan kondisi yakni variable A, B dan C memiliki nilai yg di tentukan oleh programmer secara default sebelumnya.<br />\r\n&nbsp;\r\n<div style="text-align: center;"><strong>SELAMAT MENCOBA....!!!</strong></div>\r\n</div>\r\n', 'XI RPL'),
(54, 'Bg6yUN', '20150422075944', 22, 'Apr', 2015, 'Brosur', 'Brosur Pendaftaran Siswa / Siswi Baru 2015/2016', '<p><iframe frameborder="0" scrolling="yes" src="http://tadikapertiwi.com/brosur.php" style="width : 100%; height : 1000px; overflow : auto;"></iframe></p>\r\n', 'XI RPL');

-- --------------------------------------------------------

--
-- Table structure for table `str`
--

CREATE TABLE IF NOT EXISTS `str` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `str_a` longtext,
  `str_b` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `str`
--

INSERT INTO `str` (`id`, `str_a`, `str_b`) VALUES
(1, '*mupeng*', '/emo/Simley-10_24.png'),
(2, '*nyengir*', '/emo/Simley-11_24.png'),
(3, '*ups*', '/emo/Simley-12_24.png'),
(4, '*terharu*', '/emo/Simley-13_24.png'),
(5, '*kaget*', '/emo/Simley-14_24.png'),
(6, '*ngakaksampeingusan*', '/emo/Simley-15_24.png'),
(7, '*senyumcinta*', '/emo/Simley-16_24.png'),
(8, '*ngantuk*', '/emo/Simley-17_24.png'),
(9, '*melas*', '/emo/Simley-18_24.png'),
(10, '*waaa*', '/emo/Simley-19_24.png'),
(11, '*haaa*', '/emo/Simley-1_24.png'),
(12, '*cium*', '/emo/Simley-20_24.png'),
(13, '*malu*', '/emo/Simley-21_24.png'),
(14, '*malukaget*', '/emo/Simley-22_24.png'),
(15, '*gerogi*', '/emo/Simley-23_24.png'),
(16, '*mewek*', '/emo/Simley-24_24.png'),
(17, '*matagenit*', '/emo/Simley-25_24.png'),
(18, '*shutup*', '/emo/Simley-26_24.png'),
(19, '*mual*', '/emo/Simley-27_24.png'),
(20, '*kesel*', '/emo/Simley-2_24.png'),
(21, '*emosi*', '/emo/Simley-3_24.png'),
(22, '*geram*', '/emo/Simley-4_24.png'),
(23, '*keselditahan*', '/emo/Simley-5_24.png'),
(24, '*nahankeselsampesedih*', '/emo/Simley-6_24.png'),
(25, '*flat*', '/emo/Simley-7_24.png'),
(26, '*lumayankaget*', '/emo/Simley-8_24.png'),
(27, '*yaelah*', '/emo/Simley-9_24.png'),
(28, '*mupengK*', '/emo/Smiley-10_24.png'),
(29, '*nyengirK*', '/emo/Smiley-11_24.png'),
(30, '*upsK*', '/emo/Smiley-12_24.png'),
(31, '*terharuK*', '/emo/Smiley-13_24.png'),
(32, '*kagetK*', '/emo/Smiley-14_24.png'),
(33, '*ngakaksampeingusanK*', '/emo/Smiley-15_24.png'),
(34, '*senyumcinta*', '/emo/Smiley-16_24.png'),
(35, '*ngantukK*', '/emo/Smiley-17_24.png'),
(36, '*melasK*', '/emo/Smiley-18_24.png'),
(37, '*waaaK*', '/emo/Smiley-19_24.png'),
(38, '*haaaK*', '/emo/Smiley-1_24.png'),
(39, '*ciumK*', '/emo/Smiley-20_24.png'),
(40, '*maluK*', '/emo/Smiley-21_24.png'),
(41, '*malukagetK*', '/emo/Smiley-22_24.png'),
(42, '*gerogiK*', '/emo/Smiley-23_24.png'),
(43, '*mewekK*', '/emo/Smiley-24_24.png'),
(44, '*matagenitK*', '/emo/Smiley-25_24.png'),
(45, '*shutupK*', '/emo/Smiley-26_24.png'),
(46, '*mualK*', '/emo/Smiley-27_24.png'),
(47, '*keselK*', '/emo/Smiley-2_24.png'),
(48, '*emosiK*', '/emo/Smiley-3_24.png'),
(49, '*geramK*', '/emo/Smiley-4_24.png'),
(50, '*keselditahanK*', '/emo/Smiley-5_24.png'),
(51, '*nahankeselsampesedihK*', '/emo/Smiley-6_24.png'),
(52, '*flatK*', '/emo/Smiley-7_24.png'),
(53, '*lumayankagetK*', '/emo/Smiley-8_24.png'),
(54, '*yaelahK*', '/emo/Smiley-9_24.png');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE IF NOT EXISTS `userdata` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_unik` varchar(10) DEFAULT NULL,
  `level` text NOT NULL,
  `kelas` text NOT NULL,
  `bidang` text NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `pengguna` varchar(100) DEFAULT NULL,
  `katasandi1` varchar(100) DEFAULT NULL,
  `katasandi2` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `bbm` varchar(10) DEFAULT NULL,
  `hp` varchar(20) DEFAULT NULL,
  `fb` varchar(255) DEFAULT NULL,
  `tw` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `id_unik`, `level`, `kelas`, `bidang`, `nama`, `pengguna`, `katasandi1`, `katasandi2`, `email`, `bbm`, `hp`, `fb`, `tw`, `foto`) VALUES
(8, '2014091407', '1', 'P6KzDX', '0', 'Admin Tadika Pertiwi', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin@tadikapertiwi.com', '53253', '087876476101', 'http://facebook.com/azzis.azzis', '@azzis_arswendo', '#afc154'),
(9, '2014101011', '1', 'P6KzDX', '0', 'Azzis Arswendo', 'azzis', 'b3f18c02ec7b3a7a85de1c9c29e1e2d9', 'Nyitnyit2', 'azzisarswendo@gmail.com', '7CE35C5B', '087876476101', 'http://facebook.com/azzis.azzis', '@azzis_arswendo', '#afc154'),
(11, 'sV11Z2', '4', 'P6KzDX', '0', 'Trial User', 'trial', '58723627fcebc230ab0d53ddf5f16e34', 'trial', '', '', '', '', '', '#afc154'),
(12, 'GP3xXR', '4', 'GQm4yX', '0', 'Linus Torvalds', 'pengguna1', '6a3ffc239b1a8a30b2f42b1ada653688', 'okeh', '', '', '', '', '', '#4049D6'),
(13, 'FRrQ5V', '4', 'P6KzDX', '0', 'Aji Prakoso', 'prakoso', '497096ca55524d888e954597836f0ddf', 'katasandikatasandi', '', '', '', '', '', '#693742'),
(14, '9pzuk9', '4', 'P6KzDX', '0', 'Ana Mutia', 'anamutia11', '4b0aef229087d9c830c3a561f2c2e9e5', 'januari11', 'mutia4398@gmail.com', '94k4d4', '0899999992', '', '', '#3328AE'),
(15, 'Bg6yUN', '4', 'P6KzDX', '0', 'Gista Putri', 'sam', 'd41d8cd98f00b204e9800998ecf8427e', '', 'ayanayan@ayan.com', '', '', '', '', '#492903'),
(16, 'Wn3XRO', '4', 'OvvTI6', '0', 'Steve Jobs', 'test', 'cc03e747a6afbbcbf8be7668acfebee5', 'test123', 'test@gmail.com', '', '', '', '', '#A5125D'),
(17, 'LlUAZo', '4', 'GQm4yX', '0', 'Mark Zuckerberg', 'asda', '42059b2e8bd844a3f8de2beb91a14993', 'jancuk', 'azzisarswendo@gmail.com', '', '', '', '', '#CD33C0'),
(18, 'W90BJP', '4', 'P6KzDX', '0', 'Linux', 'azzistest', 'd41d8cd98f00b204e9800998ecf8427e', '', 'azzisarswendo@gmail.com', 'q34rth4', 'afhq54', 'afdhq45y25u1', 'wrtth2u45u', '#027B91');

-- --------------------------------------------------------

--
-- Table structure for table `userlevel`
--

CREATE TABLE IF NOT EXISTS `userlevel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `userlevel`
--

INSERT INTO `userlevel` (`id`, `nama`) VALUES
(1, 'root'),
(2, 'admin'),
(3, 'guru'),
(4, 'siswa');

-- --------------------------------------------------------

--
-- Table structure for table `user_on`
--

CREATE TABLE IF NOT EXISTS `user_on` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `id_unik` text,
  `aktif` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `user_on`
--

INSERT INTO `user_on` (`id`, `id_unik`, `aktif`) VALUES
(14, '2014101011', '20150423035734'),
(15, '2014091407', '20150423065311'),
(16, 'Bg6yUN', '20150423040242'),
(17, '9pzuk9', '20150316035056'),
(18, 'FRrQ5V', '20150423061036'),
(19, 'Wn3XRO', '20150423041000'),
(20, 'LlUAZo', '20150423035410'),
(21, 'sV11Z2', '20150423051424'),
(22, 'GP3xXR', '20150423035256');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
