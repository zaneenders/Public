import _WebsiteBuilder

protocol BaseThemePage: WebPage {
    var themedContent: String { get }
}

extension BaseThemePage {
    var contents: String {
        themedContent
    }
}
