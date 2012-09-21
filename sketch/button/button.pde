int counter = 0;
char input;
bool previous = HIGH;

int inputPin = 7;

void setup() {
  Serial.begin(9600);
  pinMode(inputPin, INPUT);
}

void loop () {
  int val = digitalRead(inputPin);

  if (val != previous) {
      // the button make the input pin change two times the state
      // make the counter increase only with one of them
      if (val == LOW) {
          counter++;
          Serial.println(counter);
      }
      previous = val;
  }
}
