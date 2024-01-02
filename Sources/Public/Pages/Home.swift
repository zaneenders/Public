import WebsiteBuilder

public struct Home: BaseThemePage, RootPage {
    public init() {}

    var title: String {
        "Zane Enders"
    }

    public var subPages: [WebPage.Type] {
        Qoutes.self
        TestPage.self
        NeoVim.self
    }

    @DivBuilder public var themedContent: String {
        NavigationBar()
        button("google", .outer)
    }
}
