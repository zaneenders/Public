struct Polynomials: BaseThemePage {

    var themedContent: String {
        """
        TODO Latex P

        P(T) = a0 + a1t + a2t^2 + ... + ant^n

        """
    }

    var related: [any BaseThemePage.Type] = [
        LinearDependence.self,
        LinearIndependence.self,
        Linearity.self,
    ]

}
