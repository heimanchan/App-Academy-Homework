document.addEventListener("DOMContentLoaded", function(){
  const canvas = getElementById("mycanvas");
  canvas.height = 500;
  canvas.width = 500;

  const ctx = canvas.getContext('2d');
  ctx.fillStyle = 'blue';
  ctx.fillRect(0, 0, 400, 200);
  ctx.stroke();

  ctx.beginPath();
  ctx.strokeStyle = 'red';
  ctx.arc(500, 500, 30, 0, 2 * Math.PI);
  ctx.lineWidth = 5;
  ctx.stroke();
  

});

 