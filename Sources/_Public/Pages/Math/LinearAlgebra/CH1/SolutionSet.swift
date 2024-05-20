struct SolutionSet: BaseThemePage {
    var related: [any BaseThemePage.Type] = [NullSpace.self]

    var themedContent: String {
        """
        A set of all possible solutions to the linear system.

        Two systems are considered equivalent if they have the same solution set.

        The set of all x that satisfy a linear system is written is called the solution set.
        """
    }
}
