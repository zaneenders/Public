import WebsiteBuilder

protocol BlogPageTheme: BaseThemePage {
    @_Builder var blogContent: String { get }
}

extension BlogPageTheme {
    var themedContent: String {
        "<div \(CustomCSS.typeClass(.blogContent))>\(blogContent)</div>"
    }
}
