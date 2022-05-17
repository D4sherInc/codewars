// task:
// https://www.codewars.com/kata/515de9ae9dcfc28eb6000001/train/java

public class StringSplit {
    public static String[] solution(String s) {

        String[] result = new String[ ((s.length()+1)/2)];

        int i = 0;

        while(!s.equals("")) {
            if (s.length() > 1) {
                result[i] = s.substring(0,2);
                s = s.substring(2);
            }
            else {
                result[i] = s.substring(0,1).concat("_");
                s = s.substring(1);
            }
            i++;
        }

        return result;
    }
}