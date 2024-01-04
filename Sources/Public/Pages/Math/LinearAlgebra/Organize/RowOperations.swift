import Tags
import WebsiteBuilder

struct RowOperations: MathWebPage {

    @ParagraphBuilder var markupDescription: String {
        """
        Partitioned or block matrix

        TODO Latex examples

        Scalar addition applies

        Matrix Multiplication applies to Blocks where the Block Matrices sizes respect the rules of normal Matrix multiplication.

        Block Diagonal matrix
        - a partitioned matrix with zero blocks outsize of the diagonal.
        - this matrix is invertible as long as all the diagonal blocks are invertible

        """
        Question("When we should and shouldn't use these?")
        h3("Can't use")
        unorderedList {
            ""
        }
        h3("Can use")
        unorderedList {
            "When \(aTag("Inverting", to: InvertingAMatrix.url)) a 3x3 matrix when augmented with an \(IdentityMatrix.link)"
        }
    }

    var related: [any MathWebPage.Type] = [
        Determinate.self, RowEchelonForm.self, ReducedRowEchelonForm.self,
    ]
}
