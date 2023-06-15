const int pResistor = A0; // Photoresistor at Arduino analog pin A0
const int led = 8;
//Variables
int value; // Store value from photoresistor (0-1023)
void setup() {
  Serial.begin(9600);
  pinMode(pResistor, INPUT); // Set pResistor - A0 pin as an input (optional)
  pinMode(led, OUTPUT);
}

void loop(){
  value = analogRead(pResistor);
  Serial.print("Light Intensity: ");
  Serial.print(value);
  Serial.println();
  setLight(value);
  delay(1000);
}

void setLight(int intensity) {
  if (intensity < 500)
    digitalWrite(led, HIGH);
  else
    digitalWrite(led, LOW);
}