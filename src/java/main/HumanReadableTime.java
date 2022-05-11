// task:
// https://www.codewars.com/kata/52685f7382004e774f0001f7/train/java
public class HumanReadableTime {

    //HH:MM:SS
    public static String makeReadable(int seconds) {
        if (seconds / 359999 > 1) return "99:59:59";
        StringBuilder result = new StringBuilder("");

        //hours
        if (seconds / 3600 > 0) {
            int hours = seconds / 3600;
            // starting 0 if less then 10
            // or else it would look like: 1:00:00
            if (hours / 10 < 1) result.append("0");
            result.append(hours).append(":");
            seconds = seconds % 3600;
        }
        else result.append("00:");

        //minutes
        if (seconds / 60 > 0) {
            int minutes = seconds / 60;
            // starting 0 if less then 10
            // or else it would look like: 00:1:00
            if (minutes / 10 < 1) result.append("0");
            result.append(minutes).append(":");
            seconds = seconds % 60;
        }
        else result.append("00:");

        //seconds
        // starting 0 if less then 10
        // or else it would look like: 00:00:1
        if (seconds / 10 < 1) result.append("0");
        result.append(seconds);

        return result.toString();
    }
}