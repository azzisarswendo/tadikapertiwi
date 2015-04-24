<?php

class IndexController extends Zend_Controller_Action
{
    public function learnAction(){
        
    }

    public function init()
    {
        
        $info = new Application_Model_DbTable_Info();
        $this->view->feed = $this->_getParam("controller");
        /* Initialize action controller here */
        $this->view->Title = $info->title;
        $this->view->Slogan = $info->slogan;
        $this->view->Tentang = $info->about;
        $this->view->base = "http://localhost/tepe-web/public";
        $this->view->nav = $this->_getParam("action");
        
        $lanjut = new Zend_Session_Namespace();
        if($lanjut->lanjut == 'ya')
        {
                $this->view->lanjut="ya";
        }
        else $this->view->lanjut="tidak";

        if(!$lanjut->id){
            $this->view->input = "tidak";
        }
        else{
            $this->view->input = $lanjut->id;
            $this->view->nama = $lanjut->nama;
        }

        $notif = new Application_Model_DbTable_ChatKonten();

        $this->view->Notification = $notif->ambilNotif($lanjut->id);
    }

    public function indexAction()
    {
        // action body
		
        
        $materi = new Application_Model_DbTable_Materi();
        $this->view->user = new Application_Model_DbTable_Masuk();
        $this->view->materi = $materi->tampil();
        
        if($this->_getParam("id") != null)
        $this->_redirect();
        //echo phpinfo();
                
                //$uri_a = $_SERVER["REQUEST_URI"];
                //$uri_b = $_SERVER["SCRIPT_NAME"];
                //if(str_replace($uri_a, "", $uri_b) == "index.php"){
                //    header("location:index.php/");
                //}
                
                
                
//                    $feed = Zend_Feed_Reader::import('http://news.google.com/news?ned=id&topic=h&output=rss');
//    $data = array(
//        'title'        => $feed->getTitle(),
//        'link'         => $feed->getLink(),
//        'dateModified' => $feed->getDateModified(),
//        'description'  => $feed->getDescription(),
//        'language'     => $feed->getLanguage(),
//        'entries'      => array(),
//    );
//     
//    foreach ($feed as $entry) {
//        $edata = array(
//            'title'        => $entry->getTitle(),
//            'description'  => $entry->getDescription(),
//            'dateModified' => $entry->getDateModified(),
//            'authors'       => $entry->getAuthors(),
//            'link'         => $entry->getLink(),
//            'content'      => $entry->getContent()
//        );
//        $data['entries'][] = $edata;
//    }
//    //echo '<pre>';
//    //print_r($data);
//    echo $data["title"].'<br/>';
//    echo $data["link"].'<br/>';
//    echo $data["dateModified"].'<br/>';
//    echo $data["description"].'<br/>';
//    echo $data["language"].'<br/>';
//    foreach($data["entries"] as $ee){
//    echo $ee["title"].'<br/>';
//    //echo $ee["discription"].'<br/>';
//    echo $ee["dateModified"].'<br/>';
//    echo $ee["authors"].'<br/>';
//    echo $ee["link"].'<br/>';
//    echo $ee["content"].'<br/>';
//    }
    
    }

    public function tambahmateriAction()
    {
        
        $storage = new Zend_Session_Namespace();
        if(!$storage->id){
            $this->_redirect('index/masuk');
        }
        
        $mapel = new Application_Model_DbTable_Mapel();
        $this->view->mapel = $mapel->tampilMapel();
        $dbMateri = new Application_Model_DbTable_Materi();
        /**
        foreach ($mapel->tampilMapel() as $ma)
        {
            echo $ma->mapel;
        }
        **/
        
        if(isset($_POST['simpan']))
	{
            $mapel = $this->getRequest()->getPost('mapel');
            $tanggal = $this->getRequest()->getPost('tanggal');
            $bulan = $this->getRequest()->getPost('bulan');
            $tahun = $this->getRequest()->getPost('tahun');
            $judul = $this->getRequest()->getPost('judul');
            $isi = $this->getRequest()->getPost('isi');
            $id = date('Ymdhis');
            
            if(!trim($judul) || !trim($isi)) $this->view->pesanerror = '<strong>Oalah Cok Ngga Bisa Nyimpen, Soalnya Inputan Kosong.</strong> Tolong Dilengkapi Cok!';            
            else {
                $dbMateri->tambahMateri($storage->id, $id, $tanggal, $bulan, $tahun, $mapel, $judul, $isi);
                $this->view->pesan = '<strong>Udah Berhasil Cok Hahaha, Okeh!</strong> Kalo Mau Liat Klik Tulisan Biru Ini ';
                $this->view->id = $id;
                $this->view->judul = $judul;
                header("location:/index/editmateri/id/$id");
            }
        }
        
    }

