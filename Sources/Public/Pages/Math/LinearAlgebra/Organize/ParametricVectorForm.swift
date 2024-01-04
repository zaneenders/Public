struct ParametricVectorForm: BaseThemePage {
    var themedContent: String {
        """
        A set of vectors whose linear combination produces x a vector who produces a b in the span of Ax.

        this expresses all the basic variables in terms of the free variables

        And seems closely related to the general solution


        Steps for writing a solution set of a consistent system in parametric vector form
        - Row reduce the augmented matrix to reduced echelon form.
        - express each basic variable in terms of any free variables appearing in an equation
            - solve for the basic variables for each row vector
        - write a typical solution x as a vector whose entries depend on the free variables if any.
            - create a vector x where each entry is expressed as the right hand side to the solution for the basic variables
            - free variables will just equal them selves or 1 at the end.
        - Decompose x into a linear combination of vectors with numeric entires using the free variables as parameters.

        TODO Latex Example of this
        """
    }
    var related: [any BaseThemePage.Type] = [
        GeneralSolution.self,
        NullSpace.self,
    ]

}
