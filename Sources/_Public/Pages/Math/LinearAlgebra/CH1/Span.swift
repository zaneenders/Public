struct Span: BaseThemePage {

    var themedContent: String {
        """
        Span is the reach or scope of the vectors of a given set. If they can reach all areas of a subspace they forma basis for that subspace.

        Ask if a vector b is in the span of a set of vectors is simple as solving the equation. This is often done by setting up an augmented matrix with b as the augment and row reducing to see if the solution is consistent or inconsistent


        Span {v1 ... vp} denotes the set of all vectors that can be written as linear combination of {v1 ... vp}.

        The Spanning Set Theorem
        Let S = {v1, ... Vp} be a set in a vector space V, and let H = Span {v1, ... Vp}
        - If one of the vectors in S say vk is a linear combination of the remaining vectors in S that the set formed from S by removing vk still spans H
        - If H != {0}, some subset of S is a basis for H
        """
    }

    var related: [any BaseThemePage.Type] = [
        Basis.self, SubSpace.self, LinearCombination.self,
        InvertibleMatrixTheorem.self,
    ]
}
