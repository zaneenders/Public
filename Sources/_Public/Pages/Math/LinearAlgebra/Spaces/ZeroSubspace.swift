struct ZeroSubspace: BaseThemePage {
    var themedContent: String {
        """
        A set consisting of only the zero vector in a vector space V is a subspace of V, called zero subspace and written as {0}.
        """
    }
    var related: [any BaseThemePage.Type] = [VectorSpace.self]
}
