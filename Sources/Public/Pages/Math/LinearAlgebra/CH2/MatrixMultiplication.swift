struct MatrixMultiplication: MathWebPage {

    var markupDescription: String {
        """
        TODO add properties of matrix Multiplication, Page 127

        left to right order matters for multiplication. This is because how how the sizes of the matrices compose together or conflict. For all square matrices this is harder to see or easy to forget.

        In general AB != BA
        The cancellation laws do not hold ofr matrix multiplication. That is if AB = AC, then it is not true in general that B = C
        - If a product AB is the zero matrix you cannot conclude in general that either A = 0 or B = 0

        Matrix Multiplication is not commutative. IE the order in which you multiply matters.
        """
    }

    var related: [any MathWebPage.Type] = [
        RowColumnRule.self
    ]
}
