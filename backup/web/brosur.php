<?php 
$link = "https://" . $_SERVER["SERVER_NAME"];
require_once __DIR__ . "/ip.php";
$ip = new IP("localhost", "u10321rqs_iplog", "Nyitnyit2", "u10321rqs_iplog", "logip", "ip");?>
<?php
require __DIR__ . "/email.php";
if($_SERVER["REQUEST_URI"] == "" || $_SERVER["REQUEST_URI"] == "/brosur.php" || $_SERVER["REQUEST_URI"] == "/brosur.php/" || $_SERVER["REQUEST_URI"] == "/brosur.php"):
    function er($err, $t = 0){if($t = 0)return '<div class="alert alert-danger" role="alert">' . $err . '</div>';else    return '<span class="label label-danger">' . $err . '</span>';}
    $er="";
    $erEm="";
    $erNa="";
    $erSe="";
    $erAl="";
    $email = "";
    $nama = "";
    $alamat = "";
    $sekolah = "";
    $pesan = "";
    if(isset($_POST["send"])){
        $email = trim($_POST["email"]);
        $nama = trim($_POST["nama"]);
        $alamat = trim($_POST["alamat"]);
        $sekolah = trim($_POST["sekolah"]);
        $pesan = trim($_POST["pesan"]);
        if (!$_POST['email'] || !filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) $erEm = er("Tolong Masukan Email Yang Benar");
        if(!$_POST["nama"]) $erNa = er("Tolong Masukan Nama Yang Benar"); 
        if(!$_POST["sekolah"]) $erSe = er("Tolong Masukan Sekolah Yang Benar");
        if(!$_POST["alamat"]) $erAl = er("Tolong Masukan Alamat Yang Benar");
        if($erEm==""&&$erNa==""&&$erSe==""&&$erAl==""){
            $subject = "Siswa Baru";
            $email = trim($_POST["email"]);
            $nama = trim($_POST["nama"]);
            $alamat = trim($_POST["alamat"]);
            $sekolah = trim($_POST["sekolah"]);
            $pesan = trim($_POST["pesan"]);
            
            $mail = new Email($subject, $email, $nama, $alamat, $sekolah, $pesan);
            
            if($mail->Send("root@tadikapertiwi.com")){
                $email = "";
                $nama = "";
                $alamat = "";
                $sekolah = "";
                $pesan = "";
                $er = "Berhasil Dikirim";
            }
            else {
                $er = er("Gagal Dikirim", 1);
            }
        }
    }
    require __DIR__ . "/brosurView.php";

elseif($_SERVER['REQUEST_URI'] == "/brosur.php/ip"):
	$iii = str_replace("/brosur.php/", "", $_SERVER["REQUEST_URI"]);
        $ipT = $ip->showTable($iii);?>
        <table border="1">
                <tr><td>ID</td><td>IP</td></tr>
        <?php foreach($ipT as $row):?>
                <tr><td><?php echo $row["id"]-17;?></td><td><?php echo $row["ip"]?></td></tr>
        <?php endforeach; ?>
        </table>
<?php
elseif($_SERVER['REQUEST_URI'] == "/brosur.php/logip"):
        $iii = str_replace("/brosur.php/", "", $_SERVER["REQUEST_URI"]);
        $ipT = $ip->showTable($iii);?>

        <table border="1">
                <tr><td>ID</td><td>IP</td><td>WAKTU</td></tr>
        <?php foreach($ipT as $row):?>
                <tr><td><?php echo $row["id"]-31;?></td><td><?php echo $row["ip"]?></td><td><?php echo $row["date"]?></td></tr>
        <?php endforeach; ?>
        </table>

<?php endif;
