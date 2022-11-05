//instance variables
PImage img;
int boxSize = 50;

//app icons
PImage weather;
PImage health;
PImage news;
PImage mail;

//button variables for weather
float bx, by;
float xOffset, yOffset = 0.0;
boolean locked, overBox = false;

//button variables for health
float bx2, by2;
float xOffset2, yOffset2 = 0.0;
boolean locked2, overBox2 = false;

//button variables for mail
float bx3, by3;
float xOffset3, yOffset3 = 0.0;
boolean locked3, overBox3 = false;

//button variables for news
float bx4, by4;
float xOffset4, yOffset4 = 0.0;
boolean locked4, overBox4 = false;

//button variables for calender
float bx5, by5;
float xOffset5, yOffset5 = 0.0;
boolean locked5, overBox5 = false;

//Clock Variables
float bx6, by6;
float xOffset6, yOffset6 = 0.0;
boolean locked6, overBox6 = false;

//boolean variables for app icons
boolean showWeather = false;
boolean clickWeather = true;
boolean showHealth = false;
boolean clickHealth = true;
boolean showMail = false;
boolean clickMail = true;
boolean showNews = false;
boolean clickNews = true;
boolean showCalender = false;
boolean clickCalender = true;

//variables for clock
int m, h, d, mm;

void setup(){
  //mirror setup
  size(900, 700);
  
  //inserting stick figure image
  img = loadImage("nobackstickman.png");
  
  //button starting position
  weather = loadImage("sunny_.png");
  health = loadImage("white heart.png");
  mail = loadImage("mail_.png");
  news = loadImage("news_.png");
  
  //setting initial position of X & Y
  bx = 800;
  by = 600;
  bx2 = 100;
  by2 = 600;
  bx3 = 800;
  by3 = 400;
  bx4 = 100;
  by4 = 400;
  bx5 = 100;
  by5 = 200;
  bx6 = 425;
  by6 = 70;
  rectMode(RADIUS);
  
  //resizing images if needed
  health.resize(60,60);
  mail.resize(90,70);
  news.resize(65,65);
}

