import Tags
import WebsiteBuilder

struct InvertingAMatrix: MathWebPage {

    @ParagraphBuilder var markupDescription: String {
        """
        You can invert a 2x2 matrix by using the formula below
        """
        TODO("Add Latex Matrix formula for 2x2 matrix")
        """
        To invert Matrix's that are larger then 2x2. You can augment them with 
        the appropriate size Identity matrix then row reduce till you have the 
        identity matrix to the left and the matrix on the right will be your 
        inverse.
        """
    }

    var related: [any MathWebPage.Type] = []
}
