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
        TestPage.self,
        NeoVim.self,
    ]

    @DivBuilder public var themedContent: String {
        NavigationBar()
        button("google", to: .site("http://google.com"))
    }
}
