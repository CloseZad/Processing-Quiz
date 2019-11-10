
//Sound and Audio
import ddf.minim.*; //To add sound 

AudioPlayer player;//Audio will be used in the file, using Minim
Minim minim;    //Audio player for processing, please download before installing, go to 'Sketch' > 'Import Library...' > 'Add Library...' > Search 'Minim' > Install Minim

//Initial Screen and Quiz setup
PFont font; //Font used
int screen = 0; //screens 
int correctScore = 0;  //Score of player
PImage PEW; //Background on splash page
PImage cpu; //Brain Question image
PImage motherboard; //Circuit question image
PImage Canada; //Western question image





void setup() {
  size(1280, 720);
  PEW=loadImage("Pewdiepie.jpg");   //Background Image of Splash Screen
  cpu = loadImage("cpu.png");
  motherboard = loadImage("motherboard.png");
  Canada = loadImage("Canada.gif");
  
//Font setup
  font = createFont("CNN.TTF", 32); //Font used
}




//Multiple Choice button and answer setup
void handleMultipleChoiceResponse(char option1LowerCase, char option2LowerCase, char option3LowerCase, char option4LowerCase,   
  char option1UpperCase, char option2UpperCase, char option3UpperCase, char option4UpperCase, 
  char correctOptionLowerCase, char correctOptionUpperCase) {
 
 //Question answering mechanic function
  if ((keyPressed == true) && ((key == option1LowerCase) || (key == option1UpperCase))) {
    if (key == correctOptionLowerCase || key == correctOptionUpperCase) {
      correctScore = correctScore + 1;
    } else {
      correctScore = correctScore + 0;
    }
  } else if ((keyPressed == true) && ((key == option2LowerCase) || (key == option2UpperCase))) {
    if (key == correctOptionLowerCase || key == correctOptionUpperCase) {
      correctScore = correctScore + 1;
    } else {
      correctScore = correctScore + 0;
    }
  } else if ((keyPressed == true) && ((key == option3LowerCase) || (key == option3UpperCase))) {
    if (key == correctOptionLowerCase || key == correctOptionUpperCase) {
      correctScore = correctScore + 1;
    } else {
      correctScore = correctScore + 0;
    }
  } else if ((keyPressed == true) && ((key == option4LowerCase) || (key == option4UpperCase))) {
    if (key == correctOptionLowerCase || key == correctOptionUpperCase) {
      correctScore = correctScore + 1;
    } else {
      correctScore = correctScore + 0;
    }
  }

  if ((keyPressed == true) && ((key == option1LowerCase) || (key == option1UpperCase))) {
    screen = screen + 1;
  } else if ((keyPressed == true) && ((key == option2LowerCase) || (key == option2UpperCase))) {
    screen = screen + 1;
  } else if ((keyPressed == true) && ((key == option3LowerCase) || (key == option3UpperCase))) {
    screen = screen + 1;
  } else if ((keyPressed == true) && ((key == option4LowerCase) || (key == option4UpperCase))) {
    screen = screen + 1;
  }
}









