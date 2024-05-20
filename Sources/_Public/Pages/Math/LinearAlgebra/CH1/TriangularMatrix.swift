struct TriangularMatrix: BaseThemePage {
    var related: [any BaseThemePage.Type] = [
        IdentityMatrix.self, Determinate.self,
    ]

    var themedContent: String {
        """
        A Triangular Matrix is a Matrix where half the entries on at least one side of the Matrix is all zeros. 

        The Identity Matrix is an example of a Matrix in Triangular Form.
        """
    }
}
