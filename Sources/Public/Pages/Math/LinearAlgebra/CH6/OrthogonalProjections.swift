import WebsiteBuilder

struct OrthogonalProjections: MathWebPage {

    var markupDescription: String {
        body()
    }

    var related: [any MathWebPage.Type] = []
}

let rn = latex(Real().latexDescription + superscript("n"))

private func body() -> String {
    h2(Ch6.Section3.name) + Ch6.Section3.yhatHTML()
        + Ch6.Section3.theorem8() + pTag(" \(latex(columnVector(["a","b"]))) ")
}

enum Ch6 {
    enum Section3 {
        static let name = "Orthogonal Projections"

        static func yhatHTML() -> HTMLString {
            pTag(
                " " + latex(yHat)
                    + " is called the orthogonal projection of y onto u")
                + pTag(" \(yhatDef()) ") + pTag("subspace L")
        }

        static func yhatDef() -> HTMLString {
            latex(yHat + "= proj" + _subscript("L")) + "  "
                + latex(
                    bold("y") + "="
                        + fraction(dot("y", "u"), dot("u", "u")) + "u")
        }

        static func theorem8() -> HTMLString {
            pTag(latex(bold("The Orthogonal Decomposition Theorem")))
                + pTag(
                    "Let \(letexW) be a a subspace of \(rn). Then each \(latex(bold("y"))) in \(rn) can be written uniquely in the form"
                ) + pTag(idk)
                + pTag(
                    "where \(latex(yHat)) is in \(letexW) and \(latexz) is in \(letexW + latex(perp())). In fact, if \(latex(curlyBrackets("\("u" + _subscript("1")),...,\("u" + _subscript("p"))"))) is any orthongonal basis of \(letexW), then"
                )
                + pTag(
                    " "
                        + latex(
                            " " + yHat
                                + " =" + fraction(dot("y", u1), dot(u1, u1))
                                + u1
                                + " + .... + "
                                + fraction(dot("y", up), dot(up, up)) + up)
                        + " ")

        }

        static let u1 = "u" + _subscript("1")
        static let up = "u" + _subscript("p")

        static let latexz = latex("z")
        static let letexW = latex("W")
        static let yHat = hat("y")
        static let idk = latex("y = \(yHat) + z")
    }
}
