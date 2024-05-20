struct OrthogonalSet: BaseThemePage {

    var themedContent: String {
        """
        A set of vectors is said to be an \(OrthogonalSet.self) if each pair of distinct vectors is distinct from the set is \(Orthogonal.link).
        """
    }

    var related: [any BaseThemePage.Type] = []
}
