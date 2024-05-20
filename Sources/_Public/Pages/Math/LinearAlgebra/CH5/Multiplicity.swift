import WebsiteBuilder

struct Multiplicity: BaseThemePage {

    @ParagraphBuilder var themedContent: String {
        "An \(EigenValue.link) is said to have multiplicity x if it appears x number of times"
        "A \(SymmetricMatrix.link) eigen values all have multiplicity"
    }
}
