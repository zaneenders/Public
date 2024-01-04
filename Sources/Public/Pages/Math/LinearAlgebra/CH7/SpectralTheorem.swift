import WebsiteBuilder

struct SpectralTheorem: MathWebPage {

    @ParagraphBuilder var markupDescription: String {
        "An n x n symmetic matrix A has the following properties"
        unorderedList {
            "A has n real \(EigenValue.link)s, counting \(Multiplicity.link)"
            "The dimension of the \(EigenSpace.link) for each \(EigenValue.link) lambda equals the multiplicity of lambda as a root of the characteristic equation."
            "The eigen spaces are mutually orthogonal, in the sense that eigen vectors corresponding to different eigen values are orthogonal"
            "A is orthogonally Diagonalizeable"
        }
    }
}
