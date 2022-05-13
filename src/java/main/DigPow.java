//task:
//https://www.codewars.com/kata/5552101f47fc5178b1000050/train/java
public class DigPow {

    public static long digPow(int n, int p) {
        int sum = 0;
        for (char m : Integer.toString(n).toCharArray()) {
            sum += Math.pow(Character.getNumericValue(m), p);
            p++;
        }

        if (sum % n == 0) return sum / n;
        return -1;
    }
}
