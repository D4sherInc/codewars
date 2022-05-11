// https://www.codewars.com/kata/5592e3bd57b64d00f3000047/train/java
public class ASum {
    public static long findNb(long m) {
        long n = 0;
        for (long i = 0L; i <= m; n++) {

            if (i == m) return n;
            if (i > m) return -1;
            i += (long) Math.pow(n + 1, 3);
        }
        return -1;
    }
}
