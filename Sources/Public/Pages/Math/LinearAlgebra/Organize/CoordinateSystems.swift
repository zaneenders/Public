struct CoordinateSystems: MathWebPage {

    var markupDescription: String {
        """
        Definition:
        Let B = {b1 ... bp} is a basis for a sub space H. For each x in H, the coordinates of x relative to the basis B are the weights c1, ... cp such that x = c1 b1 + .... + cp bp and the vector in Rp

        [X]B = (c1 ... cp)

        - vector x in terms of B
        TODO Latex

        is called the coordinate vector of x relative to B or the B-coordinate vector of x.

        To test if a vector is in sub space of. Augment with the spanning vectors and row reduce to Echelon form. If the system is consistent. The vector is in the sub space.

        If the system is consistent further reduce to Reduced Row Echelon form to find the coordinates of that vector in the new subspace.


        This is sorta like moving up or down a subspace Rank

        The Unique Representation Theorem
        Let B = {b1, ... bn} be a basis fro a vector space V. Then for each x in V, there exists a unique set of scalars c1, ... cn such that
        TODO Latex, Page 256
            x = c1b1 + ... + cnbn

        Suppose B = {b1, ... bn} is a basis for a vector space V and x is in V. The coordinates of x relative to the basis B or the B coordinates of x are the weights c1 ... cn such that x = c1b1 + ... + cnbn

        [x]_B
        x in terms of basis B

        Expressing vectors in B
        Take the new coordinate vector x and use its values as weights in basis B to get its new basis.

        This new vector x are the coordinates of x relative to the standard basis. E TODO latex, page 256

        Change of Coordinates
        simply solve for X when given A and b

        I think this is the same as solving for x and b or Linear Transformations but this time A describes how to go from one basis to another.

        x->[x]B

        similar to x->Ax

        Let B = {b1 ... bn} be a basis for a vector space V. Then the coordinate mapping x -> [x]B is a one to one linear transformation from V onto Bn


        """
    }

    var related: [any MathWebPage.Type] = [
        StandardBasis.self,
        Basis.self,
        SubspacesOfRn.self,
        RowEchelonForm.self,
        ReducedRowEchelonForm.self,
        Rank.self,
    ]

}
