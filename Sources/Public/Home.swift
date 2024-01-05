import WebsiteBuilder

public struct Home: BasePage, RootPage {

    // button style = 0.25em 0.25em 0 0.25em
    private let githubLogo = """
        <img src ="/github-mark.svg" alt="github logo" width="15" height="15">
        """

    @_Builder var cardContent: String {
        paragraphs {
            "👋 I'm Zane, Just your average ADHD, Dyslexic computer nerd."
            "Welcome to the tip of the iceberg that is my mind."
            "All the content of my website is public on github. So please give feedback. \(button(githubLogo,to: .site("https://github.com/zaneenders/Public")))"
        }
    }

    public var pages: [BasePage.Type] = [
        // TODO talk about new website
        // MyWebsite.self
        /*
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
        */
    ]

    public var body: String {
        "<div \(CustomCSS.typeClass(.blogContent))>\(cardContent)</div>"
        // "<div>\(makeButton(MyWebsite.self))</div>"
    }

    public init() {}

    public var title: String {
        "Zane Enders"
    }

    public static var pageLink: String {
        button("Zane Enders", to: .page("/"))
    }

}
