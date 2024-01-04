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
        Math.self,
        ProgrammingLanguages.self,
        Favorites.self,
        SocialGraph.self,
        AHitchHikersGuideToTheWorldsHardestVideoGame.self,
        _Swift.self,
        Projects.self,
        BadIdeas.self,

    ]

    public var themedContent: String {
        "<div \(CustomCSS.typeClass(.blogContent))>\(cardContent)</div>"
    }

    @_Builder var cardContent: String {
        """
        Hello I'm zane
        """
    }
}
