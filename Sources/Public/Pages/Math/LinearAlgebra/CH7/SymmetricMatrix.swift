import Tags
import WebsiteBuilder

struct SymmetricMatrix: BaseThemePage {

    @ParagraphBuilder var themedContent: String {
        "A \(SymmetricMatrix.link) is a matrix which the \(Transpose.link) of its self is the same matrix."

        TODO("Latex Example")

        "If A is Symmetric, than any two \(EigenVector.link)s from different \(EigenSpace.link) are orthogonal."

        TODO("Latex")
        "See rules of \(Transpose.link)"
        latex("A^T = (PDP^T)^T = P^{TT}D^TP^T = PDP^T = A")
    }

    var related: [BaseThemePage.Type] = [
        Transpose.self,
        EigenSpace.self,
        EigenVector.self,
        SpectralTheorem.self,
    ]
}
