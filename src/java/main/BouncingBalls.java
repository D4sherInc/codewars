//task:
// https://www.codewars.com/kata/5544c7a5cb454edb3c000047/java
public class BouncingBalls {
    public static int bouncingBall(double height, double bounce, double window) {
        if (height <= 0.0 || bounce <= 0.0 || bounce >= 1.0 || window >= height) return -1;
        int bounces = 0;

        for (int n = 0; height > window; bounces++) {
             if (n%2 == 0) height = height* bounce;
             n++;
        }
        return bounces;
    }
}
