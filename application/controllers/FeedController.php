<?php
class FeedController extends Zend_Controller_Action{
    public function init(){
        $materi = new Application_Model_DbTable_Materi();
        $userM = new Application_Model_DbTable_Masuk();
        $Materi = $materi->tampil();
        $str = new Application_Model_Class_Str();
        $feed = new Zend_Feed_Writer_Feed();
        $feed->setGenerator("Panjat Pinang", null, "http://tadikapertiwi.com");
        $feed->setTitle('Tadika Pertiwi');
        $feed->setLanguage("en-us");
        $feed->setLink('http://www.tadikapertiwi.com');
        $feed->setFeedLink('http://www.tadikapertiwi.com/feed', 'rss');
        $feed->setDescription('Sekolah Tadika Pertiwi');
        $feed->addAuthor(array(
            'name'  => 'Panjat Pinang',
            'uri'   => 'http://panjatpinang.tadikapertiwi.com',
            'email'   => 'admin@tadikapertiwi.com',
        ));
        /**
        * Add one or more entries. Note that entries must
        * be manually added once created.
        */
        if($this->_getParam("id") == null){
            foreach ($Materi as $mm){
                $entry = $feed->createEntry();
                $entry->setTitle($mm->judul);
                $entry->setLink('http://tadikapertiwi.com/feed/rss/id/'. $mm->id_materi);
                $entry->addAuthor(array(
                    'name'  => $userM->ambil($mm->user)->nama,
                    'email'  => null,
                    'url'  => null,
                ));
                $entry->setDateModified(time());
                $entry->setDateCreated(time());
                $cari = array('/\&lt;/','/\&gt;/','/\<\/[^>]*\>/sU','/\<[^>]*\>/sU', '/\<[^>]*\/\>/sU', '/\&[^>]*;/sU');
                $ganti = array("<", ">", "", "", "", "");
                $mat = preg_replace($cari, $ganti, $mm->materi);
                $isi =  trim($str->singkat(trim($mat), 100));
                
                $entry->setDescription("$isi");
                $entry->setContent(
                    $mat
                );
                $feed->addEntry($entry);
            }
$out = $feed->export('rss');
echo $out;
        }
        else {        
            $id = $this->_getParam('id');
            $dbmateri = new Application_Model_DbTable_Materi();
            $mm = $dbmateri->ambil($id);
            if($mm){
            $entry = $feed->createEntry();
            $entry->setTitle($mm->judul);
            $entry->setLink('http://tadikapertiwi.com/feed/rss/id/'. $mm->id_materi);
            $entry->addAuthor(array(
                'name'  => $userM->ambil($mm->user)->nama,
                'email'  => null,
                'url'  => null,
            ));
            $entry->setDateModified(time());
            $entry->setDateCreated(time());
            
            
                
                $cari = array('/\&lt;/','/\&gt;/','/\<\/[^>]*\>/sU','/\<[^>]*\>/sU', '/\<[^>]*\/\>/sU', '/\&[^>]*;/sU');
                $ganti = array("<", ">", "", "", "", "");
                $mat = preg_replace($cari, $ganti, $mm->materi);
                $isi =  trim($str->singkat(trim($mat), 100));
            
            $entry->setDescription($isi);
            $entry->setContent(
                $mat
            );
            $feed->addEntry($entry);

            $out = $feed->export('rss');

            print $out;
            }
            else {
                header("location:/feed");
            }
        }
        
        /**
        * Render the resulting feed to Atom 1.0 and assign to $out.
        * You can substitute "atom" with "rss" to generate an RSS 2.0 feed.
        */
    }
    
    public function rssAction(){
        
    }
    
    public function indexAction(){
        
    }
}
