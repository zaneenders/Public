struct ZeroSubspace: MathWebPage {
    var markupDescription: String {
        """
        A set consisting of only the zero vector in a vector space V is a subspace of V, called zero subspace and written as {0}.
        """
    }
    var related: [any MathWebPage.Type] = [VectorSpace.self]
}
