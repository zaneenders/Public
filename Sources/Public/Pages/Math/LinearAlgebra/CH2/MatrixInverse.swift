struct MatrixInverse: BaseThemePage {

    var themedContent: String {
        """
        The idea of inverting a matrix is similar to normal numbers where 6^-1(6) = 1. Reminder 6^-1 = 1/6

        Matrix must be square for these generalizations to apply
        A matrix is invertible if there is an n x n matrix C such that CA = I and AC = I

        this is denoted A^(-1)

        if a matrix is not invertible this is called a singular matrix.

        invertible matrix are non singular

        TODO Latex of inverse formula

        the inverse of a matrix can be found by swapping position a and d and negating b and c.

        If the determinate of a matrix is 0 the matrix is not invertible

        Invertible matrices are very important!

        the product of n x n invertible matrices is invertible and the inverse is the product of their inverse in the reverse order

        \(MatrixInverse.theorem5)

        Theorem6
        If A is an invertible matrix, then A(-1) is invertible and A^(-1)^(-1) = A

        If A and B are n x n invertible matrices, then so is AB, and the inverse of AB is the product of the inverses of A and B in the reverse order. That is,
            (AB)^(-1) = B^(-1)A^(-1)

        If A is an invertible matrix, then so is A^(T), and the inverse of A^(T) is the transpose of A^(-1). That is
            A^(T)^(-1) = (A^(-1))^T

        Algorithm for Finding A^(-1)
        Place I next to A forming an augmented matrix [A I] then row reduce. Which will produce the augmented Matrix [I A^(-1)]

        A(A^(-1)) = I
        """
    }

    static var theorem5: String {
        """
        Theorem5

        If A is an invertible n x n matrix, then for each b in Rn, the equation Ax = b has the unique solution x = A^-1(b)
        - we can solve for x by inverting A and multiplying b
        """
    }
    var related: [any BaseThemePage.Type] = []
}
