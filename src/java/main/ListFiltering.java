import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

public class ListFiltering {

    public static List<Object> filterList(final List<Object> list) {
        // Return the List with the Strings filtered out

        List<Object> filtered = new LinkedList<>();

        for (Object o : list) if (o instanceof Integer) filtered.add(o);
        return filtered;
    }

    public static List<Object> filterList2(final List<Object> list) {
        // same but with stream
        return list.stream().filter(c -> c instanceof Integer).collect(Collectors.toList());
    }
}
