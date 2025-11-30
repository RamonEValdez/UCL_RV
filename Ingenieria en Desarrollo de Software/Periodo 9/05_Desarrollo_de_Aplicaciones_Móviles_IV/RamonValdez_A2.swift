import Foundation
// CLASE de nombre CuentaBancaria
/// Representa una cuenta bancaria con funcionalidades básicas.
class CuentaBancaria {
    // Variable para almacenar el saldo actual de la cuenta, inicializado en 0.
    private var saldo: Double = 0.0
    // Función para obtener el saldo actual (para futuros usos, como la opción 3)
    func obtenerSaldo() -> Double {
        return saldo
    }
    // Inicialización
    init(saldoInicial: Double = 0.0) {
        self.saldo = saldoInicial
    }
    // Operaciones
    /// Realiza un depósito en la cuenta.
    /// Parameter cantidad: La cantidad a añadir al saldo.
    func depositar(cantidad: Double) {
        if cantidad > 0 {
            saldo += cantidad
            print("\n✅ ¡Depósito exitoso! Se han depositado $\(String(format: "%.2f", cantidad))")
            print("Nuevo saldo: $\(String(format: "%.2f", saldo))")
        } else {
            print("\n❌ Error: La cantidad a depositar debe ser positiva.")
        }
    }
    // Función de Retiro (Implementación básica para completar la estructura)
    func retirar(cantidad: Double) -> Bool {
        if cantidad > 0 && saldo >= cantidad {
            saldo -= cantidad
            print("\n✅ ¡Retiro exitoso! Se han retirado $\(String(format: "%.2f", cantidad))")
            print("Nuevo saldo: $\(String(format: "%.2f", saldo))")
            return true
        } else if cantidad <= 0 {
            print("\n❌ Error: La cantidad a retirar debe ser positiva.")
            return false
        } else {
            print("\n❌ Error: Saldo insuficiente. Saldo actual: $\(String(format: "%.2f", saldo))")
            return false
        }
    }
}

/// Ejecuta la aplicación de banca en línea con el menú de opciones.
func ejecutarBancaEnLinea() {
    // Se inicializa la cuenta bancaria con un saldo inicial ficticio para el ejemplo.
    let cuenta = CuentaBancaria(saldoInicial: 1500.50)
    var sesionActiva = true

    print("=========================================")
    print("           BIENVENIDO AL BANCO MEXICO            ")
    print("=========================================")

    // Bucle principal del menú
    while sesionActiva {
        mostrarMenuPrincipal()
        // Capturar la opción del usuario
        guard let entrada = readLine(), let opcion = Int(entrada) else {
            print("\n🚫 Entrada inválida. Por favor, ingrese un número del 1 al 4.")
            continue // Vuelve al inicio del bucle
        }

        switch opcion {
        case 1: // Depósito
            manejarDeposito(cuenta: cuenta)
        case 2, 3: // Retiro o Saldo - Ambas opciones ahora muestran un mensaje de construcción
            print("\n🚧 Opción en Construcción. Por favor, intente con otra operación.")
        case 4: // Salir
            print("\n👋 ¡Sesión cerrada con éxito! Gracias por utilizar el mejor Banco online de Mexico.")
            sesionActiva = false // Termina el bucle y la aplicación
        default:
            print("\n🚫 Opción no reconocida. Por favor, seleccione una opción válida (1-4).")
        }
        // Si la sesión sigue activa y no es la opción Salir, preguntar por otra operación
        if sesionActiva {
            if !preguntarSiContinuar() {
                sesionActiva = false
                print("\n👋 ¡Sesión cerrada con éxito! Gracias por utilizar el mejor Banco online de Mexico.")
            }
        }
    }
}
/// Muestra las opciones del menú principal.
func mostrarMenuPrincipal() {
    print("\n--- MENÚ DE OPERACIONES ---")
    print("1. Depósito")
    print("2. Retiro")
    print("3. Saldo")
    print("4. Salir")
    print("---------------------------")
    print("Ingrese su opción (1-4): ", terminator: "")
}
/// Maneja el flujo de depósitos, incluyendo depósitos múltiples.
func manejarDeposito(cuenta: CuentaBancaria) {
    var deseaOtroDeposito = true
    while deseaOtroDeposito {
        print("\n--- OPERACIÓN DE DEPÓSITO ---")
        print("Ingrese la cantidad a depositar: $", terminator: "")
        // Función auxiliar para preguntar si desea otro depósito
        func preguntarPorOtroDeposito() -> Bool {
            var respuestaValida = false
            var deseaContinuar = false

            while !respuestaValida {
                print("¿Desea realizar otro depósito? (Sí/No): ", terminator: "")
                let respuesta = readLine()?.lowercased() ?? ""

                if respuesta == "si" {
                    deseaContinuar = true
                    respuestaValida = true
                } else if respuesta == "no" {
                    deseaContinuar = false
                    respuestaValida = true
                } else {
                    print("\n⚠️ Respuesta no válida. Por favor, escriba 'Sí' o 'No'.")
                }
            }
            return deseaContinuar
        }
        // Capturar y validar la cantidad
        guard let entradaCantidad = readLine(), let cantidad = Double(entradaCantidad), cantidad > 0 else {
            print("\n❌ Error: Cantidad inválida. Debe ser un número positivo.")
            // Preguntar si desea intentar otro depósito y validar la respuesta
            deseaOtroDeposito = preguntarPorOtroDeposito()

            continue // Vuelve al inicio del bucle `while deseaOtroDeposito`
        }
        // Llama al método depositar de la clase CuentaBancaria.
        cuenta.depositar(cantidad: cantidad)
        // Preguntar si desea realizar otro depósito y validar la respuesta
        deseaOtroDeposito = preguntarPorOtroDeposito()
    }
}
/// Pregunta si el usuario desea realizar otra operación y devuelve un booleano.
func preguntarSiContinuar() -> Bool {
    while true { // El bucle se repite hasta que haya una respuesta válida
        print("\n---------------------------")
        print("¿Desea realizar otra operación? (Sí/No): ", terminator: "")

        guard let respuesta = readLine()?.lowercased().trimmingCharacters(in: .whitespacesAndNewlines) else {
            continue // Si no hay respuesta, repite el bucle
        }
        if respuesta == "si" || respuesta == "sí" {
            return true // Responde "Sí"
        } else if respuesta == "no" {
            return false // Responde "No"
        } else {
            print("🚫 Respuesta inválida. Por favor, ingrese 'Sí' o 'No'.") // Mensaje de error y repite el bucle
        }
    }
}

// Iniciar la aplicación
ejecutarBancaEnLinea()