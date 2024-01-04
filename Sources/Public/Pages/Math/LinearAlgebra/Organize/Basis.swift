struct Basis: BaseThemePage {

    var themedContent: String {
        """
        ??? Can a basis be smaller the Rn? - NO?
        ??? Are there infinite amount of basis?

        The smallest possible spanning set of vectors for a subspace.

        A basis for a subspace H of Rn is a linearly independent set in H that spans H.

        The columns of an invertible n x n matrix form a basis for all of Rn because they are linearly independent and span Rn.

        The identity matrix is also an example of a basis for Rn. This is called the Standard basis.


        The Basis Theorem:
        Let H be a p-dimensional subspace of Rn. Any linearly independent set of exactly p elements in H is automatically a basis for H. Also, any set of p elements of H that spans H is automatically a basis for H.

        Definition:
        Let H be a subspace of a vector space V. A set of vectors B in V is a basis for H if
        - B is a linearly independent set
        - The subspace spanned by B coincides with H that is
            H = Span B

        A basis is an "efficient" spanning set that contains no unnecessary vectors. A basis can be constructed from a spanning set by discarding unneeded vectors.


        A basis is a linearly independent set that is as large as possible. If S is a basis for V and if S is enlarged by one vector say w from V then the new set cannot be linearly independent, because S spans V and w is therefore a linear combination of the elements in S.


        """
    }
    var related: [any BaseThemePage.Type] = [

        RowSpace.self,
        ColumnSpace.self,
        Span.self,
        SubSpace.self,
        LinearIndependence.self,
        SubspacesOfRn.self,
        InvertingAMatrix.self,
        StandardBasis.self,
        IdentityMatrix.self,
        CoordinateSystems.self,
        Dimension.self,
    ]

}
