#include <LiquidCrystal.h> // Exportar la función LiquidCrystal

// Variables de tipo entero para los pines del LCD
int rs = 12, en = 11, d4 = 5, d5 = 4, d6 = 3, d7 = 2;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

const int sensorPin = A0;
float temperaturaC; // Variable tipo float para el sensor
float temperaturaF;

void setup() {
  // Configurar píxeles 16x2
  lcd.begin(16, 2); 
  // Imprimir mensaje inicial
  lcd.print("Temperatura"); 
  delay(1500);
  lcd.clear();
}

void loop() {
  // Uso de la función MAP con analogRead
  // Mapeamos el rango de lectura (0-1023) a los valores crudos del TMP36 (-50 a 125 grados * 100)
  long valorMapeado = map(analogRead(sensorPin), 0, 1023, -5000, 45000);
  
  // Dividir el valor entre 100 para obtener Celsius
  temperaturaC = valorMapeado / 100.0;
  
  // Calcular Fahrenheit
  temperaturaF = (temperaturaC * 9.0 / 5.0) + 32.0;

  // Mandar a imprimir en la pantalla LCD
  lcd.setCursor(0, 0);
  lcd.print("C: ");
  lcd.print(temperaturaC, 1);
  lcd.print(" Grad");

  lcd.setCursor(0, 1);
  lcd.print("F: ");
  lcd.print(temperaturaF, 1);
  lcd.print(" Grad");

  delay(1000);
}