<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ChatController
 *
 * @author azzis
 */
class ChatController extends Zend_Controller_Action{
    //put your code here
    
    public function init() {
        Zend_Session::start();
        $storage = new Zend_Session_Namespace();
        if(!$storage->id){
            $this->_redirect('index/masuk');
        }
     
        if (isset($_POST['lanjut'])) {
                Zend_Session::start();
            $ya = new Zend_Session_Namespace();
                $ya->lanjut = 'ya';
        }

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
        $controller = $this->_getParam("controller", null);
        $this->view->chat__ = $controller; 
        
        
        
        $storage = new Zend_Session_Namespace();
        
        $this->view->session = $storage->id_chat;
    }
    
    public function indexAction(){
        $lanjut = new Zend_Session_Namespace();
        $onn = new Application_Model_DbTable_UserOn();
        
        
        
        /**$a =  APPLICATION_PATH;
        $cwd = $_SERVER['REQUEST_URI'];
        $cwd = substr($cwd, 0, strrpos($cwd, '/' + 1));

        $c = $a;
        global $cwd;
        $d = opendir($c);
        while($f = readdir($d)) :
            if(strpos($f, '*.php') === 0) continue;
            $ff = $c . '/' . $f;    
            $no++;
            $filename = "$cwd$ff";
            $size = filesize($filename);
            echo '<br/>'.$f;
        endwhile;
        $aaa = new Application_Model_DbTable_Str();
        
        foreach ($aaa->showAllEmoji() as $aaaa){
            echo "<input type='checkbox' /> ".$aaaa["str_b"]. " :&nbsp;<img src='/xirpl/public_html/img".$aaaa['str_b']."'/><br/>";
        }*****/
        $this->view->Emoji = new Application_Model_DbTable_Str();
    }
    
    public function getAction(){
        $this->view->CodeRandom = new Application_Model_Class_CodeRandom();
        $this->view->UserDb = new Application_Model_DbTable_UserData();
        
        $this->view->OnLine = new Application_Model_DbTable_UserOn();
        
        //kalau di buka
        if(!isset($_REQUEST["cmd"]))
        $this->_redirect("chat");
        
        $this->view->Chat = new Application_Model_DbTable_Chat();
        $this->view->ChatKonten = new Application_Model_DbTable_ChatKonten();
        
        $this->view->Emoji = new Application_Model_Class_Str();
        
        $storage = new Zend_Session_Namespace();
        
        $this->view->session = $storage->id_chat;
        
        
        $this->view->EmojiA = new Application_Model_DbTable_Str();
    }
}
