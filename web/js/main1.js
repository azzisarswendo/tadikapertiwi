/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function json(pesan){
    return eval('(' + pesan + ')');
}

function CSS(){
    height = $(window).height();
    width = $(window).width();
    bgSize = width + "px " + height + "px";
    head = $(".head").height();
    body1 = $(".body1").height();
    $(".main").css({
        "height": height,
        "background-size": bgSize,
    });
    $(".kiri, .kanan").css({
        "height": height
    });
    
    $(".kiri .body, .kanan .body").css({
        "height": (height - body1) - 350
    });
    
    //$("html").keydown(function(data){
      //  $("")
    //});
     
}

function MySql(eventa, id1, id2){
    if(eventa == "click"){
        alert(id1);
    }
}

function addChat(ida, idb){
    
    path_ = $(".uri").val();
    $.get(path_, {
        cmd : "chack",
        ida : ida,
        idb : idb
    }, function(data){
        Data = json(data);
        $(".kanan .body1 h2").html(Data.nama+"<input type='hidden' class='idb' value='" + Data.idb + "'>");
        $(".kanan .body").html(Data.pesan);
    });
}

function kirimPesan(ida, idb, isi){
    isi = $(".input").val();
    if(idb == null || $.trim(isi) == ""){
        alert("SELECT USER DULU, BARU BISI KIRIM PESAN DAN JANGAN PESAN KOSONG!!!!!"+$.trim(isi));
    }
    else if($.trim(isi) == "") 
        alert("SELECT USER DULU, BARU BISI KIRIM PESAN DAN JANGAN PESAN KOSONG!!!!!"+$.trim(isi));
    else{
        path_ = $(".uri").val();
        $.get(path_, {
            cmd : "send",
            ida : ida,
            idb : idb,
            isi : isi
        }, function(){
            addChat(ida, idb);
        });
        $(".input").val("");
        $(".kanan .body").scroll(function(){
            
        });
    }
}


function user(){
    
    //USERS
    path_ = $(".uri").val();
    $.get(path_, {
        cmd : "users"
    }, function(data){
        $(".users").html(data);
    });
}

function online(){
    path_ = $(".uri").val();
    $.get(path_, {
        cmd : "online"
    });
}

function emo(){
    path_ = $(".uri").val();
    $.get(path_, {
        cmd : "emoji"
    }, function(data){
        $(".emoSmua").html(data);
    });
}
