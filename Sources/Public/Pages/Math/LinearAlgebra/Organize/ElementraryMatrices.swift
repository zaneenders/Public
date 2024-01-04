struct ElementaryMatrices: BaseThemePage {

    var themedContent: String {
        """
        An elementary matrix is one that is obtained by performing a single elementary row operation on an identity matrix.

        Probably uses the world elementary as they are pretty simple to construct or the can't be very complicated because of there restriction.


        If an elementary row operation is performed on an m x n matrix A, the resulting matrix can be written as EA, where the m x m matrix E is created by performing the same row operation on I_m

        Elementary matrices are invertible because operations are reversible

        The inverse of the Elementary matrices is the matrix with the row operation that undoes the row operation performed to obtain the Original Elementary matrices.

        Theorem 7
        An n x n matrix A is invertible if and only if A is row equivalent to I_n, and in this case, any sequence of elementary row operations that reduces A to I_n also transforms I_n into A^(-1)
        - So if you apply the row operations that reduce A to I again you will obtain A^(-1) or the inverse of A
        - Proof~
            - Because A is invertible it is an n x n matrix and Ax = b has a solution for each B meaning that there is a pivot in every row. Because A is a square matrix the pivots are all along the diagonal meaning that if you row reduce A you will get I_n and if you apply those row operations again you will get the inverse of A
            - \(MatrixInverse.theorem5)

        """
    }
    var related: [any BaseThemePage.Type] = [

        ]
}
