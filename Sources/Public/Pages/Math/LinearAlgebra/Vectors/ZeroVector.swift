struct ZeroVector: BaseThemePage {
    static var name: String {
        "Zero Vector"
    }
    var themedContent: String {
        """
        The vector that contains only zeros.

        TODO Latex
        """
    }
    var related: [any BaseThemePage.Type] = [
        NullSpace.self
    ]
}
