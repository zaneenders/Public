struct RowSpace: MathWebPage {
    static var name: String {
        "Row Space"
    }
    var markupDescription: String {
        """
        If A is an m x n matrix, each row of A has n entries and thus can be identified with a vector in Rn. The set of all linear combinations of the row vectors is called the row space of A and is denoted Row A

        The number of variables in a vector determines the size of the Row Space.

        If two matrices A and B are row equivalent, then their row spaces are the same. If B is in echelon form, then nonzero rows of B form a basis for the row space of A as  well as for that of B
        """
    }
    var related: [any MathWebPage.Type] = [
        Basis.self,
        LinearCombination.self,
        SubSpace.self,
    ]
}
