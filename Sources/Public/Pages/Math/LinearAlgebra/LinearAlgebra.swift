import Tags
import WebsiteBuilder

/*
!!! Don't forget to use bookshelf for your HW because the problems are
different.
*/
struct LinearAlgebra: BaseThemePage {

    var themedContent: String {
        h2("Linear Algebra")
        #if DEBUG
            Question("Is there an implicit zeros wrapping around the matrix")
            TODO("Describe the \(GramSchmidtProcess.self)")
            TODO("Review change of Variables/ Basis")
            TODO(
                "when studying for final go over past HW and add work to your website"
            )
            TODO("Definite Integrals and Anti derivatives")
            TODO("fix Notes starting at CH1")
            TODO("Practice inverting 3x3 matrix's")
            // Review Questions
            Question("fast way to check 49?")
            Question("1.5 21, why is the 2 in x1 position?")
            Question("1.9 #2, #4 is this right?")
            TODO("Memorize vertical transformation")
            Homework.link
            spacer()
        #endif
        makeLinks(subPages).joined(separator: "\n")
    }

    // TODO organize or remove
    var subPages: [WebPage.Type] {
        #if DEBUG
            Homework.self
        #endif
        // CH1
        PivotPosition.self
        PivotColumn.self
        Coefficients.self
        FreeVariables.self
        BasicVariables.self
        LinearEquation.self
        LinearSystemOfEquations.self
        OverDeterminedSystem.self
        UnderDeterminedSystem.self
        VectorEquation.self
        RowVectorRule.self
        Consistent.self
        Inconsistent.self
        UniqueSolution.self
        GeometricDescription.self
        // CH2
        SpectralTheorem.self
        Matrix.self
        Eigen.self
        Spaces.self
        OrthogonalProjections.self
        CompletingTheSquare.self
        ColumnSpace.self
        NullSpace.self
        RowSpace.self
        InvertingAMatrix.self
        LUFactorization.self
        ChangeOfBasis.self
        MatrixMultiplication.self
        ParametricVectorForm.self
        Span.self
        Basis.self
        SpectralDecomposition.self
        BasisVectors.self
        StandardBasis.self
        GeneralSolution.self
        ReducedRowEchelonForm.self
        RowEchelonForm.self
        PivotColumns.self
        SubspacesOfRn.self
        Normal.self
        DistanceBetweenTwoVectors.self
        OrthogonalVectors.self
        OrthogonalComplement.self
        IfAndOnlyIf.self
        RowColumnRule.self
        NullSpacesColumnSpacesRowSpacesAndLinearTransformations.self
        LinearTransformation.self
        TrivialSolution.self
        NonTrivialSolution.self
        Transformation.self
        Domain.self
        ParametricDescription.self
        Image.self
        Codomain.self
        MatrixTransformation.self
        OrthogonalSet.self
        OrthogonalBasis.self
        OrthogonalProjection.self
        OrthonormalSet.self
        OrthonormalBasis.self
        OrthogonalMatrix.self
        QRFactorization.self
        EigenSpace.self
        Diagonalization.self
        Orthogonal.self
        SolutionSet.self
        Vector.self
        Scalar.self
        RowVector.self
        ColumnVector.self
        MatrixAddition.self
        MatrixEquation.self
        Homogeneous.self
        LinearIndependence.self
        NonHomogeneous.self
        LinearDependence.self
        IdentityMatrix.self
        Proofs.self
        DiagonalMatrix.self
        MatrixInverse.self
        Transpose.self
        Kernel.self
        LinearCombination.self
        InvertibleMatrixTheorem.self
        Determinate.self
        ElementaryMatrices.self
        PartitionedMatrices.self
        RowOperations.self
        Dimension.self
        Rank.self
        CoordinateSystems.self
        CofactorExpansion.self
        TriangularMatrix.self
        CramersRule.self
        Adjugate.self
        VectorSpace.self
        SubSpace.self
        Commutative.self
        Associative.self
        Linearity.self
        FunctionSpace.self
        ProjectionMatrix.self
        ZeroSubspace.self
        ZeroVector.self
        EigenValue.self
        EigenVector.self
        CharacteristicEquation.self
        Similarity.self
        FactoringPolynomials.self
        JordanCanonicalForm.self
        InnerProduct.self
        InnerProductSpace.self
        NormalEquation.self
        DiagonalizationofSymmetricMatrices.self
        QuadraticForm.self
        ChangeOfVariables.self
        OrthogonalDiagonalization.self
        PrincipalAxesTheorem.self
        OrthonormalDiagonalizing.self
        NormalizedVector.self
        CrossProduct.self
        SingularValueDecomposition.self
        ConditionNumber.self
        Bijection.self
        Homomorphism.self
        Isomorphism.self
        MathematicalStructures.self
        _Set.self
        Operation.self
        Function.self
    }
}
