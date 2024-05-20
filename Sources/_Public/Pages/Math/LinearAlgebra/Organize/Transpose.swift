import Tags
import WebsiteBuilder

struct Transpose: BaseThemePage {
    var related: [any BaseThemePage.Type] = [OrthogonalMatrix.self]

    @ParagraphBuilder var themedContent: String {
        """
        The transpose of a matrix is to flip the entires over the diagonal. The rows of A become the columns of A^T

        the transpose of a product of matrices equals the product of their transposes in the reverse order
        AB^T = B^T(A^T)
        """
        TODO("Theorem 3 page 130 seems to contridict is self right after")
    }
}
