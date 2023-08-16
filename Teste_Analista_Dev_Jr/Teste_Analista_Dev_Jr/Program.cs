//// See https://aka.ms/new-console-template for more information
//Console.WriteLine("Hello, World!");

namespace Teste_Analista_Dev_Jr
{
    class program
    {
        static void Main(string[] args)
        {
            int numero1;
            int numero2;
            

            //Entrada do primeiro numero
            Console.WriteLine("Digite o primeiro número:");  
            numero1 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Digite o segundo número:");
            numero2 = Convert.ToInt32(Console.ReadLine());



            if (numero1 < numero2 || numero2 < numero1)
            {
                if (numero1 < numero2)
                {
                    double elevado = Math.Pow(numero1, 2);
                    Console.WriteLine("Resultado do numero ao quadrado: " + elevado);

                    double raiz = Math.Sqrt(numero2);
                    Console.WriteLine("Resultado da Raiz quadrada numero: " + raiz);
                }
                else
                {
                    double raiz = Math.Sqrt(numero1);
                    Console.WriteLine("Resultado da Raiz quadrada: " + raiz);

                    double elevado = Math.Pow(numero2, 2);
                    Console.WriteLine("Resultado do numero ao quadrado: " + elevado);
                }
            }
            else
            {
                Console.WriteLine("Você digitou números iguais. ");
            }


            


        }

    }
    

}