class Ball {
      
      //x and y position of the ball
      int x = 250;
      int y = 250; 
      //radius of the ball
      final int radius = 15;
      int x_vel, y_vel;
      int speed = 5;
      
      public Ball() {
      
            int xrand = (int)random(1, 3);
            int yrand = (int)random(1, 3);
            
            if (xrand == 1) {
                  x_vel = -speed;
            }      
            else if (xrand == 2) {
                  x_vel = speed;
            }
            if (yrand == 1) {
                  y_vel = -speed;
            }
            else if (yrand == 2) {
                  y_vel = speed;
            }
      
            
      }
      
      //function that draws the ball
      public void show() {
            
            //draws a ball at a given x and y
            ellipse(x, y, radius, radius); 
            
      }
      
      public void movement() {
            x += x_vel;
            y += y_vel;
            
            if (y <= 5 || y >= 295) {
                  y_vel *= -1 ;
            }
      }
      
      
}