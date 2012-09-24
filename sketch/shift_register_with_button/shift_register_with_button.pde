// http://bildr.org/2011/02/74hc595/
int SER_Pin = 8;   //pin 14 on the 75HC595
int RCLK_Pin = 9;  //pin 12 on the 75HC595
int SRCLK_Pin = 10; //pin 11 on the 75HC595
int inputPin = 7;
int counter = 0;
bool previous = HIGH;

//How many of the shift registers - change this
#define number_of_74hc595s 1

//do not touch
#define numOfRegisterPins number_of_74hc595s * 8

boolean registers[numOfRegisterPins];

//set all register pins to LOW
void clearRegisters(){
  for(int i = numOfRegisterPins - 1; i >=  0; i--){
     registers[i] = LOW;
  }
}

//Set and display registers
//Only call AFTER all values are set how you would like (slow otherwise)
void writeRegisters(){

  digitalWrite(RCLK_Pin, LOW);

  for(int i = numOfRegisterPins - 1; i >=  0; i--){
    digitalWrite(SRCLK_Pin, LOW);

    int val = registers[i];

    digitalWrite(SER_Pin, val);
    digitalWrite(SRCLK_Pin, HIGH);

  }
  digitalWrite(RCLK_Pin, HIGH);

}

//set an individual pin HIGH or LOW
void setRegisterPin(int index, int value){
  registers[index] = value;
}
void setup(){
  pinMode(SER_Pin, OUTPUT);
  pinMode(RCLK_Pin, OUTPUT);
  pinMode(SRCLK_Pin, OUTPUT);
  pinMode(inputPin, INPUT);

  //reset all register pins
  clearRegisters();
  writeRegisters();
}

void setRegistersUpTo(int count) {
  clearRegisters();
  for (int cycle = 0 ; cycle < count ; cycle++) {
      setRegisterPin(cycle, HIGH);
  }
  writeRegisters();
}


void loop(){
  int val = digitalRead(inputPin);

  if (val != previous) {
      // the button make the input pin change two times the state
      // make the counter increase only with one of them
      if (val == LOW) {
          counter++;
      }
      previous = val;
  }
  setRegistersUpTo(counter % 8);
}
