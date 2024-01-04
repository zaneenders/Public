import WebsiteBuilder

struct PrincipalAxesTheorem: MathWebPage {
    @ParagraphBuilder var markupDescription: String {
        """
        Let A be an n x n symmetric matrix. Then there is an orthongonal change of variables, x = Py that transforms \(QuadraticForm.link) x^TAx into qudratic form y^TDy with no \(CrossProduct.link) term
        """
        "The columns of P are the principal axes"
        bold("no cross product terms is equivalent to saying D is diagonal")
    }
}
