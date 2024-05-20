struct InvertibleMatrixTheorem: BaseThemePage {

    var themedContent: String {
        """
        If one of the following is true then all are true.
        All matrices will be either singular (non invertible) or non-singular (invertible)

        - A is invertible
        - If A is row equivalent to the Identity matrix.
            - there is a set of row operations that can reduce A into I
        - A has n pivot positions
            - meaning there is a pivot in every row and there are n number of columns. m = n
        - The equation Ax = 0 has only the trivial solution.
        - The columns of A are linearly independent
        - The linear transformation with the standard Matrix A (T: x-> Ax) is one-to-one
        - The equation Ax = b has at least one solution for each b in Rn
            - Because of the matrix being n x n there is only one solution for each b
        - The columns of A span Rn
        - The linear transformation x -> Ax maps Rn onto Rn
        - the linear transformation with the standard Matrix A  (T: x-> Ax) is onto
        - There exists some n x n matrix C such that CA = I_n (n = cols)
        - There exists some n x n matrix D such that AD = I_n (n = cols)
        - The Transpose matrix A^T is invertible
        - The determinant of A is nonzero 
            - det(A) != 0
        - The columns of A form a basis for Rn
        - Col A = Rn
            - The column space of A = Rn
            - The column space of A is equal to Rn
        - rank A = n
            - The rank of A is n
                - the dimension of the column space of A
        - dimension of Null A = 0
            - the null space of A is NulA = {0}
            - the determinate of a invertible matrix is nonzero
            - The dimension of the null space of A is 0
        - The columns of A form a basis for Rn
        - Col A = Rn
        - rank A = n
        - nullity A = 0
        - Nul A = {0}
        - 0 is not an eigenvalue of A
        """
            // Not reviewed yet
            + """
            - the linear transformation with the standard Matrix A  (T: x-> Ax) is an isomorphism.
            - The orthogonal complement of the column space of A is {0}
            - The orthogonal complement of the null space of A is Rn
            - The matrix A has n nonzero singular values
            """
    }
    var related: [any BaseThemePage.Type] = [
        Basis.self,
        ColumnSpace.self,
        Rank.self,
        NullSpace.self,
        Dimension.self,
        LinearTransformation.self,
        TrivialSolution.self,
        LinearIndependence.self,
        Span.self,
        Determinate.self,
    ]
}
