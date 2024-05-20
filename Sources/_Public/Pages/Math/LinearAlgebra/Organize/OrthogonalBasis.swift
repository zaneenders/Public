struct OrthogonalBasis: BaseThemePage {

    var themedContent: String {
        """
        An \(OrthogonalBasis.self) for a \(SubSpace.link) W of Rn is a \(Basis.link) for W that is also an \(OrthonormalSet.link).
        """
    }

    var related: [any BaseThemePage.Type] = []

}
