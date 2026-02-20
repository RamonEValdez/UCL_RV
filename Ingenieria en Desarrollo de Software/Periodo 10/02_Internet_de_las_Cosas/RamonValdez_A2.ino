// Código C++ para Alarma de Incendio (Sensor de Gas)

// Definición de pines según el esquema de Tinkercad
const int pinSensor = A0;   // Sensor de Gas (Entrada analógica)
const int pinLed1 = 2;      
const int pinLed2 = 3;      
const int pinBuzzer = 4;    // Sensor piezoeléctrico (Salida digital/PWM)

// Umbral de activación requerido por la actividad
int umbral = 600; 

void setup() {
  // Configuración de entradas y salidas
  pinMode(pinSensor, INPUT);    // El sensor recibe información (INPUT)
  pinMode(pinLed1, OUTPUT);
  pinMode(pinLed2, OUTPUT);
  pinMode(pinBuzzer, OUTPUT);   // El piezoeléctrico suena (OUTPUT)
  
  Serial.begin(9600); // Monitor Serie para ver el nivel de gas en tiempo real
}

void loop() {
  // Lectura de la variable del sensor de gas
  int valorGas = analogRead(pinSensor);
  
  // Imprimir valor para depuración
  Serial.print("Presencia de Gas: ");
  Serial.println(valorGas);

  // Lógica de activación: mayor o igual a 600
  if (valorGas >= umbral) {
    // La alarma comienza a sonar y los LEDs se encienden
    digitalWrite(pinLed1, HIGH);
    digitalWrite(pinLed2, HIGH);
    tone(pinBuzzer, 1000); // Frecuencia de la alarma a 1000Hz
  } 
  else {
    // Si es menor a 600, la alarma no suena y los LEDs se apagan
    digitalWrite(pinLed1, LOW);
    digitalWrite(pinLed2, LOW);
    noTone(pinBuzzer);
  }
  
  delay(100); // Estabilidad de la lectura
}