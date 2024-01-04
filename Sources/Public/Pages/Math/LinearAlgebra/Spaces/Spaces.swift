import WebsiteBuilder

struct Spaces: MathWebPage {

    @ParagraphBuilder var markupDescription: String {
        h1("Math related things here")
        aTag("Home", to: "/") + h2("vector Space")
        pTag(VectorSpace().contents)
        aTag("$e$", to: "/", /*styles("color: red;")*/ "")
        latex("^{i\\pi} + 1 = 0")
        h2("Subspace Space")
        pTag(SubSpace().contents)
    }

    var related: [any MathWebPage.Type] = []
}
