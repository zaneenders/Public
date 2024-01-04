struct CramersRule: MathWebPage {

    var markupDescription: String {
        """
        Cramer's rule can be used to see how Ax = b is affected by changes in entries of b. This is usually done with computers like most of linear Algebra.

        Let A be an invertable n x n matrix for any b in Rn, the unique solution x of Ax = b has entires given by

        TODO Latex
        xi = det(Ai(b))/det(A) 
        for i...n

        In other words substitute b in for the ith column in A and compute is determinate. Then do so for each column of A with b. This will give you n entires which when put in order is the vector x_n.

        This also allows us to derive the following formal for the Inverse.

        An Inverse Formula
        Let A be an invertible n x n matrix. Then

        A^(-1) = (1/det(A)) adj(A)

        adj(A) is the adjugate of A
        """
    }

    var related: [any MathWebPage.Type] = [
        Determinate.self
    ]
}
