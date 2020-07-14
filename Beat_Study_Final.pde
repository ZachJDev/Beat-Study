import processing.sound.*;
SinOsc sine, sine1, sine2, sine3, sine4, sine5;

int x = #000000;
int x1 = #010000;
int x2 = #000100;
int y = #000000;
int y1 = #010000;
int y2 = #000100;
int z = #000000;
int z1 = #010000;
int z2 = #000100;
int a = #000000;
int a1 = #010000;
int a2 = #000100;
int b = #000000;
int b1 = #010000;
int b2 = #000100;
int c = #000000;
int c1 = #010000;
int c2 = #000100;
int bw = 255; //background
int M = 3; //Base Step Count
//int CE = width/2; //Circle Constant
//int CE1 = height/2; //Circle Constant
int al = 10; //alpha
int f = 100;

int freq = f+1; //frequency
int freq1 = f; //frequency
int freq2 = f+1; //frequency
int freq3 = f; //frequency
int freq4 = f+1; //frequency
int freq5 = f; //frequency


void setup() {
  fullScreen();
  frameRate(60);
  background(0);
  
  sine = new SinOsc(this);
  sine1 = new SinOsc(this);
  sine2 = new SinOsc(this);
  sine3 = new SinOsc(this);
  sine4 = new SinOsc(this);
  sine5 = new SinOsc(this);
  
  sine.set(freq, .1, 0, -1);
  sine1.set(freq1, .1, 0, 1);
  sine2.set(freq2, .1, 0, -1);
  sine3.set(freq3, .1, 0, 1);
  sine4.set(freq4, .1, 0, -1);
  sine5.set(freq5, .1, 0, 1);
  
  sine.play();
  sine1.play();
  sine2.play();
  sine3.play();
  sine4.play();
  sine5.play();
  
}

void draw() {
  
  int CE = width/2; //Circle Constant
  int CE1 = height/2; //Circle Constant
  
  if (freq >= 500) {
    freq = 0;
  }
  if (freq1 >= 500) {
    freq1 = 0;
  }
  if (freq2 >= 500) {
    freq2 = 0;
  }
  if (freq3 >= 500) {
    freq3 = 0;
  }
  if (freq4 >= 500) {
    freq4 = 0;
  }
  if (freq5 >= 500) {
    freq5 = 0;
  }

  ellipseMode(RADIUS);

 
  noStroke();
   
 //////////////////////////// //Circle A x
  fill(x, al);
  ellipse(CE, CE1, 1005, 1005);
  
  if (x >= #ffffff) {
    x = #000000;
    
  }
  if (frameCount % 12 == 0) {
    x1 = x1 * M;
    x = x + x1;
  }
  if (frameCount % 13 == 0) {
    x2 = x2 * M;
    x = x + x2;
  }
    x = x + M;
  


   if (frameCount % (100*60) == 0) {
     sine.freq(freq);
     freq += 1;
   }

  
  ///////////////////////////////Circle B y
  fill(y , al);
  ellipse(CE, CE1, 850, 850);
  
  if (y >= #ffffff) {
   if (x == #000000){
     y = #000000;
   }else {
     y = #ffffff; 
    }
  } if (frameCount % 10 == 0) {
    y1 = y1 * 2 * M;
    y = y + y1;
  }
  if (frameCount % 11 == 0) {
    y2 = y2 * 2 * M;
    y = y + y2;
  }
    y = y + (2 * M);
  
  

  
  if (frameCount % (80*60) == 0) {
     sine1.freq(freq1);
     freq1 = freq1 + (2);
   }
  
  //////////////////////////////////Circle C z
  fill(z, al);
  ellipse(CE, CE1, 700, 700);
  
  if (z >= #ffffff) {
    if (x == #000000){
      z = #000000;
    }else {
      z = #ffffff; 
    }
  } if (frameCount % 8 == 0) {
    z1 = z1 * 3 * M;
    z = z + z1;
  }
  if (frameCount % 9 == 0) {
    z2 = z2 * 3 * M;
    z = z + z2;
  }
    z = z + (3 * M);
  
if (frameCount % (50*60) == 0) {
     sine2.freq(freq2);
     freq2 = freq2 + (3);
   }
  
 /////////////////////////////// //Circle D a
  fill(a, al);
  ellipse(CE, CE1, 550, 550);
  
  if (a >= #ffffff) {
   if (x == #000000){
      a = #000000;
    }else {
      a = #ffffff; 
    }
  }
   if (frameCount % 6 == 0) {
    a1 = a1 * 4 * M;
    a = a + a1;
  }
  if (frameCount % 7 == 0) {
    a2 = a2 * 4 * M;
    a = a + a2;
  }
    a = a + (4 * M);
  
  if (frameCount % (40*60) == 0) {
     sine3.freq(freq3);
     freq3 = freq3 + (4);
   }

  ///////////////////////////////////// Circle E b
  fill(b, al);
  ellipse(CE, CE1, 300, 300);
  
  if (b >= #ffffff) {
    if (x == #000000){
      b = #000000;
    }else {
      b = #ffffff; 
    }
  }
   if (frameCount % 4 == 0) {
    b1 = b1 * 5 * M;
    b = b + b1;
  }
  if (frameCount % 5 == 0) {
    b2 = b2 * 5 * M;
    b = b + b2;
  }
    b = b +  (5 * M);
  
  
  if (frameCount % (20*60) == 0) {
     sine4.freq(freq4);
     freq4 = freq4 + (5);
   }
  ///////////////////////////////////////Circle F c
  fill(c, al);
 ellipse(CE, CE1, 150, 150);
 
 if (c >= #ffffff) {
    if (x == #000000){
      c = #000000;
    }else {
      c = #ffffff; 
    }
    
 }
 if (frameCount % 2 == 0) {
    c1 = c1 * 6 * M;
    c = c + c1;
  }
 if (frameCount % 3 == 0) {
    c2 = c2 * 6 * M;
    c = c + c2;
  }
    c = c + (6 * M);
  
 if (frameCount % (600) == 0) {
     sine5.freq(freq5);
     freq5 = freq5 + (6);
   }
 
 
 
}




// FOR PAUSING / PLAYING

void keyPressed() {
  noLoop();
  sine.stop();
}

void mousePressed() {
  loop();
  sine.stop();
}



  