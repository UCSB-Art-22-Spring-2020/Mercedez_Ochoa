// Name your class
class human{  
   // 1. define variables you will be needing
   String name;
   int age;
   float coffee;
   float x, y; 
   
   // 2. Constructor...what will I need to say to create a specfic instance of human class?
   // creating characteristics for process to do later for class human
   human( String n, int a, float c  ){
     // setting characteristics to variable (finfo part)
     name = n;
     age = a;
     coffee = c;
   }
   
   // Method, showing information, (name, age, coffee), on the screen, say display
   void display(){
     
     x = mouseX;
     y = mouseY;
     // show: name age coffee , and location of text where ever our mouse is
     text(name + " " + age + " " + coffee, x , y);
   }
}
