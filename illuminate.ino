
//
//int star1 = A0;
//int star2 = A1;
//int star3 = A2;
//int star4 = A3;
//int star5 = A4;
//int star6 = A5;
//int star7 = A6;
//int star8 = A7;
//int star9 = A8;
//int star10 = A9;
//int star11 = A10;
//int star12 = A11;
//int star13 = A12;
//int star14 = A13;


void setup() {
  Serial.begin(9600);
  //  pinMode(star1, INPUT);
  //  pinMode(star2, INPUT);
  //  pinMode(star3, INPUT);
  //  pinMode(star4, INPUT);
  //  pinMode(star5, INPUT);
  //  pinMode(star6, INPUT);
  //  pinMode(star7, INPUT);
  //  pinMode(star8, INPUT);
  //  pinMode(star9, INPUT);
  //  pinMode(star10, INPUT);
  //  pinMode(star11, INPUT);
  //  pinMode(star12, INPUT);
  //  pinMode(star13, INPUT);
  //  pinMode(star14, INPUT);
}

void loop(){
  int val0 = analogRead(A0);
  Serial.print(val0);
  Serial.print(',');
  int val1 = analogRead(A1);
  Serial.print(val1);
  Serial.print(',');
  int val2 = analogRead(A2);
  Serial.print(val2);
  Serial.print(',');
  int val3 = analogRead(A3);
  Serial.print(val3);
  Serial.print(',');
  int val4 = analogRead(A4);
  Serial.print(val4);
  Serial.print(',');
  int val5 = analogRead(A5);
  Serial.print(val5);
  Serial.print(',');
  int val6 = analogRead(A6);
  Serial.print(val6);
  Serial.print(',');
//  int val7 = analogRead(A7);
//  Serial.print(val7);
//  Serial.print(',');
//  int val8 = analogRead(A8);
//  Serial.print(val8);
//  Serial.print(',');
//  int val9 = analogRead(A9);
//  Serial.print(val9);
//  Serial.print(',');
//  int val10 = analogRead(A10);
//  Serial.print(val10);
//  Serial.print(',');
//  int val11 = analogRead(A11);
//  Serial.print(val11);
//  Serial.print(',');
//  int val12 = analogRead(A12);
//  Serial.print(val12);
//  Serial.print(',');
//  int val13 = analogRead(A13);
//  Serial.println(val13);  




}


