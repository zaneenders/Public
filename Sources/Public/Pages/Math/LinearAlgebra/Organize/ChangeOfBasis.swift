struct ChangeOfBasis: BaseThemePage {

    var themedContent: String {
        """
        TODO Latex page 275
        Theorem 15


        Change of coordinates matrix form B to C

        Change of Basis in Rn

        Seems to use an Invertible Matrix and The Identity Matrix
        """
    }

    var related: [any BaseThemePage.Type] = [
        Basis.self,
        VectorSpace.self,
    ]
}
