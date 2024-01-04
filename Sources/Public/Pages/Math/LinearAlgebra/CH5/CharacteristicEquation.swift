struct CharacteristicEquation: MathWebPage {

    var markupDescription: String {
        """
        Instead of plugging in explicit values for λ just find the polynomial for all values of λ.

        When checking if a λ is an egien value of a matrix or not we are checking when the matrix is linearly dependent. Because the matrix has linearly dependent vectors this means it is not invertible by the \(InvertibleMatrixTheorem.link). We can use this fact to find all the eigen values of a give matrix A.

        This formual or equation is called the \(CharacteristicEquation.link) and is of the form \(characteristicEquationString). 

        The solutions to when this equation equals 0 are the eigen values for the matrix A.

        STEPS:
        - subtract the matrix λI from A to
        - this will give you an equation which contains lambdas.
        - find the determinate of this matrix.
        - This will result in a polynomial with λ as a variable.
        - use factoring or completing the sqaure to find the roots of this polynomial.
        """
    }

    var related: [any MathWebPage.Type] = [
        Similarity.self, Determinate.self, FactoringPolynomials.self,
        CompletingTheSquare.self, InvertibleMatrixTheorem.self,
        LinearDependence.self, EigenValue.self,
    ]
}

let characteristicEquationString =
    "det\(latex("(A - \(MathSymbol.lambda) I) = 0"))"