void draw(){
  //setting background to a gray mirror color
  background(160); //200
  //displaying stick figure man
  image(img,135,240);
  
  //checking to see if mouse is over any icon
  if(mouseX > bx - boxSize && mouseX < bx + boxSize && mouseY > by - boxSize && mouseY < by + boxSize){
    overBox = true;
    if(!locked){
      stroke(255);
      fill(255,0,0);
    }
  } else if(mouseX > bx2 - boxSize && mouseX < bx2 + boxSize && mouseY > by2 - boxSize && mouseY < by2 + boxSize){
    overBox2 = true;
    if(!locked2){
      stroke(255);
      fill(255,0,0);
    }
  } else if(mouseX > bx3 - boxSize && mouseX < bx3 + boxSize && mouseY > by3 - boxSize && mouseY < by3 + boxSize){
    overBox3 = true;
    if(!locked3){
      stroke(255);
      fill(255,0,0);
    }
  } else if(mouseX > bx4 - boxSize && mouseX < bx4 + boxSize && mouseY > by4 - boxSize && mouseY < by4 + boxSize) {
    overBox4 = true;
    if(!locked4){
      stroke(255);
      fill(255,0,0);
    }
  } else if(mouseX > bx5 - boxSize && mouseX < bx5 + boxSize && mouseY > by5 - boxSize && mouseY < by5 + boxSize) {
    overBox5 = true;
    if(!locked5){
      stroke(255);
      fill(255,0,0);
    } 
  } else if(mouseX > bx6 - 50 && mouseX < bx6 + 50 && mouseY > by6 - 30 && mouseY < by6 + 30) {
    overBox6 = true;
    if(!locked6){
      stroke(255);
      fill(255,0,0);
    } 
  } else {
    stroke(0);
    fill(255,0,0);
    overBox = false;
    overBox2 = false;
    overBox3 = false;
    overBox4 = false;
    overBox5 = false;
    overBox6 = false;
  }
  
  //background buttons
  fill(0,128,255); //light blue
  rect(bx, by, boxSize, boxSize, 25); //weather button
  fill(213, 21, 46); //warm red
  rect(bx2, by2, boxSize, boxSize, 25); //health button
  fill(0, 160, 185);
  rect(bx3, by3, boxSize, boxSize, 25); //mail button
  fill(180, 0, 180);
  rect(bx4, by4, boxSize, boxSize, 25); //news button
  fill(230, 150, 0);
  rect(bx5, by5, boxSize, boxSize, 25); //calender button
  noFill();
  rect(bx6, by6, 50, 30, 25);
  
  
  d = day();
  mm = month();
  //setting icons
  image(weather, bx - 35, by - 35); //sun icon
  image(health, bx2 - 30, by2 - 30); //heart icon
  image(mail, bx3 - 45, by3 - 33); //mail icon
  image(news, bx4 - 32, by4 - 30); //news icon
  
  //Calender icon
  fill(255);
  textSize(35);
  //checking which month to display
  if(mm == 1){
    text("Jan", bx5 - 30, by5 - 5);
  } else if(mm == 2){
    text("Feb", bx5 - 30, by5 - 5);
  } else if(mm == 3){
    text("Mar", bx5 - 30, by5 - 5);
  } else if(mm == 4){
    text("Apr", bx5 - 30, by5 - 5);
  } else if(mm == 5){
    text("May", bx5 - 30, by5 - 5);
  } else if(mm == 6){
    text("Jun", bx5 - 30, by5 - 5);
  } else if(mm == 7){
    text("Jul", bx5 - 30, by5 - 5);
  } else if(mm == 8){
    text("Aug", bx5 - 30, by5 - 5);
  } else if(mm == 9){
    text("Sep", bx5 - 30, by5 - 5);
  } else if(mm == 10){
    text("Oct", bx5 - 30, by5 - 5);
  } else if(mm == 11){
    text("Nov", bx5 - 30, by5 - 5);
  } else if(mm == 12){
    text("Dec", bx5 - 30, by5 - 5);
  }
  text(d, bx5 - 10, by5 + 33); //calender day
  
  if(showWeather) {
    weatherDisplay();
    tint(255, 50);
  } else if(showHealth){
     healthDisplay();
     tint(255, 50);
  } else if(showMail) {
    mailDisplay();
    tint(255, 50);
  } else if(showNews) {
    newsDisplay();
    tint(255, 50);
  } else if(showCalender){
    calenderDisplay();
    tint(255, 50);
  } else {
     tint(255, 255); 
  }
  
  //digital clock
  m = minute();
  h = hour();
  fill(255, 0 ,0);
  textSize(35);
  text(h, bx6 - 45, by6 + 12);
  text(":", bx6 - 7, by6 + 10);
  text(m, bx6+7, by6 + 12);
  
  
  //println(showCalender);
  //println(showNews);
  //println(showMail);
  //println(showHealth);
  //println(showWeather);
}

//checks to see if mouse is being held over a button
void mousePressed(){
  if(overBox){
    locked = true;
    fill(0,255,0);
  } else if(overBox2) {
    locked2 = true;
    fill(0, 255, 0);
  } else if(overBox3) {
    locked3 = true;
    fill(0, 255, 0);
  } else if(overBox4) {
    locked4 = true;
    fill(0, 255, 0);
  } else if(overBox5) {
    locked5 = true;
  } else if(overBox6) {
    locked6 = true;
  }  else {
    locked = false;
    locked2 = false;
    locked3 = false;
    locked4 = false;
    locked5 = false;
    locked6 = false;
  }
  
  xOffset = mouseX - bx;
  yOffset = mouseY - by;
  
  xOffset2 = mouseX - bx2;
  xOffset2 = mouseY - by2;
  
  xOffset3 = mouseX - bx3;
  yOffset3 = mouseY - by3;
  
  xOffset4 = mouseX - bx4;
  yOffset4 = mouseY - by4;
  
  xOffset5 = mouseX - bx5;
  yOffset5 = mouseY - by5;
  
  xOffset6 = mouseX - bx6;
  yOffset6 = mouseY - by6;
}

