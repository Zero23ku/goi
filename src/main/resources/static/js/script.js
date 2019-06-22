$(document).ready(() =>{
    $.get("/goi",(data)=>{
        $("#goi").text("Palabra: " + data.goi);
    }).fail(()=>{
        alert("Error :(");
    });
});

$("#send").click((e) => {
    e.preventDefault();
    const $goi = $("#goi"),
          $kaitou = $("#kaitou"),
          url = "goi/" + $goi.text() + "/kaitou/" + $kaitou.val();
    if($kaitou.val() != null && $kaitou.val() != ""){
        $.get(url,(data)=>{
            alert(data.meaningResult);
        }).fail(()=>{
            alert("Error al obtener la respuesta :(")
        });
    }else{
        $kaitou.addClass("is-invalid");
        $kaitou.effect("shake");
    }
});

$("#kaitou").keypress((e) =>{
    const regex = /^[a-zA-ZñÑáíúéóÁÍÚÉÓ ]*$/,
          $kaitou = $("#kaitou");
    let isValid = regex.test(e.key);
    if(!isValid){
        e.preventDefault();
    }else if($kaitou.hasClass("is-invalid")){
      $kaitou.removeClass("is-invalid");
    }
});