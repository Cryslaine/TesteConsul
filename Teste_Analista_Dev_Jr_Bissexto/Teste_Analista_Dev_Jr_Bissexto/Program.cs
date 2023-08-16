//// See https://aka.ms/new-console-template for more information
//Console.WriteLine("Hello, World!");

namespace Teste_Analista_Dev_Jr
{
    class program
    {
        static void Main(string[] args)
        {
            int ano;

            //O ano será informado
            Console.WriteLine("Digite um ano com 4 digitos:");
            ano = int.Parse(Console.ReadLine());

            // A ano tem que ser divisivel por 400, 4 ou 100
            //Ex. de anos Bissexto: 1980, 1984, 1988, 1992, 1996 e 2000 
            if ((ano % 400 == 0) || (ano % 4 == 0) && (ano % 100 != 0))
            {
                Console.WriteLine("O ano {0} é Bissexto!", ano);
            }
            else
            {
                Console.WriteLine("O ano Não é Bissexto!", ano);
            }
        }
    }
}
            