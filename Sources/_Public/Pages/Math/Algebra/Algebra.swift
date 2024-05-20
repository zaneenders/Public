import Tags
import WebsiteBuilder

struct Algebra: BaseThemePage {
    @ParagraphBuilder var themedContent: String {
        TODO("Review \(Factoring.link) polynomials degree 2 and 3")
    }

    var subPages: [WebPage.Type] = [
        Factoring.self
    ]
}
