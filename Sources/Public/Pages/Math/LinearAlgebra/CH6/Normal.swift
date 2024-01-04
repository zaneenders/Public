import Tags
import WebsiteBuilder

struct Normal: MathWebPage {
    @ParagraphBuilder var markupDescription: String {
        """
        A vector for which its "Length" is equal to 1.
        """
        TODO("Latex example")
        "sqrt(v dot v)"
        NormalizedVector.link
    }
}