    public function materiAction()
    {
        $id = $this->_getParam('id',0);
        $dbmateri = new Application_Model_DbTable_Materi();
        $this->view->materi = $dbmateri->ambil($id);
    }
    
    public function masukAction()
    {
        $daftar = new Application_Model_DbTable_Masuk();
        $kelas = new Application_Model_DbTable_Kelas();
        
        $this->view->kelas = $kelas->tampilKelas();
        
        
        $random = new Application_Model_Class_CodeRandom();
        
        $masuk = new Application_Model_DbTable_Masuk();
        if(isset($_POST['masuk']))
        {
                /** // Kirim Email
                $mail = new Zend_Mail();
                $mail->setBodyText('My Nice Test Text');
                $mail->setFrom('azzisarswendo@gmail.com');
                $mail->addTo('kidsattack45@gmail.com');
                $mail->setSubject('TestSubject');
                if($mail->send())  echo 'okkk';
                 */        
            
            $pengguna = $this->getRequest()->getPost('pengguna');
            $katasandi = $this->getRequest()->getPost('katasandi');
            $katasandiMD = md5($katasandi);
            if($ok = $masuk->masuk($pengguna, $katasandiMD))
            {
                if($ok->katasandi1 == $katasandiMD)
                {
                    Zend_Session::start();
                    $df = new Zend_Session_Namespace();
                    $df->id = $ok->id_unik;
                    $df->pengguna = $ok->pengguna;
                    $df->nama = $ok->nama;
                    $df->id_chat = "";
                    $this->_redirect('');
                }
            }
            else
            {
                $this->view->pesan = '<strong>Inputan Ada Yang Salah Cok!</strong> Coba Ulangi OK!!';
            }
            
        }
        
        if(isset($_POST['daftar']))
        {
            $nama = $this->getRequest()->getPost('nama');
            $pengguna = $this->getRequest()->getPost('pengguna');
            $katasandi1 = $this->getRequest()->getPost('katasandi1');
            $katasandi2 = $this->getRequest()->getPost('katasandi2');
            $kode = $this->getRequest()->getPost('kode');
            $email = $this->getRequest()->getPost('email');
            $bbm = $this->getRequest()->getPost('bbm');
            $hp = $this->getRequest()->getPost('hp');
            $fb = $this->getRequest()->getPost('fb');
            $tw = $this->getRequest()->getPost('tw');
            $kelas = $this->getRequest()->getPost('kelas');
            $id = $random;
            $foto = $random->warna();
            
            if(!trim($nama) || !trim($pengguna) || !trim($katasandi1) || !trim($katasandi2) || !trim($kode) || !trim($email))
            {
                $this->view->pesanerror = "$foto <strong>Sorry Bro, Itu Masih Ada Kosong!</strong> Jadi Harus Dilengkapi Cok!";
            }
            else
            {
                if($kode == "xirpljancok")
                {
                    if($katasandi2 != $katasandi1) $this->view->pesanerror = "<strong>Konfirmasi Kata Sandi Harus Sama Dengan Kata Sandi Cok!</strong>";
                    else
                    {
                        $katasandiMD = md5($katasandi1);
                        $daftar->daftar($id, $nama, $pengguna, $katasandiMD, $katasandi2, $email, $bbm, $hp, $fb, $tw, $kelas, $foto);
                        $this->_redirect('index/masuk');
                    }
                }
                else $this->view->pesanerror = "<strong>Kode Dari XI-RPL Harus Diisi Sama Dengan Kode Yang Ditetapkan Cok!</strong>, Kalo Ngga Diisi Berarti Lo Orang Yang Tidak Dikenal";
            }
        }
        
    }
    
