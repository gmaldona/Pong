
class Menu {
      
      int windowNum = 0;
      int computer_diff;
      int startSize = 25;
      
      Start start = new Start(); 
      
      public void showWindow() {
            
            if (windowNum == 0) {
                  
                  titleScreen();
                  
            }
            else if (windowNum == 1) {
                  
                  mainMenu(); 
                  
            }
            else if (windowNum == 2) {
                  
                  start.play(computer_diff);
                  
            }
            
      }
      
      public void titleScreen() {
            
            textSize(30);
            text("ULTIMATE", 175, 40);
            text("PONG", 210, 80);
            
            textSize(startSize);
            text("START", 215, 150);
            
            if (mousePressed == true){
                  if (mouseX >= 215 && mouseX <= 295) {
                        if (mouseY >= 130 && mouseY <= 150) {
                              windowNum = 1;
                        }
                  }
            }
            
      }
      
      public void mainMenu() {
            //draws the buttons for the stats window 
            fill(80);
            rect(100, 25, 300, 100);
            rect(100, 175, 300, 100);
            
            //draws text on the buttons draw
            fill(255);
            textSize(12);
            text("EASY COMPUTER", 200, 80);
            text("CHALLENGING COMPUTER", 175, 235);
            
            if (mousePressed == true) {
                   
                  if (mouseY > 25 && mouseY < 125) {
                        if (mouseX > 100 && mouseX < 400) {
                              computer_diff = 1;
                              windowNum = 2;
                        }
                  }
                  
                  if (mouseY > 175 && mouseY < 275) {
                        if (mouseX > 100 && mouseX < 400) {
                              computer_diff = 3;
                              windowNum = 2;
                        }
                        
                  }
            }
      }
}