//checks to see if mouse is being dragged and updating position
void mouseDragged(){
   if(locked){
     bx = mouseX - xOffset;
     by = mouseY - yOffset;
   }
   
   if(locked2){
     bx2 = mouseX - xOffset2;
     by2 = mouseY - yOffset2;
   }
   
   if(locked3){
     bx3 = mouseX - xOffset3;
     by3 = mouseY - yOffset3;
   }
   
   if(locked4){
     bx4 = mouseX - xOffset4;
     by4 = mouseY - yOffset4;
   }
   
   if(locked5){
     bx5 = mouseX - xOffset5;
     by5 = mouseY - yOffset5;
   }
   
   if(locked6){
     bx6 = mouseX - xOffset6;
     by6 = mouseY - yOffset6;
   }
}

//checks to see if mouse has clicked a button
void mouseClicked(){
   //if the mouse if over any of the buttons and clicks
   if(overBox && clickWeather == true){
     showWeather = true;
     clickWeather = false;
   } else if(overBox2 && clickHealth == true) {
     showHealth = true;
     clickHealth = false;
   } else if(overBox3 && clickMail == true){
     showMail = true;
     clickMail = false;
   } else if(overBox4 && clickNews == true){
     showNews = true;
     clickNews = false;
   } else if(overBox5 && clickCalender == true){
     showCalender = true;
     clickCalender = false;
   } else {
     showWeather = false;
     clickWeather = true;
     showHealth = false;
     clickHealth = true;
     showMail = false;
     clickMail = true;
     showNews = false;
     clickNews = true;
     showCalender = false;
     clickCalender = true;
   }
   
   //NOTE: There is no clicking for Clock
}


/*
  Displays the Calender at the center of the Mirror.
  Mirror is tinted to help contrast the text information.
*/
void calenderDisplay(){
  //creaing see throught display with borders
  strokeWeight(5);
  stroke(230, 150, 0);
  noFill();
  tint(255, 50);
  rect(450, 330, 260, 300, 20); 
  
  //Header for Calender
  textSize(45);
  
  if(mm == 1){
    text("Janurary", 360, 100);
  } else if(mm == 2){
    text("Feburary", 360, 100);
  } else if(mm == 3){
    text("March", 363, 100);
  } else if(mm == 4){
    text("April", 363, 100);
  } else if(mm == 5){
    text("May", 365, 100);
  } else if(mm == 6){
    text("June", 363, 100);
  } else if(mm == 7){
    text("July", 363, 100);
  } else if(mm == 8){
    text("August", 360, 100);
  } else if(mm == 9){
    text("September", 360, 100);
  } else if(mm == 10){
    text("October", 360, 100);
  } else if(mm == 11){
    text("November", 360, 100);
  } else if(mm == 12){
    text("December", 360, 100);
  }
  
  //Days
  textSize(25);
  text("Sun", 205, 200);
  text("Mon", 270, 200);
  text("Tues", 350, 200);
  text("Wed", 430, 200);
  text("Thurs", 505, 200);
  text("Fri", 600, 200);
  text("Sat", 660, 200);
   
  //Divider Lines
  //vertical
  noStroke();
  fill(255);
  rect(255, 415, 1, 180);
  rect(330, 415, 1, 180);
  rect(415, 415, 1, 180);
  rect(495, 415, 1, 180);
  rect(575, 415, 1, 180);
  rect(650, 415, 1, 180);
  //horizontal
  rect(450, 290, 230, 1);
  rect(450, 350, 230, 1);
  rect(450, 415, 230, 1);
  rect(450, 480, 230, 1);
  rect(450, 540, 230, 1);
  
  //Days
  fill(200); //gray
  text("30         31", 213, 270);
  text("1             2             3           4", 450, 520);
  text("5           6             7              8              9           10         11", 220, 580);
  fill(255); //white
  text("1              2              3             4          5", 365, 270);
  text("6           7             8              9            10           11         12", 220, 330);
  text("13         14          15            16           17           18        19", 213, 390);
  text("20         21          22            23           24           25        26", 213, 455);
  text("27         28          29", 213, 520);
    
  //reverting back 
  fill(255);
  strokeWeight(1);
}

