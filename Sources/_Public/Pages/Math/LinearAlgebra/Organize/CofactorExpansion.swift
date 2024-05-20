struct CofactorExpansion: BaseThemePage {

    var themedContent: String {
        """
        Also known as the Laplace expansion.

        This is mostly used for calculating the Determinate of matrix bigger then 2x2.

        This is defined as the following 
        TODO Latex

        Cij = (-1)^(i + j) (det (Aij))

        This really only factors out the checkerboard pattern into an actually math expression.
        """
    }
    var related: [any BaseThemePage.Type] = [
        Determinate.self,
        Adjugate.self,
    ]
}
