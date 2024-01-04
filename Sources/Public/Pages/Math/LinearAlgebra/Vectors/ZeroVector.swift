struct ZeroVector: MathWebPage {
    static var name: String {
        "Zero Vector"
    }
    var markupDescription: String {
        """
        The vector that contains only zeros.

        TODO Latex
        """
    }
    var related: [any MathWebPage.Type] = [
        NullSpace.self
    ]
}