/*
  Displays the News at the center of the Mirror.
  Mirror is tinted to help contrast the text information.
*/
void newsDisplay() {
  //2 dividers
  noStroke();
  fill(255);
  rect(430, 225, 160, 1, 20);
  rect(430, 450, 160, 1, 20);
  
  //Headers for News
  textSize(23);
  text("World News", 370, 70);
  text("National News", 360, 255);
  text("Local News", 370, 480);
  
  //short Headline
  textSize(15);
  text("Gorilla at UN declares initative to return to monke", 277, 90); //World News
  text("Florida man tries to toss alligator", 330, 275); //National News
  text("on roof to teach it a lesson", 340, 290); 
  text("Project 2 due on Sundady, professor says", 305, 500); //Local News
  
  //snippet of article text
  textSize(12);
  //World News
  text("Ever since harambe's horrific", 410, 120);
  text("demise. Ambassador Banana has", 410, 140);
  text("lead an effort to lead humanity", 410, 160);
  text("to return to its roots, monke.", 410, 180);
  //National News
  text("Florida man attempted to throw", 425, 320);
  text("an alligator from a golf course.", 425, 340);
  text("Police arrested the man and has", 425, 360);
  text("assured the alligator was not", 425, 380);
  text("harmed and now roams the fields", 425, 400);
  text("again.", 425, 420);
  //Local News
  text("Professor has announced that", 410, 530);
  text("the Due Date for Project 2", 410, 550);
  text("is on Sundady. However rumors", 410, 570);
  text("of an extenstion has recently", 410, 590);
  text("surfaced from the students.", 410, 610);
  
  //images for news
  noTint();
  PImage world = loadImage("Gorilla_.jpg");
  PImage national = loadImage("Florida_man_.PNG");
  PImage local = loadImage("due_date_.jpg");
  
  world.resize(100, 120);
  national.resize(120, 120);
  local.resize(100, 100);
  
  image(world, 300, 100);
  image(national, 300, 310);
  image(local, 300, 515);
  
  //creaing see throught display with borders
  strokeWeight(5);
  stroke(180, 0, 180);
  noFill();
  tint(255, 50);
  rect(430, 330, 160, 300, 20); 
  
  //reverting back 
  fill(255);
  strokeWeight(1);
}

/*
  Displays the Mail at the center of the Mirror.
  Mirror is tinted to help contrast the text information.
*/
void mailDisplay(){
  noStroke();
  //mail lines (white)
  fill(230);
  rect(430, 69, 160, 35, 8);
  rect(430, 209, 160, 35, 8);
  rect(430, 349, 160, 35, 8);
  rect(430, 588, 160, 40, 10); //bottom bar
  
  //mail lines (gray)
  fill(180);
  rect(430, 139, 160, 35, 8);
  rect(430, 279, 160, 35, 8);
  rect(430, 479, 160, 95, 8); //huge gray box indicating no mail
  
  //mail text Person and email
  fill(0);
  textSize(18);
  text("Martin             <martin.ben@gmail.com>", 285, 55);
  text("Jenna          <jen.lemma@hotmail.com>", 285, 125);
  text("John                 <john.smith@work.com>", 285, 195);
  text("Jane                  <jane.smith@work.com>", 285, 265);
  text("Harambe               <harambe@zoo.com>", 285, 335);
  
  //mail text message
  textSize(14);
  text("Hello World!", 285, 90);
  text("I'm checking up on your progress for project 2, it's...", 285, 160);
  text("I'm just a poor boy, nobody loves me.", 285, 230);
  text("HE'S JUST A POOR BOY FROM A POOR FAMILY, SP...", 285, 300);
  text("Never Forget.", 285, 370);
  
  
  //bottom icons
  noTint();
  PImage home = loadImage("home_.png");
  PImage account = loadImage("account_.png");
  PImage search = loadImage("search_.png");
  
  home.resize(40, 40);
  search.resize(35, 35);
  account.resize(47, 47);
  
  image(home, 407, 580);
  image(search, 305, 585);
  image(account, 510, 578);
  
  //mail divider lines
  fill(170);
  rect(370, 600, 2, 28);
  rect(485, 600, 2, 28);
  
  //creaing see through display with borders
  strokeWeight(5);
  stroke(0, 160, 185);
  noFill();
  tint(255,50); 
  rect(430, 330, 160, 300, 20);
  
  //reverting back 
  fill(255);
  strokeWeight(1);
}

