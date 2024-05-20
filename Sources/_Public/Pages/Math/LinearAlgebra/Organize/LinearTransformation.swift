struct LinearTransformation: BaseThemePage {
    var themedContent: String {
        """
        Linear Transformations preserve addition and scalar multiplication.
        Grid Lines remain parallel and evenly spaced.

        A Linear Transformation is completely describe by where it takes the basis vectors.
        T(x)

        A view of thinking of a matrix that acts on a vector.
        multiplying a vector x by a matrix A producing a new vector Ax.

        Let matrix A be an m x n matrix when a vector x of size n is transformed by A it produces a new vector b of size m.

        the set of input vectors of the size Rn are called the domain
        the output set of vectors of size Rm is called the codomain of the function, transformation or mapping.

        The most important transformation in linear algebra.

        Definition:
        A transformation or mapping T is linear if 
        - T(u + v) = T(u) + T(v) for all u, v in the domain of T
        - T(cu) = cT(u) for all scalars c and all u in the domain of T
            They preserve the operations of vector addition and scalar multiplication

        Every matrix transformation is a linear transformation. But not all linear transformations are matrix transformation

        If T is a linear transformation then 
            T(0) = 0
        and 
            T(cu + dv) = cT(u) + dT(v)
        for all vectors u, v in the domain of T and all scalars c, d.

        focus on the property of a mapping

        Definition:
        Mapping T: Rn -> Rm is said to be onto Rm if each b in rm is the image of at least one x in Rm
        - if n>= m there are the same or more columns then rows

        A mapping T: Rn -> Rm is said to be one to one if each b in rm is the image of at most one x in Rn
        - if there are free variables in the transformation matrix then the matrix is not one to one.
        - The transformation is one to one if and only if the equation T(x) = 0 has only the trivial solution

        Let T: Rn -> Rm be a linear transformation, and let A be the standard matrix for T. Then: 
        - T maps Rn onto Rm if and only if the columns of A span Rm
            - because we must have at least m columns to do so. ie n >= m
        - T is one to one if and only if the columns of A are linearly independent.


        Standard Matrix A is the matrix that describes the transformation T

        Let T: R2 -> R3 be the linear transformation determined by a 2x2 matrix A. If S is a parallelogram in R2, then
        {area of T(S)} = |det A| ({area of S})
        If T is determined by a 3 x 3 matrix A, and if S is a parallelepiped in R3, then.
        {volume of T(S)} = |det A| ({volume of S})

        This holds for finite area and volume.

        """
    }
    var related: [any BaseThemePage.Type] = [
        BasisVectors.self,
        InvertibleMatrixTheorem.self,
        Determinate.self,
    ]

    var reflectionThroughAxisX = Matrix([[1, 0], [0, -1]])
    var reflectionThroughAxisY = Matrix([[-1, 0], [0, 1]])
    var reflectionThroughXEqualsY = Matrix([[0, 1], [1, 0]])
    var reflectionThroughYEqualsNegativeX = Matrix([[0, -1], [-1, 0]])
    var reflectionThroughTheOrigin = Matrix([[-1, 0], [0, -1]])
    static let variable = 69
    var horizontalShear = Matrix([[1, variable], [0, 1]])
    var verticalShear = Matrix([[0, 1], [1, variable]])
}
