/**
 * @File Name          : ApexStd00.cls
 * @Description        : Executar calculos matemáticos.
 * @Author             : Mario Oliveira
 * @Group              : 
 * @Last Modified By   : Mario Oliveira
 * @Last Modified On   : 12/12/2019 18:36:57
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    12/12/2019   Mario Oliveira     Initial Version
**/
public class EstudoApex {
	/*
		-> O que este programa fará?
			+ Deverá executar calculos matemáticos e imprimir sues resultados no console.
		-> Quais cálculos executará?
			+ Soma
			+ Subtração
			+ Multiplicação
			+ Divisão
			+ Termo Geral PA
			+ Termo Geral PG
			+ Equação de 1º Gráu 
			+ Equação de 2º Gráu
			+ Juros
			+ Área do Trapezio
			+ Área do quadrado
			+ Volume do Cubo
	*/
    
    public static integer Sum(integer x, integer y)
    {
        integer soma = x+y;
        System.debug('Resultado da soma: '+soma);
        return soma;
    }
    
    public static integer Sub(integer x, integer y)
    {
        integer subt = x-y;
        System.debug('Resultado da subtração: '+subt);
        return subt;
    }
    
    public static integer Mult(integer x, integer y)
    {
        integer multi = x*y;
        System.debug('Resultado da multiplicação: '+multi);
        return multi;
    }
    
    public static double Div(integer x, integer y)
    {
        double divi;
        if(y==0){
            System.debug('Valor não pode ser dividido por zero!');
        }else{
            divi = x/y;
            System.debug('Resultado da divisão: '+divi);
        }
        return divi;
    }
    
    public static double ATrap(integer b1, integer b2, integer h){
        //((B+b).h)/2
        double area = NULL;
        if(b1<0 || b2<0 || h<0){ 
        	System.debug('Valores não podem ser menores do que zero!');
        }else{
            area = ((b1+b2)*h)/2;  
        	System.debug('Resultado Área do Trapezio: '+area);
        }
        return area;
    }
    
    public static integer AQUad(integer l){
        //l^2
        integer areaQ = l*l;  
        System.debug('Resultado Área do Quadrado: '+areaQ);
        return areaQ;
    }
    
    public static integer VCubo(integer lado){
        //(l^2)*l
        integer volume = EstudoApex.AQUad(lado)*lado;  
        System.debug('Resultado Volume do Cubo: '+volume);
        return volume;
    }
    
    public static integer TGPA(integer a1, integer n, integer r){
        //an=a1+(n-1)*r
        integer an;
        if(r!=0){
            an = a1+(n-1)*r;
            System.debug('Resultado Termo Geral da P.A.: '+an);
        }
        return an;
    }
    
    public static double TGPG(integer a1, integer q, integer n){
        // an=a1*(q^(n-1))
        double an;
        if(n>=2){
            double a = (Double) q;
            an = a1*(Math.pow(a,(n-1)));
            System.debug('Resultado Termo Geral da P.G.: '+an);
        }
        return an;
    }
    
    public static integer EqPrimGrau(integer a, integer b, integer x){
        // y = ax+b
        integer y;
        y = a*x+b;
    	System.debug('Resultado Equação do 1º Grau: '+y);
        return y;
    }
    
    public static integer EqSegGrau(integer a, integer b, integer c, integer x1, integer x2){
        // y=ax^2+bx+c
        integer y;
        y = a*x1*x1+b*x2+c;
    	System.debug('Resultado Equação do 2º Grau: '+y);
        return y;
    }
    
    public static double Juros(integer c, integer i, integer n){
        // j=c*i*n
        double j;
        double a = (double) i;
        a /= 100;
        j=c*a*n;
    	System.debug('Resultado Juros: '+j);
        return j;
    }
}