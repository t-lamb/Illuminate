void setup() {
  Serial.begin(9600);

}

void loop(){
  int val0 = analogRead(A0)/4;
  Serial.print(val0);
  Serial.print(',');
  int val1 = analogRead(A1)/4;
  Serial.print(val1);
  Serial.print(',');
  int val2 = analogRead(A2)/4;
  Serial.print(val2);
  Serial.print(',');
  int val3 = analogRead(A3)/4;
  Serial.print(val3);
  Serial.print(',');
  int val4 = analogRead(A4)/4;
  Serial.print(val4);
  Serial.print(',');
  int val5 = analogRead(A5)/4;
  Serial.print(val5);
  Serial.print(',');
  int val6 = analogRead(A6)/4;
  Serial.print(val6);
  Serial.print(',');
  int val7 = analogRead(A7)/4;
  Serial.print(val7);
  Serial.print(',');
  int val8 = analogRead(A8)/4;
  Serial.print(val8);
  Serial.print(',');
  int val9 = analogRead(A9)/4;
  Serial.print(val9);
  Serial.print(',');
  int val10 = analogRead(A10)/4;
  Serial.print(val10);
  Serial.print(',');
  int val11 = analogRead(A11)/4;
  Serial.print(val11);
  Serial.print(',');
  int val12 = analogRead(A12)/4;
  Serial.print(val12);
  Serial.print(',');
  int val13 = analogRead(A13)/4;
  Serial.println(val13);  


}
