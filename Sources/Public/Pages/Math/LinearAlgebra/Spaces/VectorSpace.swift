struct VectorSpace: BaseThemePage {

    var themedContent: String {
        """
        Given a set of vectors a vector space describes the space which they cover from scalar multiplication and vector addition.

        A vector space is a nonempty set V of objects, called vectors, on which are defined two operations, called addition and multiplication by scalars (real numbers), subject to the ten axioms (or rules) listed below. The axioms must hold for all vectors u, v, and w in V and for all scalars c and d.

        - The sum of u and v, denoted by u + v, is in V
            - closed under addition
        - u + v = v + u
            - commutative
        - (u + v) + w = u + (v + w)
            - associative
        - There is a zero vector 0 in V such that u + 0 = u
        - for each u in V, there is a vector -u in V such that u + (-u) = 0
            - negative of u
        - The scalar multiple of U by c,denoted by cu, is in V
        - c(u + v) = cu + cv
        - (c + d)u = cu + du
        - c(du) = (cd) u
        - 1u = u

        Subspace of Vector Space
        A subspace of a Vector space V is a subset H of V that has three properties:
        - The zero vector of V is in H
        - H is closed under vector addition. That is for each u and v in H the sum U + v is in H
        - H is closed under multiplication by scalars that is for each u in H and each scalar c the vector cu is in H.


        3B1B Notes

        Determinant and eigenvectors don't care about the coordinate system


        Determinants tells you about how a transformation scales areas
        Eigenvectors stay on there own span during transformations


        both spacial and don't change across spaces?

        Functions are another sense similar to vectors?

        adding functions and adding vectors are similar
        scaling functions and scaling vectors

        The Derivative can be thought of as a linear transformation
        - operators is analogs to transformations.

        Treating Functions like Vector Spaces
        - Linearity

        The Dimension of a Vector Space
        If a vector space V has a basis B = {b1 ... bn} then any set in V containing more than n vectors must be linearly dependent.

        If a vector space V has a basis of n Vectors, then every basis of V must consist of exactly n vectors.

        Definition
        If a vector Space V is spanned by a finite set, then V is said to be finite-dimensional. and the dimension of V written as dim V, si the number of vectors in a basis for V. The dimension of the zero vector space {0} is defined to be zero. If V is note spanned by a finite set, then V is said to be infinite-dimensional.


        """
    }
    var related: [any BaseThemePage.Type] = [

        Dimension.self,
        Vector.self,
        Scalar.self,
        Axiom.self,
        Commutative.self,
        Associative.self,
        SubSpace.self,
        Linearity.self,
        LinearTransformation.self,
        ZeroSubspace.self,
    ]
}
