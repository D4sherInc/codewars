import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class SaveCommentSectionTest {

    @Test
    void save() {
        assertEquals("Ths wbst s fr lsrs LL!", new SaveCommentSection().save("This website is for losers LOL!"));
        assertEquals(" wll fck yr mthr", new SaveCommentSection().save("I will fuck your mother"));

    }
}