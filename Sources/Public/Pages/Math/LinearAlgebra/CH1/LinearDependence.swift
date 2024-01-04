struct LinearDependence: BaseThemePage {
    var themedContent: String {
        """

        has only the trivial solution the set {v1 .... v_p} is said to be linearly dependent if there exist weights c1 .... cp not all zero such that 
        TODO latex page 84 

        if a set is not linearly independent than it is linearly dependent. Only one vector in the set needs to be able to be expressed as a combination of the others for the set to be considered linearly dependent.

        A set of two vectors {v_1, v_2} is linearly dependent if at least one of the vectors is a multiple of the other. The set is linearly independent if and only if neither of the vectors is a multiple of the other.

        Characterization of Linearly Dependent Sets

        An indexed set S = {v1 ... v_p} of two or more vectors is linearly dependent if and only if at least one of the vectors in S is a linear combination of the others. In fact if S is linearly dependent and v1 != 0 then some v_j (with j > 1) is a linear combination of the preceding vectors v1 ... vj-1.

        this does not state that every vector in S is linearly dependent only that one is.

        Theorem8:

        If a set contains more vectors than there are entries in each vector, then the set is linearly dependent. That is any set {v_1 ... v_p} in Rn is linearly dependent if p > n.
        if m < n there the set is linearly dependent. ie there are more columns then rows there has to be a free variable
        This is not true for matrix where there are more rows then columns.

        Theorem9:
        If a set S { v1 ... vp} in Rn contains the zero vector then the set is linearly dependent.

        An indexed set {v1, ... vp} of two or more vectors with v1 != 0 is linearly dependent if and only if some vj (with j > 1 ) is a linear combination of the preceding vectors, v1, ... vj-1.



        """
    }
    var related: [any BaseThemePage.Type] = [LinearIndependence.self]
}
