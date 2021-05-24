$(document).ready(function() {
var url =window.location.pathname;
if(url=="/stockinfo/main"){
    $.ajax({
        type: "POST",
        url: "/stockinfo/data",
        dataType: "json",
        success: function(data) {
           var one= data.html1;
           var two= data.html2;
           var three= data.html3;

           $('#one').append(one);
           $('#one *').removeAttr('href');
           $('#one').children().eq(0).remove();
           $('#one').children().eq(0).remove();
           
           $('#two').append(two);
           $('#two *').removeAttr('href')
           $('#two').find('.Nnavi').remove();
           $('#two').children().eq(0).remove();
           $('#two').children().eq(0).remove();
           $('#two').children().eq(0).removeAttr('class');
           $('#two').children().eq(0).attr('class','type_1');
           
           $('#three').append(three);
           $('#three *').removeAttr('href');
           $('#three').children().eq(0).remove();
           $('#three').children().eq(0).remove();
  
          
                
            
        },
        error: function(request, error) {
            alert("fail");
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }

    });
    };
  
  
    $(".list-group-item").hover(function() {
    var isHovered = $(this).is(":hover");
  if (isHovered) {
    $(this).children("ul").stop().slideDown(300);
  } else {
    $(this).children("ul").stop().slideUp(300);
  }
 });

  
    

    
});