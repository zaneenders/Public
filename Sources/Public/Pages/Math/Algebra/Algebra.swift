import Tags
import WebsiteBuilder

struct Algebra: MathWebPage {
    @ParagraphBuilder var markupDescription: String {
        TODO("Review \(Factoring.link) polynomials degree 2 and 3")
    }

    var subPages: [WebPage.Type] = [
        Factoring.self
    ]
}
