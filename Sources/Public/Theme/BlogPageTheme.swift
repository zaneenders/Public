import WebsiteBuilder

public protocol BlogPageTheme: BaseThemePage {
    @_Builder var blogContent: String { get }
}

extension BlogPageTheme {
    public var themedContent: String {
        "<div \(CustomCSS.typeClass(.blogContent))>\(blogContent)</div>"
    }
}
