import WebsiteBuilder

extension LinearAlgebra {
    struct Homework: BaseThemePage {

        var themedContent: String {
            makeLinks(subPages).joined(separator: "\n")
        }

        var subPages: [WebPage.Type] = [
            Homework13.self
        ]

        var related: [BaseThemePage.Type] = []
    }
}
