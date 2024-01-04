struct Dimension: BaseThemePage {

    var themedContent: String {
        """
        The number of vectors that forms a basis for the given subspace.

        Definition:
        The dimension of a nonzero \(SubSpace.link) H, denoted by dim H is the number of \(Vector.link)s in any \(Basis.link) for H. The dimension of the \(ZeroSubspace.link) {0} is defined to be zero.

        The Dimension of Nul A corresponds to the number of free variables in A
        - If there are 3 free variables then the dimension of Nul A is 3.


        Finite Dimensional

        Subspaces of Finite Dimensional Space
        Theorem:
        Let H be a subspace of a finite-dimensional vector space V. Any linearly independent set in H can be expanded, if necessary, to a basis for H. Also H is finite-dimensional and 
        TODO Latex, Page 267 
            dim H <= dim V

        The Basis Theorem
        Let V be a p-dimensional Vector space p>= 1. Any linearly independent set of exactly p elements in V is  automatically a basis for V. Any set of exactly p elements that spans V is automatically a basis for V

        The Dimensions of Nul A, Col A, and Row A
        Definition:
        The rank of an m x n matrix A is the dimension of the column space and the nullity of A is the dimension of the null space.

        Infinite Dimensional
        """
    }
    var related: [any BaseThemePage.Type] = [
        EigenSpace.self,
        VectorSpace.self,
        Rank.self,
        SubspacesOfRn.self,
        NullSpace.self,
        Basis.self,
    ]
}
