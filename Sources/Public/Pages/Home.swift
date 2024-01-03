import WebsiteBuilder

public struct Home: BaseThemePage, RootPage {
    public init() {}

    public var title: String {
        "Zane Enders"
    }

    public static var pageLink: String {
        button("Zane Enders", to: .page("/"))
    }

    public var pages: [BaseThemePage.Type] = [
        Qoutes.self,
        Blog.self,
    ]

    public var themedContent: String {
        "<div \(CustomCSS.typeClass(.blogContent))>\(cardContent)</div>"
    }

    var cardContent: String {
        """
        Hello I'm zane
        """
    }
}
