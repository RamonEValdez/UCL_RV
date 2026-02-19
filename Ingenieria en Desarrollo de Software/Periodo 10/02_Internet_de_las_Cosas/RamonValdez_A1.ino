// 1. Declaración de variables de tipo entero para cada LED
int ledRojo = 13;
int ledAmarillo = 12;
int ledVerde = 11;

void setup() {
  // 2. Configuración de los pines como salida.
  pinMode(ledRojo, OUTPUT);
  pinMode(ledAmarillo, OUTPUT);
  pinMode(ledVerde, OUTPUT);
}

void loop() {
  // SECUENCIA DEL SEMÁFORO
  
  // Encender Rojo
  digitalWrite(ledRojo, HIGH);
  delay(3000); // Espera 3 segundos
  digitalWrite(ledRojo, LOW);
  
  // Encender Amarillo
  digitalWrite(ledAmarillo, HIGH);
  delay(1000); // Espera 1 segundo
  digitalWrite(ledAmarillo, LOW);
  
  // Encender Verde
  digitalWrite(ledVerde, HIGH);
  delay(3000); // Espera 3 segundos
  digitalWrite(ledVerde, LOW);
  
  // Regresar a Amarillo (según la instrucción)
  digitalWrite(ledAmarillo, HIGH);
  delay(1000);
  digitalWrite(ledAmarillo, LOW);
  
  // El ciclo vuelve a empezar en el Rojo automáticamente
}