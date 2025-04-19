public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, World from Docker!");
        // Keeps the application running
        while (true) {
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
    }
}
