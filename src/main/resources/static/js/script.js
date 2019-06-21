$(document).ready(() =>{
    $.get("/goi",(data)=>{
        $("#goi").text(data.goi);
    }).fail(()=>{
        alert("Error :(");
    });
});