/*
 * http://arduino.cc/en/Tutorial/SecretsOfArduinoPWM
 */

int pwmPin = 3;
int inputPin = A0;

void setup() {
    pinMode(pwmPin, OUTPUT);
    pinMode(inputPin, INPUT);
}

void loop() {
    int in = analogRead(inputPin);
    analogWrite(pwmPin, in/4);

	delay(50);
}
