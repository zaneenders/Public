struct Orthogonal: BaseThemePage {
    var themedContent: String {
        """
        Two vectors are Orthogonal (Perpendicular) if there \(InnerProduct.link) (dot product) equals 0.
        """
        """
        You can make an Orthogonal basis for a set of vectors describing a \(SubSpace.link) by using the \(GramSchmidtProcess.link).
        """
    }

    var related: [any BaseThemePage.Type] = [
        InnerProduct.self,
        SubSpace.self,
        GramSchmidtProcess.self,
    ]
}
