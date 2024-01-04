struct LinearIndependence: MathWebPage {

    var markupDescription: String {
        """

        In short non of the vectors in the set can be scaled or combined with other vectors to produce a given vector. They are all unique given any linear combination of any of the other vectors


        Definition:
        An indexed set of vectors {v_1 ... v_p} in Rn is said to be linearly independent if the vector equation 
        TODO latex page 84 


        The columns of a matrix A are linearly independent if and only if the equation Ax = 0 has only the trivial solution.

        """
    }
    var related: [any MathWebPage.Type] = [
        LinearDependence.self,
        InvertibleMatrixTheorem.self,
    ]
}
