package Question2;

public class ExecutorService
{
    public static void main(String[] args)
    {
        Thread1 t1=new Thread1();
        Thread2 t2=new Thread2();
        t1.start();
        t2.start();

    }
}
