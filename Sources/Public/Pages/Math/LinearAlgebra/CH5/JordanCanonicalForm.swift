struct JordanCanonicalForm: BaseThemePage {

    var themedContent: String {
        """
        A Matrix is \(Diagonalizable.link) if and only if all of its jordan blocks are 1x1.
        """
    }

    var related: [any BaseThemePage.Type] = [
        Diagonalization.self,
        GeometricMultiplicity.self,
        AlgebraicMultiplicity.self,
    ]
}
