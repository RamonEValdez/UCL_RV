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
        case 2: // Retiro
                manejarRetiro(cuenta: cuenta) // Nueva función para manejar retiros
        case 3: // Saldo
                print("\n--- SALDO DE CUENTA ---")
                print("Su saldo actual es: $\(String(format: "%.2f", cuenta.obtenerSaldo()))")
                print("-----------------------")
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
/// Pregunta si el usuario desea realizar otra operación (genérica) y devuelve un booleano.
func preguntarSiContinuar() -> Bool {
    while true { // El bucle se repite hasta que haya una respuesta válida
        print("\n---------------------------")
        print("¿Desea realizar otra operación? (Sí/No): ", terminator: "")

        guard let respuesta = readLine()?.lowercased().trimmingCharacters(in: .whitespacesAndNewlines) else {
            continue 
        }
        if respuesta == "si" || respuesta == "sí" {
            return true 
        } else if respuesta == "no" {
            return false 
        } else {
            print("🚫 Respuesta inválida. Por favor, ingrese 'Sí' o 'No'.") 
        }
    }
}
/// Pregunta si el usuario desea realizar otro depósito o retiro.
func preguntarPorOtraOperacion(tipo: String) -> Bool {
    var respuestaValida = false
    var deseaContinuar = false

    while !respuestaValida {
        print("¿Desea realizar otro \(tipo)? (Sí/No): ", terminator: "")
        let respuesta = readLine()?.lowercased().trimmingCharacters(in: .whitespacesAndNewlines) ?? ""

        if respuesta == "si" || respuesta == "sí" {
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
/// Maneja el flujo de depósitos, incluyendo depósitos múltiples.
func manejarDeposito(cuenta: CuentaBancaria) {
    var deseaOtroDeposito = true
    while deseaOtroDeposito {
        print("\n--- OPERACIÓN DE DEPÓSITO ---")
        print("Ingrese la cantidad a depositar: $", terminator: "")
        // Capturar y validar la cantidad
        guard let entradaCantidad = readLine(), 
              let cantidad = Double(entradaCantidad), 
              cantidad > 0 
        else {
            print("\n❌ Error: Cantidad inválida. Debe ser un número positivo.")
            // Usar la función auxiliar corregida
            deseaOtroDeposito = preguntarPorOtraOperacion(tipo: "depósito")

            continue 
        }
        // Llama al método depositar de la clase CuentaBancaria.
        cuenta.depositar(cantidad: cantidad)
        // Preguntar si desea realizar otro depósito y validar la respuesta
        deseaOtroDeposito = preguntarPorOtraOperacion(tipo: "depósito")
    }
}
/// Maneja el flujo de retiros, incluyendo retiros múltiples.
func manejarRetiro(cuenta: CuentaBancaria) {
    var deseaOtroRetiro = true
    while deseaOtroRetiro {
        print("\n--- OPERACIÓN DE RETIRO ---")
        print("Ingrese la cantidad a retirar: $", terminator: "")
        // Capturar y validar la cantidad
        guard let entradaCantidad = readLine(), 
              let cantidad = Double(entradaCantidad), 
              cantidad > 0 
        else {
            print("\n❌ Error: Cantidad inválida. Debe ser un número positivo.")
            // Usar la función auxiliar corregida
            deseaOtroRetiro = preguntarPorOtraOperacion(tipo: "retiro")

            continue 
        }
        // Llama al método retirar de la clase CuentaBancaria.
        let _ = cuenta.retirar(cantidad: cantidad)
        // Preguntar si desea realizar otro retiro y validar la respuesta
        deseaOtroRetiro = preguntarPorOtraOperacion(tipo: "retiro")
    }
}
// Iniciar la aplicación
ejecutarBancaEnLinea()