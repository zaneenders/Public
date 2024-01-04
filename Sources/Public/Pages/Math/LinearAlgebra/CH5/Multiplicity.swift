import WebsiteBuilder

struct Multiplicity: MathWebPage {

    @ParagraphBuilder var markupDescription: String {
        "An \(EigenValue.link) is said to have multiplicity x if it appears x number of times"
        "A \(SymmetricMatrix.link) eigen values all have multiplicity"
    }
}
