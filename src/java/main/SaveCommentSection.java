
// removes all vowels (not "y")
public class SaveCommentSection {

    public String save (String comment) {
        return comment.replaceAll("a|e|i|o|u|A|E|I|O|U", "");
    }
}