//Start Screen Setup
void draw () {
  background(loadImage("prettynoice.jpg"));
  
  
  
  //splash screen = 0
  if (screen == 0) {
    image(PEW, 0, 0);
    fill(255);
    textFont(font);
    textSize(30);
    text("Welcome to the quiz, press the space bar to start, or choose a song", 260, 280);
    fill(0);
    rect(505, 300, 100, 50);   //music choice boxes
    rect(630, 300, 100, 50);
    fill(#D33535);
    textSize(20);
    text("SICKO MODE", 505, 335);
    text("MO BAMBA", 635, 335);
    
    fill(#8EE50E);
    ellipse(mouseX, mouseY, 20, 20);   //Cursor

    if ((mousePressed == true) && (mouseX >= 505 && mouseX <= 605 && mouseY >= 00 && mouseY <= 350)) {    //Clickable answer based on cursor location
        minim = new Minim(this);
  player = minim.loadFile("sicko mode.mp3", 2048); //Music throughout quiz
  player.play();
    }
    
    
    if ((mousePressed == true) && (mouseX >= 630 && mouseX <= 730 && mouseY >= 300 && mouseY <= 350)) {    //Clickable answer based on cursor location
        minim = new Minim(this);
  player = minim.loadFile("mo bamba.mp3", 2048); //Music throughout quiz
  player.play();
    }

   

    if ((mousePressed == true) && (mouseX >= 505 && mouseX <= 605 && mouseY >= 300 && mouseY <= 350)) {   
      screen = screen +1;
    }

    if ((mousePressed == true) && (mouseX >= 630 && mouseX <= 730 && mouseY >= 300 && mouseY <= 350)) {
     screen = screen +1;
    }
 
 
  }





  //SplashScreenContinue
  if (keyPressed && screen==0) {
    screen = screen + 1; 
  }

//First Question screen
  //first question screen = 1
  if (screen == 1) {
    textSize(25);
    fill(0);
    rect(300,175,700,60);
    rect(300,270,350,100); 
    fill(255);
    text("First question, what does RAM stand for?", 305, 200);
    text("Press the corresponding key to the answer you wish to select", 305, 230);
    textSize(25);
    text("A. Random Accessible Memorial", 310, 300);
    text("B. Retro Access Memory", 310, 320);
    text("C. Retry All Mistakes", 310, 340);
    text("D. Random Access Memories", 310, 360);
    textSize(50);
    fill(#D33535);
   text("Score", 100, 50);
   text(correctScore, 250, 50);

    handleMultipleChoiceResponse('a', 'b', 'c', 'd', 'A', 'B', 'C', 'D', 'd', 'D');
  }


  //Second Question Screen
  if (screen == 2) {
    textSize(25);
    fill(0);
    rect(300,175,460,40);
    rect(300,270,100,100);
    fill(255);
    text("2nd question, how many GB are in 2.3 TB?",305, 200);
    textSize(25);
    text("E. 230", 310, 300);
    text("F. 23", 310, 320);
    text("G. 2300", 310, 340);
    text("H. 2.3", 310, 360);
    textSize(50);
    fill(#D33535);
   text("Score", 100, 50);
   text(correctScore, 250, 50);

    handleMultipleChoiceResponse('e', 'f', 'g', 'h', 'E', 'F', 'G', 'H', 'g', 'G');
  }


  //Third Question Screen
  if (screen == 3) {
    textSize(25);
    fill(0);
    rect(300,175,550,40);
    rect(300,270,200,100);
    fill(255);
    text("3rd question, what is the brain of the computer?", 305, 200);
    textSize(25);
    text("I. CPU", 310, 300);
    text("J. VideoCard", 310, 320);
    text("K. RAM", 310, 340);
    text("L. Dan Cassin", 310, 360);
    image(cpu, 750, 300);
    textSize(50);
    fill(#D33535);
   text("Score", 100, 50);
   text(correctScore, 250, 50);
   

    handleMultipleChoiceResponse('i', 'j', 'k', 'l', 'I', 'J', 'K', 'L', 'l', 'L');
  }
 
 //Fourth question Screen
  if (screen == 4) {
    textSize(25);
    fill(0);
    rect(300,175,800,40);
    rect(300,270,200,100);
    fill(255);
    text("4th question, what is the largest circuit board in the computer called? ", 305, 200);
    textSize(25);
    text("M. Fatherboard", 310, 300);
    text("N. Motherboard", 310, 320);
    text("O. Billboard", 310, 340);
    text("P. Processboard", 310, 360);
    image(motherboard, 750, 300);
    textSize(50);
    fill(#D33535);
   text("Score", 100, 50);
   text(correctScore, 250, 50);


    handleMultipleChoiceResponse('m', 'n', 'o', 'p', 'M', 'N', 'O', 'P', 'n', 'N');
  }

  //Fifth Question Screen
  if (screen == 5) {
    textSize(25);
    fill(0);
    rect(300,175,700,40);
    rect(300,270,200,100);
    fill(255);
    text("5th question, what storage system is online and not physical? ", 305, 200);
    textSize(25);
    text("Q. Sky", 310, 300);
    text("R. Online", 310, 320);
    text("S. Cloud", 310, 340);
    text("T. Winrar", 310, 360);
    textSize(50);
    fill(#D33535);
   text("Score", 100, 50);
   text(correctScore, 250, 50);

    handleMultipleChoiceResponse('q', 'r', 's', 't', 'Q', 'R', 'S', 'T', 's', 'S');
  }

 //Sixth Question Screen
  if (screen == 6) {
    textSize(25);
    fill(0);
    rect(300,175,800,40);
    rect(300,270,100,100);
    fill(255);
    text("6th question (true or false), Apple computers come with the windows OS. ", 310, 200);
    textSize(25);
    text("T. True", 310, 300);
    text("F. False", 310, 320);
    textSize(50);
    fill(#D33535);
   text("Score", 100, 50);
   text(correctScore, 250, 50);

    if ((keyPressed == true) && ((key == 't') && (screen == 6)|| (key == 'T') && (screen == 6))) {
      correctScore = correctScore - 1;
    }

    if ((keyPressed == true) && ((key == 'f') && (screen == 6)|| (key == 'F') && (screen == 6))) {
      correctScore = correctScore + 1;
    }


    if ((keyPressed == true) && ((key == 't') && (screen == 6)|| (key == 'T') && (screen == 6))) {
      screen = screen + 1;
    }
    if ((keyPressed == true) && ((key == 'f') && (screen == 6)|| (key == 'F') && (screen == 6))) {
      screen = screen + 1;
    }
  }

  //Seventh Question Screen
  if (screen == 7) {
    textSize(25);
    fill(0);
    rect(300,175,700,40);
    rect(300,270,200,100);
    fill(255);
    text("7th question, defragmentation involves rearranging data. ", 305, 200);
    textSize(25);
    text("1. True", 310, 300);
    text("2. False", 310, 320);
    textSize(50);
    fill(#D33535);
   text("Score", 100, 50);
   text(correctScore, 250, 50);

    if ((keyPressed == true) && ((key == '1') && (screen == 7)|| (key == '1') && (screen == 7))) {
      correctScore = correctScore + 1;
    }

    if ((keyPressed == true) && ((key == '2') && (screen == 7)|| (key == '2') && (screen == 7))) {
      correctScore = correctScore - 1;
    }


    if ((keyPressed == true) && ((key == '1') && (screen == 7)|| (key == '1') && (screen == 7))) {
      screen = screen + 1;
    }
    if ((keyPressed == true) && ((key == '2') && (screen == 7)|| (key == '2') && (screen == 7))) {
      screen = screen + 1;
    }
  }

  //Eighth Question Screen
  if (screen == 8) {
    textSize(25);
    fill(0);
    rect(300,175,700,40);
    rect(300,270,200,100);
    fill(255);
    text("8th question, Notepad is a word processor. ", 305, 200);
    textSize(25);
    text("3. True", 310, 300);
    text("4. False", 310, 320);
    textSize(50);
    fill(#D33535);
   text("Score", 100, 50);
   text(correctScore, 250, 50);

    if ((keyPressed == true) && ((key == '3') && (screen == 8))) {
      correctScore = correctScore - 1;
    }

    if ((keyPressed == true) && ((key == '4') && (screen == 8))) {
      correctScore = correctScore + 1;
    }


    if ((keyPressed == true) && ((key == '3') && (screen == 8))) {
      screen = screen + 1;
    }
    if ((keyPressed == true) && ((key == '4') && (screen == 8))) {
      screen = screen + 1;
    }
  }

  //Ninth Question Screen
  if (screen == 9) {
    textSize(25);
    fill(0);
    rect(300,175,700,40);
    rect(300,270,200,100);
    fill(255);
    text("9th question, 'ellipse' is used for creating squares in processing. ", 305, 200);
    textSize(25);
    text("5. True", 310, 300);
    text("6. False", 310, 320);
    textSize(50);
    fill(#D33535);
   text("Score", 100, 50);
   text(correctScore, 250, 50);

    if ((keyPressed == true) && ((key == '5') && (screen == 9))) {
      correctScore = correctScore - 1;
    }

    if ((keyPressed == true) && ((key == '6') && (screen == 9))) {
      correctScore = correctScore + 1;
    }


    if ((keyPressed == true) && ((key == '5') && (screen == 9))) {
      screen = screen + 1;
    }
    if ((keyPressed == true) && ((key == '6') && (screen == 9))) {
      screen = screen + 1;
    }
  }

  //Tenth Question Screen
  if (screen == 10) {
    textSize(25);
    fill(0);
    rect(300,175,700,40);
    rect(300,270,200,100);
    fill(255);
    text("10th question, 'CTRL' + 'C' is a keyboard shortcut to copy. ", 305, 200);
    textSize(25);
    text("7. True", 310, 300);
    text("8. False", 310, 320);
    textSize(50);
    fill(#D33535);
   text("Score", 100, 50);
   text(correctScore, 250, 50);

    if ((keyPressed == true) && ((key == '7') && (screen == 10))) {
      correctScore = correctScore + 1;
    }

    if ((keyPressed == true) && ((key == '8') && (screen == 10))) {
      correctScore = correctScore - 1;
    }


    if ((keyPressed == true) && ((key == '7') && (screen == 10))) {
      screen = screen + 1;
    }
    if ((keyPressed == true) && ((key == '8') && (screen == 10))) {
      screen = screen + 1;
    }
  }


  //Eleventh Question Screen
  if (screen == 11) {
    textSize(25);
    fill(0);
    rect(300,175,700,40);
    fill(255);
    text("11th question, when was the war of 1812?", 305, 200);
    rect(5, 300, 100, 50);   //answer boxes
    rect(130, 300, 100, 50);
    rect(5, 400, 100, 50);
    rect(130, 400, 100, 50);
    fill(#D33535);
    textSize(25);
    text("1811", 30, 335);
    text("1812", 155, 335);
    text("2019", 30, 435);
    text("1816", 155, 435);
    textSize(50);
    fill(#D33535);
   text("Score", 100, 50);
   text(correctScore, 250, 50);

    fill(#8EE50E);
    ellipse(mouseX, mouseY, 20, 20);   //Cursor

    if ((mousePressed == true) && (mouseX >= 5 && mouseX <= 105 && mouseY >= 300 && mouseY <= 350)) {    //Clickable answer based on cursor location
      correctScore = correctScore - 1;
    }

    if ((mousePressed == true) && (mouseX >= 130 && mouseX <= 230 && mouseY >= 300 && mouseY <= 350)) {
      correctScore = correctScore + 1;
    }

    if ((mousePressed == true) && (mouseX >= 5 && mouseX <= 105 && mouseY >= 400 && mouseY <= 450)) {
      correctScore = correctScore - 1;
    }

    if ((mousePressed == true) && (mouseX >= 130 && mouseX <= 230 && mouseY >= 400 && mouseY <= 450)) {
      correctScore = correctScore - 1;
    }




    if ((mousePressed == true) && (mouseX >= 5 && mouseX <= 105 && mouseY >= 300 && mouseY <= 350)) {   
      screen = screen +1;
    }

    if ((mousePressed == true) && (mouseX >= 130 && mouseX <= 230 && mouseY >= 300 && mouseY <= 350)) {
      screen = screen +1;
    }

    if ((mousePressed == true) && (mouseX >= 5 && mouseX <= 105 && mouseY >= 400 && mouseY <= 450)) {
      screen = screen +1;
    }

    if ((mousePressed == true) && (mouseX >= 130 && mouseX <= 230 && mouseY >= 400 && mouseY <= 450)) {
      screen = screen +1;
    }
  }


  //Twelfth Question Screen
  if (screen == 12) {
    textSize(25);
    fill(0);
    rect(300,175,700,40);
    fill(255);
    text("12th question, what is the western-most Canadian province?", 305, 200);
    rect(405, 300, 100, 50);   //answer boxes
    rect(530, 300, 100, 50);
    rect(405, 400, 100, 50);
    rect(530, 400, 100, 50);
    fill(#D33535);
    textSize(25);
    text("Yukon", 425, 335);
    text("Alberta", 545, 335);
    text("Alaska", 420, 435);
    textSize(10);
    text("British Columbia", 535, 435);
    image(Canada, 750,300);
    textSize(50);
    fill(#D33535);
   text("Score", 100, 50);
   text(correctScore, 250, 50);

    fill(#8EE50E);
    ellipse(mouseX, mouseY, 20, 20);   //Cursor

    if ((mousePressed == true) && (mouseX >= 405 && mouseX <= 505 && mouseY >= 300 && mouseY <= 350)) {    //Clickable answer based on cursor location
      correctScore = correctScore - 1;
    }

    if ((mousePressed == true) && (mouseX >= 530 && mouseX <= 630 && mouseY >= 300 && mouseY <= 350)) {
      correctScore = correctScore - 1;
    }

    if ((mousePressed == true) && (mouseX >= 405 && mouseX <= 505 && mouseY >= 400 && mouseY <= 450)) {
      correctScore = correctScore - 1;
    }

    if ((mousePressed == true) && (mouseX >= 530 && mouseX <= 630 && mouseY >= 400 && mouseY <= 450)) {
      correctScore = correctScore + 1;
    }




    if ((mousePressed == true) && (mouseX >= 405 && mouseX <= 505 && mouseY >= 300 && mouseY <= 350)) {   
      screen = screen +1;
    }

    if ((mousePressed == true) && (mouseX >= 530 && mouseX <= 630 && mouseY >= 300 && mouseY <= 350)) {
      screen = screen +1;
    }

    if ((mousePressed == true) && (mouseX >= 405 && mouseX <= 505 && mouseY >= 400 && mouseY <= 450)) {
      screen = screen +1;
    }

    if ((mousePressed == true) && (mouseX >= 530 && mouseX <= 630 && mouseY >= 400 && mouseY <= 450)) {
      screen = screen +1;
    }
  }
  
  
  
 //Thirteenth Question Screen
  if (screen == 13) {
    textSize(25);
    fill(0);
    rect(300,175,700,40);
    fill(255);
    text("treizieme question, comment-dit on 'Book' en Francais?",305, 200);
    rect(5, 300, 100, 50);   //answer boxes
    rect(130, 300, 100, 50);
    rect(5, 400, 100, 50);
    rect(130, 400, 100, 50);
    fill(#D33535);
    textSize(25);
    text("book", 30, 335);
    text("cahier", 155, 335);
    text("livre", 30, 435);
    text("BAGUETTE", 140, 435);
    textSize(50);
    fill(#D33535);
   text("Score", 100, 50);
   text(correctScore, 250, 50);

    fill(#8EE50E);
    ellipse(mouseX, mouseY, 20, 20);   //Cursor

    if ((mousePressed == true) && (mouseX >= 5 && mouseX <= 105 && mouseY >= 300 && mouseY <= 350)) {    //Clickable answer based on cursor location
      correctScore = correctScore - 1;
    }

    if ((mousePressed == true) && (mouseX >= 130 && mouseX <= 230 && mouseY >= 300 && mouseY <= 350)) {
      correctScore = correctScore + 1;
    }

    if ((mousePressed == true) && (mouseX >= 5 && mouseX <= 105 && mouseY >= 400 && mouseY <= 450)) {
      correctScore = correctScore - 1;
    }

    if ((mousePressed == true) && (mouseX >= 130 && mouseX <= 230 && mouseY >= 400 && mouseY <= 450)) {
      correctScore = correctScore - 1;
    }




    if ((mousePressed == true) && (mouseX >= 5 && mouseX <= 105 && mouseY >= 300 && mouseY <= 350)) {   
      screen = screen +1;
    }

    if ((mousePressed == true) && (mouseX >= 130 && mouseX <= 230 && mouseY >= 300 && mouseY <= 350)) {
      screen = screen +1;
    }

    if ((mousePressed == true) && (mouseX >= 5 && mouseX <= 105 && mouseY >= 400 && mouseY <= 450)) {
      screen = screen +1;
    }

    if ((mousePressed == true) && (mouseX >= 130 && mouseX <= 230 && mouseY >= 400 && mouseY <= 450)) {
      screen = screen +1;
    }
  }  
  
//EndScreen
  if (screen == 14) {
    textSize(40);
    fill(255);
    text("Congrats, you survived to the end", 375, 200);
    rect(505, 300, 100, 50);   //answer boxes
    rect(630, 300, 100, 50);
    fill(#D33535);
    textSize(25);
    text("Retry", 525, 335);
    text("Exit", 645, 335);
    textSize(50);
    fill(#D33535);
   text("Score", 525, 400);
   textSize(100);
   text(correctScore, 575, 485);

    fill(#8EE50E);
    ellipse(mouseX, mouseY, 20, 20);   //Cursor

    if ((mousePressed == true) && (mouseX >= 505 && mouseX <= 605 && mouseY >= 00 && mouseY <= 350)) {    //Clickable answer based on cursor location
      correctScore = 0;
    }

   




    if ((mousePressed == true) && (mouseX >= 505 && mouseX <= 605 && mouseY >= 300 && mouseY <= 350)) {   
      screen = 0;
    }

    if ((mousePressed == true) && (mouseX >= 630 && mouseX <= 730 && mouseY >= 300 && mouseY <= 350)) {
     exit();
    }

  }
  

}


void stop() {
  player.close();
  minim.stop();
  super.stop();
}
