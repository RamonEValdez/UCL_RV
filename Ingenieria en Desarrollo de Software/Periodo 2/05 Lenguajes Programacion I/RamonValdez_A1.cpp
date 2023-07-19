//Saber si la persona a ingresar la edad es mayor o menor.
#include <iostream>
using namespace std;
int main()
{
    int edad;
    cout<<"Ingresa tu edad: ";cin>>edad;
    if(edad>=18){
        cout<<"Eres mayor de edad e independiente.";
    }
    else if(edad<18){
        cout<<"Eres menor de edad y dependes de tus padres";
    }
    return 0;
}

