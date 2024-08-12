import java.util.function.BiPredicate;
import java.util.*;
public class Question1 {
    public static void main(String[] args) {
        BiPredicate<String, String> p = (a, b) -> a.contains(b);
        Scanner sc=new Scanner(System.in);
        System.out.println("enter the string ");
        String str=sc.next();
        System.out.println("enter substring ");
        String sub=sc.next();
        System.out.println(sub+" is substring of "+str+" is"+p.test(str,sub));
    }
}