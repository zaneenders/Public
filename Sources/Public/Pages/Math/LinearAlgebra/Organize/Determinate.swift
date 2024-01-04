struct Determinate: MathWebPage {

    var markupDescription: String {
        """
        TODO update latex

        This can be thought of as the area of a matrix
        for 2x2 matrices this can be computed by ad-bc
        if ab-bc = 0 then the matrix is not invertible

        det(A) = ad - bc 
            where A is a 2x2 matrix


        For an n x n Matrix:
        the determinate is defined recursively Pick an entry from the matrix favoring zero when possible. "Delete" the row and column of this entry and multiply the determine of the remaining matrix by that entry. This is why we favor zero as it reduces the amount of computation you have to do. We do this recursively till we reach a 2x2 matrix which we have defined the determinate for above. 
        We combine these "sub determinate's" be adding and subtracting them. This pattern begins in the top left of the matrix with an addition and then alternates subtraction addition as you loop over entries and i and j.

        + - +
        - + -
        + - + 

        This is the pattern for a 3x3 matrix. be careful not to drop a sign when calculating these.

        This Pattern is known as a cofactor expansion and is gernalized with the following equation.

        The determinant of any n x n Matrix A can be computed by a cofactor Expansion Across any row or down any column.

        An expansion across the ith row would be:
        det(A) = ai1(Ci1) + ai2(ci2) + ... + ain(Cin)

        An expansion down the jth column would be:
        det(A) = a1j(C1j) + a2j(c2j) + ... + anj(Cnj)

        If A is a triangular matrix then Det(A) is the product of the entries on the main diagonal of A

        Row Operations:
        Let A be a square matrix
        - If a multiple of one row of A is added to another row to produce a Matrix B then det B = det A
        - If two rows of A are interchanged to produce B, then det B = - det A
        - If one row of A is multiplied by k to produce B then Det B = k det A

        This is why we only use Replace for LU factorization. Other wise it would change the determinate

        If A is an n x n matrix, then det(A^T) = det A

        Multiplicative Property
        If A and B are n x n matrices, then det(AB) = (det A)(det B)


        The Determinate Changes If any Elementry Row operations are performed.
        - Scale by 1 if a row replacement is performed
        - Scale by -1 if an interchange is made
        - Scale by r if a row is scaled by some constant r

        Determinants as Area or Volume
        - If A is a 2 x2 matrix, the area of the parallelogram determined by the columns of A is |det A|. If A is a 3 x 3 matrix, the columns of the parallelepiped determined by the columns of A is |det A|.

        \(CharacteristicEquation.link)
        Let A and B be n x n matrices.
        - A is invertible if and only if det A != 0
        - det AB = (detA)(detB)
        - det A^T = detA
        - if A is triangular, then det A is the product of the entries on the main diagonal of A.

        Carefull with Row operations as they can change the determinate.
        """
    }

    var related: [any MathWebPage.Type] = [
        RowOperations.self, CharacteristicEquation.self,
        InvertibleMatrixTheorem.self, CofactorExpansion.self,
        TriangularMatrix.self, CramersRule.self, LinearTransformation.self,
    ]

    static let a = 1
    static let b = 2
    static let c = 3
    static let d = 4

    let twobytwo = Matrix([[a, b], [c, d]])
}
