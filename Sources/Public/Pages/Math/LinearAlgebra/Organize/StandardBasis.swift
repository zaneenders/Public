struct StandardBasis: MathWebPage {
    var related: [any MathWebPage.Type] = [
        CoordinateSystems.self, Basis.self, IdentityMatrix.self,
    ]

    var markupDescription: String {
        """
        The identity matrix that spans Rn.

        """
    }
}
