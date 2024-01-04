import Tags

struct GramSchmidtProcess: BaseThemePage {
    var themedContent: String {
        """
        This process can be use to create an Orthogonal set of vectors for a given set of vectors describing a \(SubSpace.link).
        """
        TODO("Latex Example")
        """
        """
    }

    var related: [any BaseThemePage.Type] = [InnerProduct.self, SubSpace.self]
}
