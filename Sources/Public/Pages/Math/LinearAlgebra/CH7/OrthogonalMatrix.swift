import WebsiteBuilder

struct OrthogonalMatrix: BaseThemePage {

    @ParagraphBuilder var themedContent: String {
        """
        An Orthogonal Matrix is a matrix in which it's transpose is also its inverse.
        """
        """
        For this to happen the matrix's column vectors need to be \(OrthonormalSet.link)
        """
        """
        To check for this simply check that all the column vectors are Orthogonal to each other and that each vector is \(Normal.link).
        """
        "A square matrix may be made an Orthogonal matrix by using the \(GramSchmidtProcess.link)."
    }

    var related: [any BaseThemePage.Type] = [
        Transpose.self,
        OrthonormalSet.self,
    ]

    static var pInverse = latex("P^-1")
}
