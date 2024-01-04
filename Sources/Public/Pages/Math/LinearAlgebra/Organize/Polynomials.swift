struct Polynomials: MathWebPage {

    var markupDescription: String {
        """
        TODO Latex P

        P(T) = a0 + a1t + a2t^2 + ... + ant^n

        """
    }

    var related: [any MathWebPage.Type] = [
        LinearDependence.self,
        LinearIndependence.self,
        Linearity.self,
    ]

}
