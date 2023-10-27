using System;

class Calculator
{
    public int Add(int num1, int num2)
    {
        return num1 + num2;
    }

    public double Add(double num1, double num2)
    {
        return num1 + num2;
    }

    public int Add(int num1, int num2, int num3)
    {
        return num1 + num2 + num3;
    }
}

class Program
{
    static void Main(string[] args)
    {
        Calculator calculator = new Calculator();

        int sum1 = calculator.Add(5, 10);
        Console.WriteLine("Sum 1: " + sum1); // Output: Sum 1: 15

        double sum2 = calculator.Add(2.5, 3.7);
        Console.WriteLine("Sum 2: " + sum2); // Output: Sum 2: 6.2

        int sum3 = calculator.Add(1, 2, 3);
        Console.WriteLine("Sum 3: " + sum3); // Output: Sum 3: 6
    }
}
