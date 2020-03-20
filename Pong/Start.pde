class Start {
      
      //creates a new ball
      Ball ball = new Ball();
      //creates paddle 1
      Paddle p1 = new Paddle(10, 75);
      //creates paddle 2 
      Paddle p2 = new Paddle(480, 75);
      //the speed of the paddle
      final int player_paddle_speed = 7; 
      final int computer_paddle_speed = 7;
      int computer_diff;
      
      
      //function that draws all of the assets
      public void play(int diff) {
            computer_diff = diff;
            //paddle 1 is shown
            p1.show();
            //paddle 2 is shown
            //ball is shown
            ball.show();
            p2.show();
            ball.movement();
            paddle_movement("Player", 1);
            paddle_movement("Computer", computer_diff);
            respawn_ball();

            collision_detection();
            noStroke();
            fill(255);
            rect(250, 0, 2, 300);
            
           
      }
      
      //function that controls movement
      public void paddle_movement(String input, int playerNumber) {
            //if a player is controlling the paddle
            if (input == "Player") {
                  if (p1.y <= 10) {
                        p1.up_vel = 0;
                  }
                  else {
                        p1.up_vel = -player_paddle_speed;
                  }
                  if (p1.y >= 190) {
                        p1.down_vel = 0; 
                  }
                  else {
                        p1.down_vel = player_paddle_speed;
                  }
                  //if the w key is pressed then the paddle will go up
                  if (key == 'w') {
                        //increases the decreases y value
                        p1.y += p1.up_vel;         
                  }
                  //if the s key is pressed then the paddle will go down
                  else if (key == 's') {
                        //increases the paddles y value
                        p1.y += p1.down_vel;
                  }     
            }
            else if (input == "Computer") {
                              
                  if (playerNumber == 1) {
                        p2.y += p2.speed;
                        if (p2.y <= 10 || p2.y >= 190) {
                             p2.speed *= -1;
                        }
                  }
                  else if (playerNumber == 2) {
                        if (p1.y <= 10) {
                              p1.up_vel = 0;
                        }
                        else {
                              p1.up_vel = -computer_paddle_speed;
                        }
                        if (p1.y >= 190) {
                              p1.down_vel = 0; 
                        }
                        else {
                              p1.down_vel = computer_paddle_speed;
                        }
                        if (p1.y + (p1.height / 2) < ball.y - ball.radius) {
                              p1.y += p1.down_vel;
                        }
                        else if (p1.y + (p1.height / 2) > ball.y + ball.radius) {
                              p1.y += p1.up_vel;
                        }
                  }
                  else if (playerNumber == 3) {
                        
                        if (p2.y <= 10) {
                              p2.up_vel = 0;
                        }
                        else {
                              p2.up_vel = -computer_paddle_speed;
                        }
                        if (p2.y >= 190) {
                              p2.down_vel = 0; 
                        }
                        else {
                              p2.down_vel = computer_paddle_speed;
                        }
                        if (p2.y + (p2.height / 2) < ball.y - ball.radius) {
                              p2.y += p2.down_vel;
                        }
                        else if (p2.y + (p2.height / 2) > ball.y + ball.radius) {
                              p2.y += p2.up_vel;
                        } 
                  }    
            }
      }
      
      public void collision_detection() {
            
            int rand = (int)random(1, 3);
            
            if (ball.y >= p1.y && ball.y <= p1.y + p1.height) {
                  if (ball.x >= p1.x && ball.x <= p1.x + p1.width + 5) {
                        ball.x_vel *= -1;
                        
                        if (rand == 1) {
                              ball.y_vel *= 1;
                        }      
                        else if (rand == 2) {
                              ball.y_vel *= -1;
                        }
                  }
            }
            if (ball.y >= p2.y && ball.y <= p2.y + p2.height) {
                  if (ball.x >= p2.x && ball.x <= p2.x + p2.width + 5) {
                        ball.x_vel *= -1;
                        
                        if (rand == 1) {
                              ball.y_vel *= 1;
                        }      
                        else if (rand == 2) {
                              ball.y_vel *= -1;
                        }
                  }
            }
            
      }
      
      public void respawn_ball() {
            
            if (ball.x <= 0) {
                  score(2);
                  ball = new Ball();    
            }
            else if (ball.x >= 500) {
                  score(1);
                  ball = new Ball();
            }
            else {
                  score(0);
            }
            
      }
      
      public void score(int player) {
            if (player == 0)  {
                  fill(255);
            }
            else if (player == 1) {
                  p1.score ++;
                  fill(0, 255, 0);
            }
            else if (player == 2) {
                  p2.score ++;
                  fill(255, 0, 0);
            }
            textSize(30);
            text(p1.score, 205, 150); 
            text(p2.score, 280, 150);     
      }
}
