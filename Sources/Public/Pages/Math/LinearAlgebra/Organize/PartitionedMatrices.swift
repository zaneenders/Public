struct PartitionedMatrices: BaseThemePage {

    var themedContent: String {
        """
        Partitioned or block matrix

        TODO Latex examples

        Scalar addition applies

        Matrix Multiplication applies to Blocks where the Block Matrices sizes respect the rules of normal Matrix multiplication.

        Block Diagonal matrix
        - a partitioned matrix with zero blocks outsize of the diagonal.
        - this matrix is invertible as long as all the diagonal blocks are invertible
        """
    }
    var related: [any BaseThemePage.Type] = []
}
