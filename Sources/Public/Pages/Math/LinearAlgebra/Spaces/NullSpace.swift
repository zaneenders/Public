struct NullSpace: MathWebPage {
    var markupDescription: String {
        """
        The solution set of all x that satisfy Ax = 0 the null space of A.

        Definition:
        The null space of a matrix A is the set Nul A of all solutions of the \(Homogeneous.link) Equation Ax = 0

        When A has n columns the solutions of Ax = 0 belong to Rn, and the null space of A is a subset of Rn. In face, Nul A  A has the properties of a subspace of Rn

        The null space of an m x n matrix A is a subspace of Rn. Equivalently, the set of all solutions of a system Ax = 0 of m homogeneous linear equations in n unknowns is a subspace of Rn

        To calculate the Null space of a matrix. First find the a solution to the \(Homogeneous.link) Equation Ax = 0. The put this solution in parametric vector form for the general solution for the null space. This set of vectors can be used to explicitly test if vectors are in the null space or not. This parametric description of the null space will be linearly independent.

        TODO add Latex examples.

        Nul A = {x : x is in Rn and Ax = 0}

        or, Nul A is the set of all x in Rn that are mapped into the zero vector of Rn through a linear transformation x-> Ax

        Kernel of a transformation
        """
    }
    var related: [any MathWebPage.Type] = [
        EigenSpace.self,
        Kernel.self,
        Span.self,
        SubSpace.self,
        ZeroVector.self,
        SolutionSet.self,
        SubspacesOfRn.self,
        Homogeneous.self,
        ParametricVectorForm.self,
        GeneralSolution.self,
        Dimension.self,
        InvertibleMatrixTheorem.self,
    ]
}
