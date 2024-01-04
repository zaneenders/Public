struct StandardBasis: BaseThemePage {
    var related: [any BaseThemePage.Type] = [
        CoordinateSystems.self, Basis.self, IdentityMatrix.self,
    ]

    var themedContent: String {
        """
        The identity matrix that spans Rn.

        """
    }
}
