struct LinearSystemOfEquations: MathWebPage {
    var markupDescription: String {
        """
        A system of linear equations has one of the following
        No solution

        Theorem 2 Existence and Uniqueness Theorem
        A linear system is consistent if and only if the rightmost column of the augmented matrix is not a pivot column. If and only if an echelon form of the augmented matrix has no row of the form
        [0 ... 0 b] with b nonzero
        If a linear system is consistent, then the solution set contains either
        - a unique solution, when there are no free variables
        - infinitely many solutions when there is at least one free variables
        """
    }
}
