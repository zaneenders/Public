struct FunctionSpace: MathWebPage {

    var markupDescription: String {
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
    var related: [any MathWebPage.Type] = [
        Polynomials.self, Derivative.self, LinearTransformation.self,
    ]

}
