struct Rank: BaseThemePage {

    var themedContent: String {
        """
        ??? I don't fully understand this yet.


        The rank of a Matrix A, denoted by Rank A is the dimension of the column space of A

        The Rank Theorem:
        If a matrix A has n columns, then the rank A + dim Nul A = n
        - n is the total number of columns in A

        - rank A + nullity A = number of columns in A

        The rank of A canbe found by the number of pivot columns in A
        the Rank of Row A is also equal to the number of pivots in A
        """
    }

    var related: [any BaseThemePage.Type] = [
        Dimension.self,
        CoordinateSystems.self,
        ColumnSpace.self,
        InvertibleMatrixTheorem.self,
    ]

}
