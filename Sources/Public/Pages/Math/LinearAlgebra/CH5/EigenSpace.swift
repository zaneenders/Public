struct EigenSpace: BaseThemePage {

    var themedContent: String {
        """
        The \(NullSpace.link) of the equation 
        (A - λI)x = 0

        The eigen space consists of the zero vector and all the eigen vectors corresponding to λ

        There is an eigen space for each \(EigenValue.link).

        To find a \(Basis.link) for an eigen space 
        for reduce the augmented matrix for (A - λI)x = 0

        If the resulting augmented matrix has \(FreeVariables.link) then λ is an eigen value for A.

        Because and eigen space is just the \(NullSpace.link). To find the eigen vectors simply find the basis for the \(NullSpace.link), by finding the general solution.
        """
    }
    var related: [any BaseThemePage.Type] = [
        GeneralSolution.self,
        NullSpace.self,
        EigenValue.self,
    ]

}
