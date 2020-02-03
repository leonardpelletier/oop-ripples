ArrayList<Ripple> myRipples;

void setup() {
   size(800,800); 
   noFill();

   myRipples = new ArrayList<Ripple>();
   
   int i = 0;
   while (i < 100) {
     myRipples.add( new Ripple() );
     i = i + 1;
   }
}

void draw() {
   background(0);
   
   int i = 0;
   while (i < 100) {
     Ripple r = myRipples.get(i);
     r.act();
     r.show();
     i = i + 1;
   }
}
