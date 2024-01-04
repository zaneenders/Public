struct SubspacesOfRn: MathWebPage {

    var markupDescription: String {
        """
        Definition:

        A subspace of Rn is any set H in Rn that has three properties:
        - The zero vector is in H
        - for each u and v in H, the sum u + v is in H
        - for each u in H and each scalar c, the vector cu is in H.

        a subspace is closed under addition and scalar multiplication.

        A line through the origin is an example of a subspace. as well as a plane.

        The zero subspace is a set containing only the zero vector in Rn.

        A line is an example of a one vector subspace.


        It can be shown that if a subspace H has a basis of p vectors, then every basis of H must consist of exactly p vectors.
        """
    }
    var related: [any MathWebPage.Type] = [
        ColumnSpace.self,
        NullSpace.self,
        RowSpace.self,
        Basis.self,
        CoordinateSystems.self,
        Dimension.self,
    ]
}
