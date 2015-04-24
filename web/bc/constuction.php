<?php 
$link = "https://" . $_SERVER["SERVER_NAME"];
require_once "./ip.php";
$ip = new IP("localhost", "u10321rqs_iplog", "Nyitnyit2", "u10321rqs_iplog", "logip", "ip");?>
<?php if($_SERVER["REQUEST_URI"] == "/feed.rss"): ?>
<?xml version="1.0" encoding="UTF-8"?><rss version="2.0"
	xmlns:content="http://purl.org/rss/1.0/modules/content/"
	xmlns:wfw="http://wellformedweb.org/CommentAPI/"
	xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:atom="http://www.w3.org/2005/Atom"
	xmlns:sy="http://purl.org/rss/1.0/modules/syndication/"
	xmlns:slash="http://purl.org/rss/1.0/modules/slash/"
	>
<channel>

<title>Tadika Pertiwi</title>
<atom:link href="<?php echo $link;?>/feed.rss" rel="self" type="application/rss+xml" />
<link<?php echo $link;?></link>
<description>Sekola Tadika Pertiwi</description>
<language>en-us</language>
<generator>Panjat Pinang</generator>
<image>
<url><?php echo $link;?>/pemeliharaan.png</url>
<title>Tadika Pertiwi Maintenace</title>
<link><?php echo $link;?></link>
</image>
<item>
<title>Tadika Pertiwi Maintenace</title>
<link><?php echo $link;?></link>
<description><![CDATA[System Tadika Pertiwi / TadikaPertiwi.com Sedang Mengadakan System Construction]]></description>
	<content:encoded>
<![CDATA[System Tadika Pertiwi / TadikaPertiwi.com Sedang Mengadakan System Construction <img src="<?php echo $link;?>/pemeliharaan.png">]]>
</content:encoded>
</item>

</channel>
</rss>
<?php
elseif($_SERVER['REQUEST_URI'] == "/ip"):
        $ipT = $ip->showTable(trim($_SERVER["REQUEST_URI"], "/"));?>
        <table border="1">
                <tr><td>ID</td><td>IP</td></tr>
        <?php foreach($ipT as $row):?>
                <tr><td><?php echo $row["id"]-17;?></td><td><?php echo $row["ip"]?></td></tr>
        <?php endforeach; ?>
        </table>
<?php
elseif($_SERVER['REQUEST_URI'] == "/logip"):
        $ipT = $ip->showTable(trim($_SERVER["REQUEST_URI"], "/"));?>
        <table border="1">
                <tr><td>ID</td><td>IP</td><td>WAKTU</td></tr>
        <?php foreach($ipT as $row):?>
                <tr><td><?php echo $row["id"]-31;?></td><td><?php echo $row["ip"]?></td><td><?php echo $row["date"]?></td></tr>
        <?php endforeach; ?>
        </table>

<?php 
else :?>
<title>Tadika Pertiwi</title>
<link rel="self" type="application/rss+xml" title="Tadika Pertiwi" href="<?php echo $link;?>/feed.rss">
<link rel="alternate" type="application/rss+xml" title="Tadika Pertiwi" href="<?php echo $link;?>/feed.rss">
<style>
body {
	padding : 0px; 
	margin : 0 auto; 
        background : url(./pemeliharaan.png);
        background-size : 100% 100%;
        background-repeat: no-repeat;
	height : 100%;
}
p {
	position: absolute;
	bottom : 2%;
	left : 5%;
	color : #333;
	font-size : 12px; 
	text-decoration : underline ;
	text-decoration-color: #333;
}
 </style>
<p>Copyright &copy; 2015 | Develop by : Panjat Pinang </p>
<?php endif;

if($_SERVER["REQUEST_SCHEME" ] == "http") {
// header("HTTP/1.1 301 Moved Permanently");
  //header("Location: https://" . $_SERVER["SERVER_NAME"] . $_SERVER["REQUEST_URI"]);
  // exit();
}
?>