/*
  Displays the Health at the center of the Mirror.
  Mirror is tinted to help contrast the text information.
*/
void healthDisplay(){
  //creaing see throught display with borders
  strokeWeight(5);
  stroke(213, 21, 46);
  noFill();
  tint(255, 50);
  rect(450, 330, 260, 300, 20); //length used to be 160
  
  //text display
  textSize(50);
  fill(0);
  text("Health ", 360, 100);
  //Top information
  textSize(20);
  text("Headphone Interaction ", 245, 170);
  text("Walking Speed ", 245, 220);
  text("Height", 245, 270);
  text("Weight", 245, 320);
  text("Steps So Far this Week", 350, 360);
  
  //value numbers
  fill(50, 255, 50);
  text("OK ~ 7 day exposure", 470, 170);
  text("2.9 mph", 470, 220);
  text("5' 10''", 470, 270);
  text("176 lbs", 470, 320);
  
  //green bars for the graph
  stroke(50);
  strokeWeight(2);
  fill(50, 255, 50);
  rect(300, 520, 15, 54); // Monday
  rect(360, 540, 15, 34); // Tuesday
  rect(420, 530, 15, 44); // Wednesday
  rect(480, 500, 15, 74); // Thursday
  rect(540, 505, 15, 69); // Friday
  rect(598, 550, 15, 24); // Saturday
  rect(660, 535, 15, 39); // Sunday
  
  //graph for the steps taken during the week
  noStroke();
  fill(255);
  rect(480, 575, 220, 1); //horizontal line
  rect(260, 500, 1, 120); //vertical line
  text("Mon", 280, 605);
  text("Tues", 340, 605);
  text("Wed", 400, 605);
  text("Thurs", 460, 605);
  text("Fri", 530, 605);
  text("Sat", 580, 605);
  text("Sun", 640, 605);
  
  
  //numbers for graph
  text("1000", 205, 525);
  text("2000", 205, 475);
  text("3000", 205, 425);
  rect(480, 520, 220, 1); //horizontal line
  rect(480, 470, 220, 1); //horizontal line
  rect(480, 420, 220, 1); //horizontal line
  
  //reverting back 
  fill(255);
  strokeWeight(1);
}

/* 
   Displays the Weather at the center of the Mirror.
   Mirror is tinted to help contrast the text information
*/
void weatherDisplay(){
  //creaing see throught display with borders
  strokeWeight(5);
  stroke(0,128,255);
  noFill();
  tint(255,50); 
  rect(430, 330, 160, 300, 20);  
  
  //text display
  textSize(50);
  fill(0);
  text("Weather", 345, 100);
  textSize(20);
  //Dates for Weather
  text("Today ", 300, 200);
  text("Monday ", 300, 250);
  text("Tuesday ", 300, 300);
  text("Wednesday ", 300, 350);
  text("Thursday ", 300, 400);
  text("Friday ", 300, 450);
  text("Saturday ", 300, 500);
  text("Wind Speed        65%", 300, 570);
  text("Humidity           3mph", 300, 600);
  
  //Highs
  fill(255,0,0);
  text("H",500, 150);
  text("76", 497, 200);
  text("74", 497, 250);
  text("71", 497, 300);
  text("67", 497, 350);
  text("60", 497, 400);
  text("65", 497, 450);
  text("63", 497, 500);
  
  //Lows
  fill(0,0,255);
  text("L",550, 150);
  text("67", 547, 200);
  text("64", 547, 250);
  text("60", 547, 300);
  text("58", 547, 350);
  text("55", 547, 400);
  text("59", 547, 450);
  text("56", 547, 500);
  
  //Weather icons
  PImage sunny = loadImage("sunny_.png");
  PImage p_cloudy = loadImage("partly_cloudy.png");
  PImage storm = loadImage("thunder_.png");;
  PImage rainy = loadImage("rainy_.png");
  
  //placement of weather icons
  noTint();
  sunny.resize(40, 40);
  p_cloudy.resize(40, 40);
  storm.resize(40, 40);
  rainy.resize(40, 40);
  image(sunny, 430, 170);
  image(p_cloudy, 430, 220);
  image(p_cloudy, 430, 270);
  image(rainy, 430, 320);
  image(storm, 430, 370);
  image(sunny, 430, 420);
  image(p_cloudy, 430, 470);
  
  //reverting back
  fill(255);
  strokeWeight(1);
}

//if the mouse is released then set to false
void mouseRelease(){
  locked = false; 
  locked2 = false;
  locked3 = false;
  locked4 = false;
  locked5 = false;
  locked6 = false;
}
