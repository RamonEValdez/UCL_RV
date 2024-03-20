using System;

namespace UniversidadUMI
{
    class Program
    {
        static void Main(string[] args)
        {
            // Mensaje de bienvenida
            Console.WriteLine("Bienvenidos a Universidad UMI");
            Console.WriteLine("Por favor ingrese los siguientes datos:");

            // Pedir datos al Estudiante
            Console.Write("Nombre completo: ");
            string nombreCompleto = Console.ReadLine();

            Console.Write("Edad: ");
            int edad = Convert.ToInt32(Console.ReadLine());

            Console.Write("Fecha de Nacimiento (DD/MM/AAAA): ");
            DateTime fechaNacimiento = DateTime.ParseExact(Console.ReadLine(), "dd/MM/yyyy", null);

            Console.Write("Carrera a la que desea ingresar: ");
            string carrera = Console.ReadLine();

            Console.WriteLine();
            // Muestra en la pantalla las gracias
            Console.WriteLine($"Gracias {nombreCompleto} por formar parte de Universidad UMI. Bienvenido a la carrera {carrera}");
            Console.WriteLine();

            // Muestra todos los datos ingresados
            Console.WriteLine("Datos del aspirante:");
            Console.WriteLine($"Nombre completo: {nombreCompleto}");
            Console.WriteLine($"Edad: {edad}");
            Console.WriteLine($"Fecha de Nacimiento: {fechaNacimiento.ToString("dd/MM/yyyy")}");
            Console.WriteLine($"Carrera: {carrera}");

            Console.ReadLine(); //Enter para salir
        }
    }
}