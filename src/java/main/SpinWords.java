import java.util.Arrays;
import java.util.stream.Collectors;

public class SpinWords {

    public String spinWords(String sentence) {
        return Arrays.stream(sentence.split("\\s+"))
                .map(s -> s.length() < 5 ? s : new StringBuffer(s).reverse().toString())
                .collect(Collectors.joining(" "));
    }
}