import Tags
import WebsiteBuilder

struct Normal: BaseThemePage {
    @ParagraphBuilder var themedContent: String {
        """
        A vector for which its "Length" is equal to 1.
        """
        TODO("Latex example")
        "sqrt(v dot v)"
        NormalizedVector.link
    }
}
