import Tags
import WebsiteBuilder

struct DiagonalizationofSymmetricMatrices: LinearAlgebraPage {

    var linearAlgebraContent: String {
        paragraphs {
            """
            A symmetric matrix is a matrix A such that \(Self.aTa)
            """
            """
            Its diagonal entires don't matter but entries out side the diagonal come in pairs
            """
            TODO("Latex example")
            """
            If \(Self.a) is symmetric, then any two \(EigenVector.link) from different \(EigenSpace.link)s are orthogonal
            """
            """
            Because the matrix is a square  \(Self.aInverseEaT)
            """
        }
    }

    var related: [any MathWebPage.Type] = [
        EigenSpace.self, EigenVector.self, Diagonalization.self,
        Orthogonal.self,
    ]

    static let a = latex("A")
    static let aTa = latex("A^T = A")
    static let aInverseEaT = latex("A^{-1} = A^T")
}
