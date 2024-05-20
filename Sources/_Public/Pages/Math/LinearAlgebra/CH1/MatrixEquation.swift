struct MatrixEquation: BaseThemePage {
    var themedContent: String {
        """
        The equation Ax = b has a solution if and only if b is a linear combination of the columns of A.

        The matrix equation is traditional Ax = b

        where A is a matrix and x and b are vectors x of size n and b of size m

        This equation has a solution if and only if b is a linear combination of the columns of A.

        This question can also be phrased as is b in the span of {column vectors of the matrix}.

        Is Ax = b consistent?

        It is much harder to ask is Ax = b consistent for all possible b

        Theorem 4
        \(theorem4Page63)
        """
    }

    var theorem4Page63: String {
        """
        Let A be an m x n coefficient matrix. Then the following statements are logically equivalent. That is, for a particular A, either they are all true statements or they are all false.
        - For each b in Rm, the equation Ax = b has a solution.
        - each b in Rm is a linear combination of the columns of A
        - the columns of A span Rm
        - A has a pivot position in every row
        """
    }

    var rowVectorRuleOfComputingAx: String {
        """
        If the product Ax is defined, then the ith entry in Ax is the sum of the products of the corresponding entries from row i of A and from vector x
        """
    }

    var theorem5: String {
        """
        TODO: add Latex page 65
        """
    }
}