    public function daftarAction()
    {
        $daftar = new Application_Model_DbTable_Masuk();
        $kelas = new Application_Model_DbTable_Kelas();
        
        $this->view->kelas = $kelas->tampilKelas();
        
        
        $random = new Application_Model_Class_CodeRandom();
        
        $masuk = new Application_Model_DbTable_Masuk();
        if(isset($_POST['masuk']))
        {
                /** // Kirim Email
                $mail = new Zend_Mail();
                $mail->setBodyText('My Nice Test Text');
                $mail->setFrom('azzisarswendo@gmail.com');
                $mail->addTo('kidsattack45@gmail.com');
                $mail->setSubject('TestSubject');
                if($mail->send())  echo 'okkk';
                 */        
            
            $pengguna = $this->getRequest()->getPost('pengguna');
            $katasandi = $this->getRequest()->getPost('katasandi');
            $katasandiMD = md5($katasandi);
            if($ok = $masuk->masuk($pengguna, $katasandiMD))
            {
                if($ok->katasandi1 == $katasandiMD)
                {
                    Zend_Session::start();
                    $df = new Zend_Session_Namespace();
                    $df->id = $ok->id_unik;
                    $df->pengguna = $ok->pengguna;
                    $df->nama = $ok->nama;
                    $df->id_chat = "";
                    $this->_redirect('');
                }
            }
            else
            {
                $this->view->pesan = '<strong>Inputan Ada Yang Salah Cok!</strong> Coba Ulangi OK!!';
            }
            
        }
        
        if(isset($_POST['daftar']))
        {
            $nama = $this->getRequest()->getPost('nama');
            $pengguna = $this->getRequest()->getPost('pengguna');
            $katasandi1 = $this->getRequest()->getPost('katasandi1');
            $katasandi2 = $this->getRequest()->getPost('katasandi2');
            $kode = $this->getRequest()->getPost('kode');
            $email = $this->getRequest()->getPost('email');
            $bbm = $this->getRequest()->getPost('bbm');
            $hp = $this->getRequest()->getPost('hp');
            $fb = $this->getRequest()->getPost('fb');
            $tw = $this->getRequest()->getPost('tw');
            $kelas = $this->getRequest()->getPost('kelas');
            $id = $random;
            $foto = $random->warna();
            
            if(!trim($nama) || !trim($pengguna) || !trim($katasandi1) || !trim($katasandi2) || !trim($kode) || !trim($email))
            {
                $this->view->pesanerror = "$foto <strong>Sorry Bro, Itu Masih Ada Kosong!</strong> Jadi Harus Dilengkapi Cok!";
            }
            else
            {
                if($kode == "xirpljancok")
                {
                    if($katasandi2 != $katasandi1) $this->view->pesanerror = "<strong>Konfirmasi Kata Sandi Harus Sama Dengan Kata Sandi Cok!</strong>";
                    else
                    {
                        $katasandiMD = md5($katasandi1);
                        $daftar->daftar($id, $nama, $pengguna, $katasandiMD, $katasandi2, $email, $bbm, $hp, $fb, $tw, $kelas, $foto);
                        $this->_redirect('index/masuk');
                    }
                }
                else $this->view->pesanerror = "<strong>Kode Dari XI-RPL Harus Diisi Sama Dengan Kode Yang Ditetapkan Cok!</strong>, Kalo Ngga Diisi Berarti Lo Orang Yang Tidak Dikenal";
            }
        }
        
    }
    
    public function keluarAction()
    {
        $storage = new Zend_Session_Namespace();
        $storage->id=null;
        $storage->nama=null;
        $storage->pengguna=null;
        $storage->katasandi=null;
        $storage->katasandiMD=null;
        Zend_Session:: namespaceUnset();
        $this->_redirect('');
    }
    
    public function tentangAction()
    {
        
    }
    
    public function jadwalAction()
    {
        date_default_timezone_set("Asia/Jakarta"); 
        
        /**if (date("h") >= 08 && date("h:i") >= 00 || date("i") < 09 && date("i") < 30) echo 'label label-primary';
        
        if (date("h:i") >= "07:15" || date("h:i") < "08:00") echo 'label label-primary';
        if (date("h:i") >= "08:00" || date("h:i") < "09:30") echo 'label label-primary';
        if (date("h:i") >= "09:30" || date("h:i") < "11:00") echo 'label label-primary';
        if (date("h:i") >= "11:00" || date("h:i") < "120:15") echo 'label label-primary';**/
        
        $kelas = new Application_Model_DbTable_Kelas();
        
        $this->view->kelas = $kelas->tampilKelas();
        $this->view->jadwal = new Application_Model_DbTable_Jadwal();
        
//        if(isset($_POST["save"])){
//            $kelas->input($this->getRequest()->getPost("kelas"));
//        }
        
//        $kode = new Application_Model_Class_CodeRandom();
//        
//        echo $kode;
//        
//        $ll = new Application_Model_DbTable_UserLevel();
//        
//        for($i = 1; $i <= 4; $i++){
//            echo $ll->tampilNama($i)->nama."<br/>";
//        }
        
    }
    
