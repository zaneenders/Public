struct MatrixTransformation: MathWebPage {
    var markupDescription: String {
        """
        A transformation of changing a vector x by multiplying it by A. 

        x |-> Ax 

        these are Matrix transformations. The domain( input ) of T is Rn (the number of columns in A) and the codomain of T is Rm or the number of rows in A.

        A matrix transformation can also be used to project one vector onto another or from R3 to R2.

        Focuses on describing a mapping from Rn to Rm is implemented (the details of what numbers actually perform the transformation)


        """
    }
    var related: [any MathWebPage.Type] = []
}
