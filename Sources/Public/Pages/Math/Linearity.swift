struct Linearity: MathWebPage {
    var related: [any MathWebPage.Type] = [
        VectorSpace.self, LinearTransformation.self, Derivative.self,
    ]

    var markupDescription: String {
        """
        Formal Definition:
        Additivity: L(v + w) = L(v) + L(w)
        Scaling: L(cv) = cL(v)

        The Derivative is linear
        - perverse Scaling and Addition
        """
    }
}
