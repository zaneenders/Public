struct GeneralSolution: MathWebPage {
    var markupDescription: String {
        """
        The general solution is a set of vectors that all solutions are some scalar multiple or linear combination of.

        when all zeros are plugged into the general solution this produces the trivial solution.

        nontrival solutions may contain zeros just can't all be zeros

        TODO latex examples

        STEPS:
        For a matrix that is row reduced and has free variables there exists an Null Space for that matrix.
        To find an explicit description of the null space.
        - Reduce the matrix to Reduced Row Echelon Form. 
        - Put each row vector back in-terms of x1 though xn.
        - Solve for the basic variable. 
        - This will give you an equation for the basic variable in terms of the free variables. 
        - You can then write this in parametric vector form.


        """
    }
    var related: [any MathWebPage.Type] = [
        ParametricVectorForm.self,
        FreeVariables.self,
        BasicVariables.self,
        ReducedRowEchelonForm.self,
        EigenSpace.self,
        NullSpace.self,
    ]

}
