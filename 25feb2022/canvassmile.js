var canvas= document.getElementById("demo");
var c = canvas.getContext('2d');
c.beginPath();
c.fillStyle = "yellow"; 
c.arc(75,75,50,0,Math.PI*2,true);
c.closePath();
c.fill();
c.beginPath();
c.moveTo(110,75);
c.arc(75,75,35,0,Math.PI,false);//smile
c.moveTo(65,65);
c.arc(60,65,5,0,Math.PI*2,true);//eye left
c.moveTo(95,65);
c.arc(90,65,5,0,Math.PI*2,true);//eye right
c.stroke();