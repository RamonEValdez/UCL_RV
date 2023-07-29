//Actividad 3. Cálculo de RFC
//Actividad 3. Aplicación para Cálculo de RFC
#include <iostream>
#include <string>
#include <algorithm>

std::string calcRFC(const std::string& nom, const std::string& apellidoPa, const std::string& apellidoMa, const std::string& fechaNacimiento) {
    // Conviertir los apellidos, nombre a mayúsculas y eliminan espacios.
    std::string apellidoPaMayus = apellidoPa;
    std::string apellidoMaMayus = apellidoMa;
    std::string nomMayus = nom;
	std::transform(apellidoPaMayus.begin(), apellidoPaMayus.end(), apellidoPaMayus.begin(), ::toupper);
    std::transform(apellidoMaMayus.begin(), apellidoMaMayus.end(), apellidoMaMayus.begin(), ::toupper);
    std::transform(nomMayus.begin(), nomMayus.end(), nomMayus.begin(), ::toupper);
	// Tomar las primeras 2 letras del apellido paterno
    std::string primerasLetrasApellidoPa = apellidoPaMayus.substr(0, 2);
    // Tomar la primera letra del apellido materno, se asigna "X" si no hay apellido materno.
    std::string primeraLetraApellidoMa;
    if (apellidoMaMayus.empty()) {
        primeraLetraApellidoMa = "X";
    } else {
        primeraLetraApellidoMa = apellidoMaMayus.substr(0, 1);
    }
    // Tomar las primera letras del nombre
    std::string primeraLetrasNom = nomMayus.substr(0, 1);
    // Tomat los últimos dígitos del año de nacimiento
    std::string annusNac = fechaNacimiento.substr(6, 7);
    // Tomar el mes de nacimiento
    std::string mesNac = fechaNacimiento.substr(2, 3);
    // Tomar el día de nacimiento
    std::string diaNac = fechaNacimiento.substr(1, 1);
    // Se combina todo para formar el RFC
    std::string rfc = primerasLetrasApellidoPa + primeraLetraApellidoMa + primeraLetrasNom + annusNac + mesNac + diaNac;
    return rfc;
}
int main() {
    std::string nom;
    std::string apellidoPa;
    std::string apellidoMa;
    std::string fechaNacimiento;
    std::cout << "Ingrese el Nombre: ";
    std::getline(std::cin, nom);
    std::cout << "Ingrese el Apellido Paterno: ";
    std::getline(std::cin, apellidoPa);
    std::cout << "Ingrese el Apellido Materno o (dejar vacío si no tiene): ";
    std::getline(std::cin, apellidoMa);
    std::cout << "Ingrese la Fecha de Nacimiento (formato ddmmaaaa): ";
    std::getline(std::cin, fechaNacimiento);
    std::string rfc = calcRFC(nom, apellidoPa, apellidoMa, fechaNacimiento);
    std::cout << "RFC calculado: " << rfc << std::endl;
    return 0;
}