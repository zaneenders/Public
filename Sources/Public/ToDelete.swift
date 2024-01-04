import WebsiteBuilder

public protocol ZaneWebPage: BaseThemePage {
    @_Builder var markup: String { get }

}

extension ZaneWebPage {
    public var themedContent: String {
        markup
    }
}
