struct EigenValue: BaseThemePage {

    var themedContent: String {
        """
        Checking if a Value is an Eigen Value of a Matrix
        - Multiply the Eigen value the identity matrix and subtract that new matrix from A. 
        - If the resulting matrix is linearly dependent. Has nontrivial solutions then the value is an Eigen Value.

        Eigen values can not be found by running vectors through a matrix A.

        An eigen value λ is an eigen value of matrix A if and only if this equation holds

        TODO Latex Page 300
            (A - λI)x = 0

        has non trival solutions.

        The set of all solutions to this eqation is the null space of A which is a subspace of Rn and is called the eigen space

        The eigen values of a triangular matrix are the entries on its main diagonal.

        0 can be an eigen value if and only if A is not invertible.

        T/F Questions
        if ax = lambda x for some vector x then lambda is an eigenvalue of A. 
        False There must be a non trivial solution.
        """
    }
    var related: [any BaseThemePage.Type] = [
        CharacteristicEquation.self,
        EigenSpace.self,
        EigenVector.self,
        LinearDependence.self,
        InvertibleMatrixTheorem.self,
    ]
}
