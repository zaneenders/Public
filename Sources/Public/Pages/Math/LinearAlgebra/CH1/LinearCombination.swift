struct LinearCombination: BaseThemePage {

    var themedContent: String {
        """
        any sum of scalar multiples of vectors

        One possible solution of a matrix or set of vectors.

        I like to think of this as putting a wheel of possible values into each variable and spinning those wheels and each permutation of the wheels is a possible linear combination such that there is a valid solution

        an example of something that is not a linear combination is 0v1 + 0v2 = 1 

        as there is no way that 0 + 0 = 1 so this is not a possible solution to the equation and thus not a linear combination

        """
    }
    var related: [any BaseThemePage.Type] = [
        Span.self
    ]
}
