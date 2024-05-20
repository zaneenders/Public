struct EigenVector: BaseThemePage {
    var themedContent: String {
        """
        An eigen vector of an n x n matrix A is a nonzero vector x such that Ax = λx for some scalar λ. A scalar λ is called an eigen value of A if there is a nontrival solution x of Ax = λx; such that an x is called an eigenvector corresponding to λ.

        To check if a vector is an Eigen Vector for a matrix A simply multiply the vector and matrix together. If the result vector is a scaled version of the input vector then it is an Eigen vector. That scaled value will be an Eigen Value for that matrix.

        if the eigen vectors correspond to distinct eigenvalues of an n x n matrix A, then the set of eigen vectors are linearly independent.

        Linear Transformations
        TODO understand Section 5.4 Page 321
        """
    }
    var related: [any BaseThemePage.Type] = [
        LinearTransformation.self,
        EigenValue.self,
    ]
}
