typealias Diagonalizable = Diagonalization
struct Diagonalization: BaseThemePage {

    var themedContent: String {
        """
        A \(DiagonalMatrix.link) is an n x n matrix that has values 0 except along the diagonal of of the matrix.
        TODO Latex Example

        1 0 0
        0 1 0
        0 0 1

        The \(IdentityMatrix.link) is an example of a Diagonal matrix.

        These matrices are easy to exponentiate because of there form.

        A square matrix is is said to be diagonalize if A is similar to a diagonal matrix.

        The Diagonalization Theorem
        An n x n matrix A is diagonalizable if and only if A has n linearly independent eigenvectors.

        In face, A = PDP^-1, with D a diagonal matrix, if and only if the columns of P are n linearly independent eigen vectors of A. In this case, the diagonal entries of D are eigenvalues of A that correspond. respectively, to the eigen vectors in P.

        A is diagonalizable if and only if there are enough eigenvectors to form a basis of Rn. We call such basis an Eigenvector basis of R

        Steps to Diagonalize a matrix.
        - Find the eigen values of A
        - Find find n linearly independent eigenvectors of A
        - construct matrix P from the eigenvectors above.
            - the vectors may be in any order.
                - Though it is good practice to do them in descending order.
        - construct D with there corresponding eigenvalues
            - the eigenvalues must be in the same order that you picked for the eigenvectors for P. The order matters.
        - To check your work you can check that AP = PD instead of inverting P and verifying A = PDP^-1

        Theorem 6
        An n x n matrix with n distinct eigenvalues is diagonalizable.
        - the eigenvectors form a basis for Rn

        TODO Theorem 7, page 318


        It is not always possible to diagonalize a matrix.
        - the algebraic multiplicity of an eigenvalue is its order as a root of the charateric polynomal its geometric multiplicty is the dimension of its eigenspace, or the null space.
        """
    }

    var related: [any BaseThemePage.Type] = [
        Basis.self,
        EigenValue.self,
        EigenVector.self,
    ]
}

extension Diagonalization {
    static let pdpT = latex("A = PDP^T")
}
