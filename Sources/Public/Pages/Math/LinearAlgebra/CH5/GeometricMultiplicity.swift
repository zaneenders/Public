import WebsiteBuilder

struct GeometricMultiplicity: MathWebPage {

    @ParagraphBuilder var markupDescription: String {
        "This is the \(Dimension.link) of an \(EigenSpace.link) for a corresponding \(EigenValue.link)"
    }
}
