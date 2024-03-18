import java.util.Scanner;

public class Ex10{
  public static enum Genrer{
    MALE,
    FEMALE,
  };

  public static void main(String[] args){
    Scanner scanner=new Scanner(System.in);

    System.out.print("Digite seu nome: ");
    String name=scanner.nextLine();

    System.out.print("Digite sua altura: ");
    double height=scanner.nextDouble();

    System.out.print("Digite seu genero (M/F): ");
    Genrer genrer=scanner.next().charAt(0)=='M'?Genrer.MALE:Genrer.FEMALE;
    double idealWeight=0;

    if(genrer==Genrer.MALE)idealWeight=72.7*height-58;
    else idealWeight=62.1*height-44.7;

    System.out.println(idealWeight);

    scanner.close();
  }
}
