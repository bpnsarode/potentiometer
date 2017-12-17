void setup() 
{
  Serial.begin(9600); // initializing serial communication 9600 bits per second:
}

void loop() 
{
  int sensorValue = analogRead(A0); // input 
  float voltage = sensorValue * (5.0 / 1023.0); // convert sensor analog value into voltages:
  Serial.println(voltage);
  delay(10);

}


