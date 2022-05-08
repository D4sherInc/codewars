// https://www.codewars.com/kata/5592e3bd57b64d00f3000047/train/java
public class ASum {
    public static long findNb(long m) {
        int n = 0;
        for (long i = 0L; i <= m; n++) {
            if (i == m) return n;
            i += Math.pow(n + 1, 3);
        }
        return -1;
    }

    public static long testFailed(long m) {
        int n = 0;
        for (long i = 0L; i <= m; i++) {
            n += Math.pow(i, 3);
        }
        return n;
    }
}
