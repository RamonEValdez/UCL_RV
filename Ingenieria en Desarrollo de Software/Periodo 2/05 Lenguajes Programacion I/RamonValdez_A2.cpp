//Actividad 2:Operaciones basicas en C++
//Actividad 2: Suma, Resta, Multiplicación y División
#include <iostream>
using namespace std;
float sumar( float a, float b);
float restar(float a, float b);
float multiplicar(float a, float b);
float divicion(float a, float b);

float sumar( float a, float b){
	float suma = a + b;
	return suma;
}

float restar( float a, float b){
	float resta = a - b;
	return resta;
}

float multiplicar( float a, float b){
	float multi = a * b;
	return multi;
}

float divicion( float a, float b){
	float divid = a / b;
	return divid;
}

int main ()
{
	float a,b,result;
	cout<< "Ingresa 2 Numero:";	cin>> a >> b;
	result = sumar(a,b);
	cout<< "La suma es la siguiente:"<<result <<endl;
	result = restar(a,b);
	cout<< "La resta es la siguiente:"<<result <<endl;
	result = multiplicar(a,b);
	cout<< "La mulriplicacion es la siguiente:"<<result <<endl;
	result = divicion(a,b);
	cout<< "La divicion es la siguiente;"<<result;
	return 0;
}