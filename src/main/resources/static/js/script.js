$(document).ready(() =>{
    $.get("/goi",(data)=>{
        $("#goi").text("Palabra: " + data.goi);
    }).fail(()=>{
        alert("Error :(");
    });
});

$("#again").click((e) =>{
    e.preventDefault();
    const $send = $("#send"),
          $again = $("#again");
    $.get("/goi",(data)=>{
        $("#goi").text("Palabra: " + data.goi);
        $send.show();
        $again.hide();
    }).fail(()=>{
        alert("Error :(");
    });
});

$("#send").click((e) => {
    e.preventDefault();
    const $goi = $("#goi"),
          $kaitou = $("#kaitou"),
          $send = $("#send"),
          $again = $("#again"),
          url = "goi/" + $goi.text().split(":")[1].replace(" ","") + "/kaitou/" + $kaitou.val();
    if($kaitou.val() != null && $kaitou.val() != ""){
        $.get(url,(data)=>{
            $send.hide();
            alert(data.meaningResult);
            $again.show();
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