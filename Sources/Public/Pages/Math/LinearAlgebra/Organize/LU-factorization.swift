struct LUFactorization: MathWebPage {

    var markupDescription: String {
        """
        this Factors the matrix into two halfs L and U

        L is invertible as 1s are along the diagonal. L is an elementary Matrix.
        - Because L is invertible L^(-1)A = U

        used to find various b vectors from Ax

        With matrix L and U from A we can find a solution for Ax = b by the following

        Ly = b
        Ux = y

        Because L and U are triangular this makes finding b and y much easier.

        L uses the forward phase to find b

        and U used the backward phase

        Avoid row swaps (interchanges)

        Solving for L and U is useful when you need to use A over and over. as this factorization can save lots of work.

        \(Self.algorithm)



        """
    }

    static var algorithm: String {
        """
        Only using row Replacement, don't use scaling or swap.

        Algorithm for an LU factorization of A
        - Reduce A to an echelon form U by a sequence of row operations if possible.
        - Place entires in L such that the same sequence of row operations reduces L to I

        In other words build an Elementary Matrix L such that L(L^(-1)) = I

        Example Steps
        - L will be an m x m matrix for Am in other words if A has 6 rows L will be a 6x6 matrix.
            - create an Identity Matrix of size m x m with the lower half below the ones empty.
        - L will record the operation used to obtain a O there 
            - this is the negation of the scaling done with the replacement operation
            - if you multiply a row by 2 before adding to 0 out a position you will place a -2 in the L matrix at that position.
        """
    }
    var related: [any MathWebPage.Type] = []
}
