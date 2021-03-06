const rows = 100,
      cols = 300,
      thickness = Math.pow( 80, 2 ),
      spacing = 15,
      margin = 15,
      color = 255,
      drag = 0.5,
      ease = 0.3;

let nbOfParticles = rows * cols;
    
    /*
    
    used for sine approximation, but Math.sin in Chrome is still fast enough :)http://jsperf.com/math-sin-vs-sine-approximation

    B = 4 / Math.PI,
    C = -4 / Math.pow( Math.PI, 2 ),
    P = 0.225,

    */

    let container,
    particle,
    canvas,
    mouse,
    stats,
    list,
    ctx,
    tog,
    dx, dy,
    mx, my,
    d, t, f,
    a, b,
    i, n,
    w, h,
    p, s,
    r, c;

particle = {
  vx: 0,
  vy: 0,
  x: 0,
  y: 0
};

function init() {

  container = document.querySelector( '.playground' );
  canvas = document.createElement( 'canvas' );
  
  ctx = canvas.getContext( '2d' );
  tog = true;
  
  list = [];
  
  w = canvas.width = cols * spacing + margin * 2;
  h = canvas.height = rows * spacing + margin * 2;
  
  for ( i = 0; i < nbOfParticles; i++ ) {
    
    p = Object.create( particle );
    p.x = p.ox = margin + spacing * ( i % cols );
    p.y = p.oy = margin + spacing * Math.floor( i / cols );
    
    list[i] = p;
  }

  container.addEventListener( 'mousemove', function(e) {

    bounds = container.getBoundingClientRect();
    mx = e.clientX - bounds.left;
    my = e.clientY - bounds.top;
    
  });
  
  container.addEventListener( 'mouseleave', function(e) {
    
    mx = 0;
    my = 0;
    
  });
  
  container.appendChild( canvas );
}

function step() {

  if ( tog = !tog ) {
      
    for ( i = 0; i < nbOfParticles; i++ ) {
      
      p = list[i];
      
      d = ( dx = mx - p.x ) * dx + ( dy = my - p.y ) * dy;
      f = -thickness / d;

      if ( d < thickness ) {
        t = Math.atan2( dy, dx );
        p.vx += f * Math.cos(t);
        p.vy += f * Math.sin(t);
      }

      p.x += ( p.vx *= drag ) + (p.ox - p.x) * ease;
      p.y += ( p.vy *= drag ) + (p.oy - p.y) * ease;

    }

  } else {

    b = ( a = ctx.createImageData( w, h ) ).data;

    for ( i = 0; i < nbOfParticles; i++ ) {

      p = list[i];
      b[n = ( ~~p.x + ( ~~p.y * w ) ) * 4] = b[n+1] = b[n+2] = color, b[n+3] = 255;
    }

    ctx.putImageData( a, 0, 0 );
  }

  requestAnimationFrame( step );
}

init();
step();