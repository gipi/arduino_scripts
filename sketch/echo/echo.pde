char buffer[1024] = "> ";
int counter = 0;
char input;

int COUNTER_START_OFFSET = 2;

void setup() {
  Serial.begin(9600);

  counter = COUNTER_START_OFFSET;
}

void loop () {
  if (Serial.available() > 0) {
    // Serial reads one byte at time
    input = (char)Serial.read();
    if (input != '\n') {
      buffer[counter++] = input;
    } else {
       // put a string terminator
       buffer[counter] = '\0';
       // now echo the line
       Serial.println(buffer);
       // reset the counter
       counter = COUNTER_START_OFFSET;
    }
  }
}