    public function editmateriAction()
    {
        $storage = new Zend_Session_Namespace();
        if(!$storage->id){
            $this->_redirect('index/masuk');
        }
        
        
        $materi = new Application_Model_DbTable_Materi();
        $this->view->user = new Application_Model_DbTable_Masuk();
        $this->view->materi = $materi->tampil();
        
        $idmateri = $this->_getParam('id',0);
        
        $this->view->idmateri = $this->_getParam("id");
        if($idmateri != 0) {
            
            $dbmapel = new Application_Model_DbTable_Mapel();

            $dbmateri = new Application_Model_DbTable_Materi();
            $filtmateri = $dbmateri->ambil($idmateri);
            
            if($filtmateri->user != $storage->id){
                $this->_redirect("index/materi/id/$idmateri");
            }
            
            $form = new Application_Form_Editmateri();
            $this->view->form = $form;

            $form->id->setValue($filtmateri->id_materi);
            $form->judul->setValue($filtmateri->judul);
            $form->isi->setValue($filtmateri->materi);
            $form->mapel->addMultiOption($filtmateri->mapel, $filtmateri->mapel);
            $form->tanggal->addMultiOption($filtmateri->tanggal,$filtmateri->tanggal);
            $form->bulan->addMultiOption($filtmateri->bulan,$filtmateri->bulan);
            $form->tahun->addMultiOption($filtmateri->tahun,$filtmateri->tahun);
            foreach ($dbmapel->tampilMapel() as $rowmapel)
            {
                $form->mapel->addMultiOption($rowmapel->mapel, $rowmapel->mapel);
            }
            for($i = 1; $i <= 31; $i++)
            {
                $form->tanggal->addMultiOption($i, $i);
            }
            $databulan = array('Jan','Feb','Mar','Apr','Mei','Jun','Jul','Agu','Sep','Okt','Nov','Des');
            foreach($databulan as $b)
            {
                $form->bulan->addMultiOption($b, $b);
            }
            for($i = 2014; $i <= date("Y"); $i++)
            {
                $form->tahun->addMultiOption($i, $i);
            }

            if(isset($_POST['simpan']))
            {
                $mapel = $this->getRequest()->getPost('mapel');
                $tanggal = $this->getRequest()->getPost('tanggal');
                $bulan = $this->getRequest()->getPost('bulan');
                $tahun = $this->getRequest()->getPost('tahun');
                $judul = $this->getRequest()->getPost('judul');
                $isi = $this->getRequest()->getPost('isi');
                $id = $this->getRequest()->getPost('id');

                if(!trim($judul) || !trim($isi)) $this->view->pesanerror = '<strong>Oalah Cok Ngga Bisa Nyimpen, Soalnya Inputan Kosong.</strong> Tolong Dilengkapi Cok!';            
                else {

                $dbmateri->editmateri($id, $tanggal, $bulan, $tahun, $mapel, $judul, $isi);
                    $this->view->pesan = '<strong>Udah Berhasil Cok Hahaha, Okeh!</strong> Kalo Mau Liat Klik Tulisan Biru Ini ';
                    $this->view->id = $id;
                    $this->view->judul = $judul;
                }
            }

            if(isset($_POST['hapus']))
            {
                $id = $this->getRequest()->getPost('id');
                $dbmateri->hapusmateri($id);
                $this->_redirect('index/index');
            }
        }
    }
    
    public function profilAction(){
        
        $storage = new Zend_Session_Namespace();
        if(!$storage->id){
            $this->_redirect('index/masuk');
        }
        
        $id = $storage->id;
        
        $profil = new Application_Model_DbTable_Masuk();
        $kelas = new Application_Model_DbTable_Kelas();
        
        $dataProfil = $profil->ambil($id);
        
        $form = new Application_Form_Profil();
        
        $this->view->kelas = $kelas->tampilNama(trim($dataProfil->kelas))->nama;
        $form->id->setValue($dataProfil->id_unik);
        $form->nama->setValue($dataProfil->nama);
        $form->pengguna->setValue($dataProfil->pengguna);
        $form->pass->setValue($dataProfil->katasandi2);
        $form->email->setValue($dataProfil->email);
        $form->bbm->setValue($dataProfil->bbm);
        $form->hp->setValue($dataProfil->hp);
        $form->fb->setValue($dataProfil->fb);
        $form->tw->setValue($dataProfil->tw);
        
        
        $this->view->form = $form;
        
        if(isset($_POST['update']))
	{
            $nama = $this->getRequest()->getPost('nama');
            $pengguna = $this->getRequest()->getPost('pengguna');
            $pass = $this->getRequest()->getPost('pass');
            $email = $this->getRequest()->getPost('email');
            $bbm = $this->getRequest()->getPost('bbm');
            $hp = $this->getRequest()->getPost('hp');
            $tw = $this->getRequest()->getPost('tw');
            $fb = $this->getRequest()->getPost('fb');
            $id = $this->getRequest()->getPost('id');
            $katasandi1 = md5($pass);
            $katasandi2 = $pass;
            
            $storage->nama = $nama;
            $storage->pengguna = $pengguna;
            
            $profil->editProfil($id, $nama, $pengguna, $email, $katasandi1, $katasandi2, $bbm, $hp, $fb, $tw);
            $this->_redirect('index/profil/');
        }
    }
}

