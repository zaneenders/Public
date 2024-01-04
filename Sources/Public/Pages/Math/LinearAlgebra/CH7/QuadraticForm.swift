import Tags
import WebsiteBuilder

struct QuadraticForm: BaseThemePage {

    @ParagraphBuilder var themedContent: String {
        h3("\(ChangeOfVariables.link) in a Quadratic Form")
        // Maybe talk more about what we are doing here
        "To do this we will need a Change of coordinates matrix to remove the cross product terms"
        "Changing from standard coordinates to B coordinates"
        unorderedList {
            "Find the matrix of the Quadratic form"
            "Find \(OrthogonalDiagonalization.link) for A"
        }
        h4("Steps to write a Quadratic form with out its cross products")
        orderedList {
            "Construct a matrix from the coefficients of the given quadratic form."
            "Find the \(OrthonormalDiagonalizing.link) for A"
            orderedList {
                "Find the \(EigenValue.link)s of A"
                "Use this this to find the \(EigenSpace.link), which will will give us the \(OrthogonalDiagonalization.link)"
                "But you will often need to go a step further to have an \(OrthonormalBasis.link)"
            }
            "D which is a matrix of the Eigen values of A gives us our new Quadratic form."
            // I think this makes sense
            "We can use P to transform vectors x into vectors y"
        }
        #if DEBUG
            Self.notes
        #endif
        TODO(
            "Latex exmaple for writing a matrix in Quadraic form and vis versa")
    }

    var related: [BaseThemePage.Type] = [
        Scalar.self,
        Diagonalization.self,
        Dimension.self,
        CrossProduct.self,
        ChangeOfVariables.self,
    ]
}

extension QuadraticForm {
    static let xTAx = latex("x^TAx")

    @ParagraphBuilder static var notes: String {
        h3("Notes from 23-11-27")
        paragraphs {
            """
            Quadratic form
                a function (Rn : Matrix) -> Real Scalar
                Matrix Must be symmetric and computed as 
                    \(Self.xTAx)

            So we can create a Matrix with \(Self.xTAx) which we can then "Pass in" a vector x and get out a real number.
            """
            """
            The Coefficients of the quadratic form is the diagonal entries of A
                - Well not all of them there may be \(CrossProduct.link)s
                    - this can be guaranteed by a \(ChangeOfVariables.link)
                - If there are Cross Products they will be split evenly.

            The number of x variables in the quadratic form will be equal to the \(Dimension.link) of the Matrix.
            """
            """
            If A is symetric then A is orthogonal Diagonalizeable
                \(Diagonalization.pdpT)
                \(latex("p^{-1} = P^T"))
            """
            TODO("Finish Latex example")
            """
            so any quadratic form can be written in terms of coordinate vector x with respect to orthonormal basis of eigen vectors.
            """
            Question("What does this mean?")
            h3("Principal Axis Theorem")
            TODO("Know this for the final")
            """
            There is an equivalent Matrix that has no cross products.
            This relies on the \(Diagonalization.link) of a Matrix.
            """
            TODO("Latex Example")
            """
            Principle Axis Theorem ends up being the eigen values as coefficients with the corresponding y terms squared.
            """
            h3("Classification")
            unorderedList {
                "Positive definite if its always positive for all values of x, x can not equal 0"
                "Negative definite if always negative for all x. Again x can not equal 0"
                "Indefinite if \(Self.xTAx) has both negative and positive outputs"
            }
            Question("Why classify them?")
            TODO("fill out semi definitions from book")
        }
    }
}
