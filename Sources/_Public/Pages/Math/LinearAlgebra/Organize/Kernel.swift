struct Kernel: BaseThemePage {
    var themedContent: String {
        """
        Kernel can be thought of as the Null space of a transformation
        """
    }
    var related: [any BaseThemePage.Type] = [
        NullSpace.self
    ]
}
