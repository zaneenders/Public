import WebsiteBuilder

struct GeometricMultiplicity: BaseThemePage {

    @ParagraphBuilder var themedContent: String {
        "This is the \(Dimension.link) of an \(EigenSpace.link) for a corresponding \(EigenValue.link)"
    }
}
