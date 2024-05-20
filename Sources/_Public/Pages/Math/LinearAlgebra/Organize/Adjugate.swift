struct Adjugate: BaseThemePage {

    var themedContent: String {
        """
        Adjugate or Classical adjoint

        This is the transpose of the matrix A's cofactors of the n x n matrix.
        """
    }

    var related: [any BaseThemePage.Type] = [
        CramersRule.self, CofactorExpansion.self,
    ]

}
