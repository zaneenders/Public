import Tags
import WebsiteBuilder

struct SymmetricMatrix: MathWebPage {

    @ParagraphBuilder var markupDescription: String {
        "A \(SymmetricMatrix.link) is a matrix which the \(Transpose.link) of its self is the same matrix."

        TODO("Latex Example")

        "If A is Symmetric, than any two \(EigenVector.link)s from different \(EigenSpace.link) are orthogonal."

        TODO("Latex")
        "See rules of \(Transpose.link)"
        latex("A^T = (PDP^T)^T = P^{TT}D^TP^T = PDP^T = A")
    }

    var related: [MathWebPage.Type] = [
        Transpose.self,
        EigenSpace.self,
        EigenVector.self,
        SpectralTheorem.self,
    ]
}
