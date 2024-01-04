struct JordanCanonicalForm: MathWebPage {

    var markupDescription: String {
        """
        A Matrix is \(Diagonalizable.link) if and only if all of its jordan blocks are 1x1.
        """
    }

    var related: [any MathWebPage.Type] = [
        Diagonalization.self,
        GeometricMultiplicity.self,
        AlgebraicMultiplicity.self,
    ]
}
