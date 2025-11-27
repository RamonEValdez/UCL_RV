import Foundation

// Definición de la estructura para un Artículo
struct Articulo {
    let id: Int
    let nombre: String
    let precio: Double
    var stock: Int
}

// 1. Inicializar el catálogo de 4 artículos
var catalogo: [Articulo] = [
    Articulo(id: 1, nombre: "Vestido de Noche", precio: 850.00, stock: 5),
    Articulo(id: 2, nombre: "Blusa de Seda", precio: 320.50, stock: 12),
    Articulo(id: 3, nombre: "Pantalón de Lino", precio: 599.90, stock: 8),
    Articulo(id: 4, nombre: "Falda Plisada", precio: 450.00, stock: 3)
]

// Estructura para almacenar los ítems en el carrito
struct CarritoItem {
    let articulo: Articulo
    var cantidad: Int
}

// Función para obtener una entrada de número entero segura
func obtenerNumeroValido(mensaje: String) -> Int? {
    print(mensaje, terminator: " ")
    guard let input = readLine(), let numero = Int(input) else {
        print("❌ Entrada inválida. Por favor, introduce un número entero.")
        return nil
    }
    return numero
}

// Función para mostrar el catálogo
func mostrarCatalogo() {
    print("\n--- 👗 Catálogo de Boutique Norma 👚 ---")
    print("ID\t| Nombre\t\t| Precio\t| Stock")
    print("---\t| ----------------------| ----------\t|------")
    for articulo in catalogo {
    
        let precioFormateado = String(format: "%.2f", articulo.precio)

        let tabParaNombre = (articulo.nombre.count < 16) ? "\t" : "" 

        print("\(articulo.id)\t| \(articulo.nombre)\(tabParaNombre)\t| $\(precioFormateado)\t| \(articulo.stock)")
    }
    print("-------------------------------------------------")
}

// Lógica principal de la tienda
func iniciarTienda() {
    var seguirComprando = true
    var carrito: [CarritoItem] = []

    print("👋 ¡Bienvenido a la Tienda en Línea de Norma! 👋")

    while seguirComprando {
        mostrarCatalogo()

        print("\nMenú de Opciones:")
        print("1. Comprar un artículo")
        print("2. Finalizar compra y pagar")
        print("3. Salir (sin finalizar compra)")

        guard let opcion = obtenerNumeroValido(mensaje: "Elige una opción (1, 2 o 3):") else {
            continue
        }

        switch opcion {
        case 1:
            guard let idSeleccionado = obtenerNumeroValido(mensaje: "Introduce el ID del artículo que deseas comprar:") else {
                continue
            }

            guard let indiceCatalogo = catalogo.firstIndex(where: { $0.id == idSeleccionado }) else {
                print("❌ El ID del artículo no existe en el catálogo.")
                continue
            }

            let articuloSeleccionado = catalogo[indiceCatalogo]

            if articuloSeleccionado.stock <= 0 {
                print("🚫 El artículo '\(articuloSeleccionado.nombre)' está agotado.")
                continue
            }

            print("¿Cuántas unidades de '\(articuloSeleccionado.nombre)' deseas comprar? (Stock actual: \(articuloSeleccionado.stock))")

            guard let cantidad = obtenerNumeroValido(mensaje: "Cantidad:") else {
                continue
            }

            if cantidad <= 0 {
                print("⚠️ La cantidad debe ser mayor a cero.")
                continue
            }

            if cantidad <= articuloSeleccionado.stock {
                // Realizar la compra
                if let indiceCarrito = carrito.firstIndex(where: { $0.articulo.id == idSeleccionado }) {
                    carrito[indiceCarrito].cantidad += cantidad
                } else {
                    carrito.append(CarritoItem(articulo: articuloSeleccionado, cantidad: cantidad))
                }

                catalogo[indiceCatalogo].stock -= cantidad

                let costoCompra = articuloSeleccionado.precio * Double(cantidad)
                
                print("\n✅ ¡Se agrego a tu carrito!")
                print("Artículo(s) añadido(s): \(cantidad)x \(articuloSeleccionado.nombre)")
                print("El costo de esta adición fue: $\(String(format: "%.2f", costoCompra))")

            } else {
                print("⚠️ No hay suficiente stock. Solo quedan \(articuloSeleccionado.stock) unidades.")
            }

        case 2:
            // Finalizar compra y pagar
            if carrito.isEmpty {
                print("🛒 Tu carrito está vacío. ¡Te invitamos a comprar algo!")
                break
            }

            var totalAPagar: Double = 0.0

            print("\n💳 --- Resumen de Compra --- 💳")
            for item in carrito {
                let costoTotalItem = item.articulo.precio * Double(item.cantidad)
                totalAPagar += costoTotalItem
                print("- Compraste \(item.cantidad)x \(item.articulo.nombre). Total por este artículo: $\(String(format: "%.2f", costoTotalItem))")
            }
            print("------------------------------")
            print("Total Final a Pagar: $\(String(format: "%.2f", totalAPagar))")
            print("¡Gracias por tu compra! Vuelve pronto.")
            seguirComprando = false

        case 3:
            // Salir sin finalizar compra
            print("\n🚪 Has decidido salir. Tu carrito no se guardará. ¡Hasta luego!")
            seguirComprando = false

        default:
            print("❌ Opción no reconocida. Por favor, elige 1, 2 o 3.")
        }
    }
}

// Iniciar la aplicación
iniciarTienda()