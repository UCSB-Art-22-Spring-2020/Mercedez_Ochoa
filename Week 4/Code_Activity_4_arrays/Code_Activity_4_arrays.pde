// Code_Activity_Creating 2 arrays
// Art 22 Spring 2020
// Author: Mercedez Ochoa
// Date: 4/22/ 2020
//reference: https://forum.processing.org/two/discussion/18658/how-to-print-only-the-even-numbers-in-an-array


 // what type of thing we want to in our array [ ]? string
int[] evenNum = new int[20]; // new array with 20 elemenents of type int
int[] oddNum = new int[20]; // new array with 20 elemenents of type int

void setup(){
   // start at index 1 count through 20 (lengeth of even Num array), i even values
  for( int i = 1; i < evenNum.length; evenNum[i] = 2*i++){   // increment i by even #s
   }
  // start at index 1, counth thru 20 (length of oddNum array), i odd values
  for(int i = 1; i < oddNum.length; oddNum[i] = 2*i++ + 1){ // increment i by odd #s
    }
   printArray(evenNum) ; // print whole array evenNum
   printArray(oddNum); // print whole array oddNum
    
}
  
  
  
