$(document).ready(() =>{
    $.get("/goi",(data)=>{
        $("#goi").text("Palabra: " + data.goi);
    }).fail(()=>{
        alert("Error :(");
    });
});

$("#again").click((e) =>{
    e.preventDefault();
    const $send = $("#sendContent"),
          $again = $("#againContent"),
          $kaitou = $("#kaitou");
    $.get("/goi",(data)=>{
        $("#goi").text("Palabra: " + data.goi);
        $send.show();
        $again.hide();
        $kaitou.val("");
        $kaitou.prop('disabled',false);
    }).fail(()=>{
        alert("Error :(");
    });
});

$("#send").click((e) => {
    e.preventDefault();
    const $goi = $("#goi"),
          $kaitou = $("#kaitou"),
          $send = $("#sendContent"),
          $again = $("#againContent"),
          $maru = $("#maru")[0],
          $batsu = $("#batsu")[0],
          url = "goi/" + $goi.text().split(":")[1].replace(" ","") + "/kaitou/" + $kaitou.val();
    let msg = "";
    if($kaitou.val() != null && $kaitou.val() != ""){
        $.get(url,(data)=>{
            $send.hide();
            $kaitou.prop('disabled',true);
            
            if(data.meaningResult === "×"){
                msg = "La(s) respuesta(s) correcta(s): "
                $.each(data.answers.split("-"), (i,v) => {
                    msg += v + " ";
                });
                try{
                    $maru.play();
                }catch(e){
                    console.log(e);
                }
            }else if(data.meaningResult === "○"){
                try{
                    $batsu.play();
                }catch(e){
                    console.log(e);
                }
                
            }
            alert(data.meaningResult + "\n " + msg);
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
    //const regex = /^[a-zA-ZñÑáíúéóÁÍÚÉÓ ]*$/,
    const regex = /^[a-zA-ZñÑ　]*$/,
          $kaitou = $("#kaitou");
    let isValid = regex.test(e.key);
    if(!isValid){
        e.preventDefault();
    }else if($kaitou.hasClass("is-invalid")){
      $kaitou.removeClass("is-invalid");
    }
});