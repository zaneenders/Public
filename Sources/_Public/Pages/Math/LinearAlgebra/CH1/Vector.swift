struct Vector: BaseThemePage {
    var related: [any BaseThemePage.Type] = [VectorSpace.self]

    var themedContent: String {
        """
        Two vectors are only consider equal if there corresponding entires are equal. IE Order matters 

        Addition:
        The sum of two vectors is as simple as adding them row by row.

        Scalar Multiplication:
        Simply multiply all entires of the Vector my the scalar. Resulting in a vector that is scaled by the real number.

        TODO: Algebraic Properties of Rn page 53
        """
    }
}
