struct Axiom: MathWebPage {
    var related: [any MathWebPage.Type] = [VectorSpace.self]

    var markupDescription: String {
        """
        You can think of these as protocols or an interface to an Idea

        The Axiom's of a Vector Space are the rules something must define in order to be a Vector Space and be treated as one.
        """
    }
}
