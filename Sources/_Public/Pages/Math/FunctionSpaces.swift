struct FunctionSpace: BaseThemePage {

    var themedContent: String {
        """
        Function Space

        Basis Functions
        B0(x) = 1
        B1(x) = x
        B2(x) = x^2
        Bn(x) = x^n

        Function Space <-> Linear Algebra
        Linear Transformation <-> Linear Operators
        Inner Products <-> Dot Products
        Eigenfunctions <-> Eigenvectors

        """
    }
    var related: [any BaseThemePage.Type] = [
        Polynomials.self, Derivative.self, LinearTransformation.self,
    ]

}
