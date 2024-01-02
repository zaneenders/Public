import WebsiteBuilder

protocol BaseThemePage: WebPage {
    var themedContent: String { get }
    var js: Bool { get }
    var mathPage: Bool { get }

}

extension BaseThemePage {
    public var contents: String {
        themedContent
    }
}
