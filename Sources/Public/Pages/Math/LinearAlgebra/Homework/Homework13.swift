import Tags
import WebsiteBuilder

extension LinearAlgebra {
    struct Homework13: MathWebPage {

        @ParagraphBuilder var markupDescription: String {
            h3("28")
            Question("Is this right?")
            """
            We are trying to Prove that B is Symmetric given B = PDP^T and P^T = P^-1
            """

            "We can use the theorem"
            "If A is Symmetric, than any two \(EigenVector.link)s from different \(EigenSpace.link) are orthogonal."

            "I think we also need to use P^T = P^-1"
            "This is true if P is an \(OrthogonalMatrix.link)"

            h4("Answer")
            """
            True
            If B = PDP^T and P^T = P^-1
            Then the columns vectors of P are orthogonal to each other because 
            P must be an \(OrthogonalMatrix.link) for P^T to equal 
            \(Self.pInverse). Because P is an orthogonal matrix compose of the 
            \(EigenVector.link) of B. The \(EigenVector.link) of B are all 
            orthogonal to each other and thus P must be symmetric.
            Because D is a diagonal matrix it is also symmemtric. So composing 
            PDP^T which are all symetric will produce a symmetric matrix.
            """
            Question("Unsure on this last bit.")

            h3("32")
            "The \(Dimension.link) of an \(EigenSpace.link) of a \(SymmetricMatrix.link) is sometimes less than the multiplicity of the corresponding eigenvalue"
            h4("Answer:")
            "The dimension of the \(EigenSpace.link) is always less then or equal than the multiplicity in the \(CharacteristicEquation.link)"
            Question("So one Eigen value can have multiple free variables?")
            "True"
            "An eigen value can have multiple free variables and thus multiple Eigen vectors assoicated with it. So IT will always be less the nor equal"

            h3("36")
            """
            Suppose A and B are both orthongally diagonalizable and AB = BA. Explain why AB is also orthogonally diagonalizeable?
            """
            "Because A and B are orthongally diagonalizable they are also symetric matrix's"
            "A = A^T and B = B^T"
            "(AB)^T = B^TA^T by properties of \(Transpose.link)"
            "= BA"
            "= AB"
            "SO AB is also orthongallnly diagonliable"

        }

        var related: [MathWebPage.Type] = []

        static var pInverse: String {
            OrthogonalMatrix.pInverse
        }
    }
}
