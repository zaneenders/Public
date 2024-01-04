struct Homogeneous: MathWebPage {
    var markupDescription: String {
        """
        A system of linear equations is said to be homogeneous if it can be
         written in the form Ax = 0

        ie solving for x which results in the zero vector

        when x = 0 this is called the trivial solution.

        the more important question is if there is a nontrivial solution.

        the homogeneous equation AX = 0 has nontrivial solution if and only if 
        the equation has at least one free variable.


        The solution set to the homogeneous equation Ax = 0 can always be 
        expressed explicitly as the Span of the vectors of the general solution.

        To check that your solution is correct you can. 
        multiply each vector in your solution by the orignal matrix and ensure 
        that they equal zero. This is pretty cool.

        The homogeneous equation AX = 0 has a nontrivial solution if and only 
        if the equation has at least one free variable
        """
    }

    var related: [any MathWebPage.Type] = [NullSpace.self]
}
