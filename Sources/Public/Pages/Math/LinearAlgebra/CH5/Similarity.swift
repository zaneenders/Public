struct Similarity: MathWebPage {

    var markupDescription: String {
        """
        If an n x n matrices A and B are similar then they have the same \(CharacteristicEquation.link) and hence the same eigen values (with the same multiplicities)

        TODO Latex 
        (P^-1)A(P)= B
        A = PB(P^-1)
        """
    }
    var related: [any MathWebPage.Type] = [
        CharacteristicEquation.self
    ]
}
