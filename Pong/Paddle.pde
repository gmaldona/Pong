class Paddle {
      
      //x and y position of the paddle
      int x, y;
      //width of the paddle
      final int width = 10;
      //height of the paddle
      final int height = 100;
      //velocity up and down
      int up_vel, down_vel;
      int speed = 7;
      //score
      int score;
           
      //constructor function to set the x and y position
      public Paddle(int x, int y) {
            
            //sets the argument to the variables
            this.x = x;
            this.y = y;
            
            up_vel = -speed;
            down_vel = speed;
            
      }
      
      //function that draws the rectangle
      public void show() {
            
            //draws a rectangle at the given x and y
            rect(x, y, width, height);
      }
      
      
      
}