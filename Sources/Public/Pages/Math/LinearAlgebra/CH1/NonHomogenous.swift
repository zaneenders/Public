struct NonHomogeneous: MathWebPage {
    var markupDescription: String {
        """
        Matrix equations of the form Ax = b where b is not the zero vector.

        these solutions can be thought of be parallel to the homogeneous solution.


        """
    }

    var theorem6: String {
        """
        Suppose the equation Ax = b is consistent for some given b, and let p be a solution. Then the solution set of Ax = b is the set of all vectors of the form w = p + v_h where V_h is any solution of the homogenous equation Ax = 0

        Ax = b must have one nonzero solution p.
        """
    }
    var related: [any MathWebPage.Type] = []
}
