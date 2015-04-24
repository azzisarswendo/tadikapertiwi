<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Str
 *
 * @author azzis
 */
Class Application_Model_Class_Str {
    //put your code here
    public function Emoji($subjek,$url){
        
        $a = array(";","<",">","\"","'","\n","\t", "\\");
        $b = array("&semi;","&lt;","&gt;","&#34;","&CloseCurlyQuote;","<br/>","&nbsp;","&setmn;");
        $subjek = str_replace($a, $b, $subjek);
        
        $emoji = new Application_Model_DbTable_Str();
        $str_a = array();
        $str_b = array();
        foreach ($emoji->showAllEmoji() as $emo){
            $str_a[] = $emo["str_a"];
            $str_b[] = "<img src=".$url.$emo["str_b"].">";
        }
        
        return str_replace($str_a, $str_b, $subjek);
    }
    
    public function singkat($isi, $lenght)
    {
        $chr = '\n';
        $cnt = 2;
        $post = 0;
        $trimmed = FALSE;
        for($i = 1; $i <= $cnt; $i++)
        {
            if($temp = strpos($isi, $chr, $post+1))
            {
                $post = $temp;
                $trimmed = TRUE;
            }
            else 
            {
                $post = strlen($isi)-1;
                $trimmed = FALSE;
                break;
            }
        }

        $isi = substr($isi, 0, $post);

        if(strlen($isi) > $lenght)
        {
            $isi = substr($isi, 0, $lenght);
            $isi = substr($isi, 0, strrpos($isi, ' '));
            $trimmed = TRUE;
        }

        if($trimmed) $isi .= '...';

        return $isi;
    }
}
?>