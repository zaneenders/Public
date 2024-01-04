import WebsiteBuilder

struct SingularValueDecomposition: BaseThemePage {
    @ParagraphBuilder var themedContent: String {
        "A = U\(Sigma)V^T"
        """
        U = m x m \(OrthogonalMatrix.link)
        V = n x n \(OrthogonalMatrix.link)
        \(Sigma) = m x n \(DiagonalMatrix.link) of \(sigma) singular values

        The \(EigenVector.link)s of A are the columns of U
        """
    }
}
