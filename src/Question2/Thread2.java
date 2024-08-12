package Question2;

public class Thread2 extends Thread {
    public void run() {
        for (int i = 0; i < 10; i++) {
            System.out.println(i);
            try {
                Thread1.sleep(1000);
            } catch (Exception e) {
                try {
                    throw new ThreadPoolExecutor("error");
                } catch (ThreadPoolExecutor ex) {
                    throw new RuntimeException(ex);
                }
            }
        }
    }
}
