<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="refresh" content="3">

<script>
    function draw() {
	    var canvas = document.getElementById('myCanvas');
          var ctx = canvas.getContext('2d');
           ctx.clearRect(0, 0, canvas.width, canvas.height);
    var values = [Math.floor((Math.random() * 60)+ 1),Math.floor((Math.random() * 60) + 1),Math.floor((Math.random() * 60)+ 1),Math.floor((Math.random() * 60) + 1),Math.floor((Math.random() * 60)+ 1),Math.floor((Math.random() * 60) + 1),Math.floor((Math.random() * 60)+ 1),Math.floor((Math.random() * 60) + 1),Math.floor((Math.random() * 60) + 1),Math.floor((Math.random() * 60) + 1),Math.floor((Math.random() * 60) + 1),Math.floor((Math.random() * 60) + 1),Math.floor((Math.random() * 60) + 1),Math.floor((Math.random() * 60) + 1),Math.floor((Math.random() * 60) + 1),Math.floor((Math.random() * 60) + 1),Math.floor((Math.random() * 60) + 1),Math.floor((Math.random() * 60) + 1),Math.floor((Math.random() * 60) + 1),Math.floor((Math.random() * 60) + 1),Math.floor((Math.random() * 60) + 1)];
        var width = 40; //bar width
        var X = 50; // first bar position 
        var base = 200;
        for (var i =0; i<values.length; i++) {
            ctx.fillStyle = '#3e8e41'; 
            var h = values[i];
            ctx.fillRect(X,canvas.height - h,width,h);
            X +=  width+15;
            /* text to display Bar number */
            ctx.fillStyle = '#000000';
            ctx.fillText(h+' °C ',X-50,canvas.height - h -10);
        }
            /* Text to display scale */
            ctx.fillStyle = '#000000';
            ctx.fillText('Echelle X : '+canvas.width+' Y : '+canvas.height,800,10);
  
    }
    function reset(){
         var canvas = document.getElementById('myCanvas');
          var ctx = canvas.getContext('2d');
           ctx.clearRect(0, 0, canvas.width, canvas.height);
    }
</script>
</head>
<body onload="javascript:draw()">
	 <canvas id="myCanvas" width="1400" height="500" style="border:1px solid #c3c3c3;">
    </canvas>
				
</body>
</html>