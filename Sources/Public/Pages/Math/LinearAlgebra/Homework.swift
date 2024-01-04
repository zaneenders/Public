import WebsiteBuilder

extension LinearAlgebra {
    struct Homework: MathWebPage {

        var markupDescription: String {
            makeLinks(subPages).joined(separator: "\n")
        }

        var subPages: [WebPage.Type] = [
            Homework13.self
        ]

        var related: [MathWebPage.Type] = []
    }
}
