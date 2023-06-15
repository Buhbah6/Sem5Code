int led = 8;
void setup() {
  pinMode(led, OUTPUT);
}

void loop() {
  flashLight(led, 700, 400);
  flashLight(led, 300, 200);
  flashLight(led, 300, 200);
  flashLight(led, 1000, 1000);

}

void flashLight(int led, int delay1, int delay2) {
  digitalWrite(led, HIGH);
  delay(delay1);
  digitalWrite(led, LOW);
  delay(delay2);
}
