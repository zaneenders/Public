import Tags
import WebsiteBuilder

struct OrthogonalDiagonalization: MathWebPage {
    @ParagraphBuilder var markupDescription: String {
        h3(
            """
            Steps to Orthogonally diagonalize an \(OrthogonalMatrix.link):
            """)
        unorderedList {
            "Find the \(EigenValue.link)s of an Orthogonal matrix."
            "Use the Eigen Values to find the \(EigenVector.link)"
            "we know have the information needed to Diagonalize the matrix"
            "Combined the Eigen values with the \(IdentityMatrix.link) to generate D"
            "Join the Eigen vectors in the same order to Build the Matrix P"
            "Invert P to find P^-1 (P inverse)"
        }
        h3(
            """
            Steps to Orthogonally diagonalize a matrix given its \(EigenVector.link)
            """)
        Question(
            "Given two of three Eigen Vectors is there a way to know which eigen value contains the third Eigen Vector?"
        )
        unorderedList {
            "Multiply the given vectors by the matrix to check if they are \(EigenVector.link) of matrix A"
            "This will give you the Eigen values"
            "You can use these Eigen Values to find any remaining Eigen Vectors"
            "we know of the information needed to Diagonalize the matrix"
            "Combined the Eigen values with the \(IdentityMatrix.link) to generate D"
            "Join the Eigen vectors in the same order to Build the Matrix P"
            "Invert P to find P^-1 (P inverse)"
            "if P is \(OrthogonalMatrix.link) then P^T = P^{-1}"
        }

        "An n x n matrix A is orthogonally diagonalizeable if and only if A is a \(SymmetricMatrix.link)."
    }

    var related: [MathWebPage.Type] = [
        EigenValue.self,
        EigenVector.self,
        IdentityMatrix.self,
        Diagonalization.self,
        Orthogonal.self,
        OrthogonalMatrix.self,
    ]
}
