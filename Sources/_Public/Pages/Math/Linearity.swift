struct Linearity: BaseThemePage {
    var related: [any BaseThemePage.Type] = [
        VectorSpace.self, LinearTransformation.self, Derivative.self,
    ]

    var themedContent: String {
        """
        Formal Definition:
        Additivity: L(v + w) = L(v) + L(w)
        Scaling: L(cv) = cL(v)

        The Derivative is linear
        - perverse Scaling and Addition
        """
    }
}
