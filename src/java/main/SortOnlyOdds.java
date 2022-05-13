import java.util.LinkedList;
import java.util.List;

//task:
//https://www.codewars.com/kata/578aa45ee9fd15ff4600090d/train/java
public class SortOnlyOdds {
    public static int[] sortArray(int[] array) {
        boolean[] isEven = new boolean[array.length];
        List<Integer> odds = new LinkedList<>();
        for (int i = 0; i < array.length; i++) {
            if (array[i] % 2 == 0) isEven[i] = true;
            else {
                isEven[i] = false;
                odds.add(array[i]);
            }
        }
        odds.sort(Integer::compare);

        int[] result = new int[array.length];
        for (int i = 0; i < array.length; i++){
            if (isEven[i]) result[i] = array[i];
            else {
                result[i] = odds.get(0);
                odds.remove(0);
            }
        }

        return result;
    }
}
