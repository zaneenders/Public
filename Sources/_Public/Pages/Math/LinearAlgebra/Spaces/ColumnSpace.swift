struct ColumnSpace: BaseThemePage {

    var themedContent: String {
        """
        The column space of a matrix A is a the set of col A

        If A = [a_1 ... a_n] with the columns in Rm, then Col A is the same as Span {a_1 ... a_n}

        The column Space of an mxn matrix is a subspace of Rm
        - Col A equals Rm only when the columns of A span Rm, Other wise Col A is only part of Rm

        To find a basis for the column Space. This is simply the set of vectors that contain pivots. Or the Pivot Columns.

        The pivots columns of matrix A form a basis for the column space of A.


        The column space of an m x n matrix A, written as Col A is the set of all linear combinations of the columns of A.
        If A = [a1 ... an] then Col A = Span{a1 ... an}

        Col A = {b : b = Ax for some x in Rn}

        The column space of an m x n matrix A is all of the Rm if and only if the equation Ax = b has a solution for each b in Rm

        The columns of a Matrix A form a basis for Col A
        """
    }
    var related: [any BaseThemePage.Type] = [
        SubSpace.self,
        SubspacesOfRn.self,
        Basis.self,
        InvertibleMatrixTheorem.self,

    ]
}
