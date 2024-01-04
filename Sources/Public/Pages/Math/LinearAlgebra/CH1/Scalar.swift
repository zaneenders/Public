struct Scalar: MathWebPage {
    var related: [any MathWebPage.Type] = [VectorSpace.self]

    var markupDescription: String {
        """
        Two vectors are only consider equal if there corresponding entires are equal. IE Order matters 

        Addition:
        The sum of two vectors is as simple as adding them row by row.

        Scalar Multiplication:

        """
    }
}
