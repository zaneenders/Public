struct Adjugate: MathWebPage {

    var markupDescription: String {
        """
        Adjugate or Classical adjoint

        This is the transpose of the matrix A's cofactors of the n x n matrix.
        """
    }

    var related: [any MathWebPage.Type] = [
        CramersRule.self, CofactorExpansion.self,
    ]

}
