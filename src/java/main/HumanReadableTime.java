// task:
// https://www.codewars.com/kata/52685f7382004e774f0001f7/train/java
public class HumanReadableTime {

    //HH:MM:SS
    public static String makeReadable(int seconds) {
        int hours = seconds / 3600;
        int minutes = seconds % 3600 / 60;
        int secs = seconds % 60;

        return String.format("%02d:%02d:%02d", hours, minutes, secs);

    }
}