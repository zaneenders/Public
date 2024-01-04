struct IdentityMatrix: MathWebPage {
    var markupDescription: String {
        """
        A matrix of size n x n where all the diagonal entires are 1s and all other entires are 0. This matrix is equal to 1. When any n x n matrix is multiplied by the identity matrix I the out put is the same n x n matrix so this doesn't really do anything.


        """
    }
    var related: [any MathWebPage.Type] = [
        Basis.self
    ]
}
