import WebsiteBuilder

protocol LinearAlgebraPage: BaseThemePage, MathWebPage {
    @_Builder var linearAlgebraContent: String { get }
}

extension LinearAlgebraPage {
    var themedContent: String {
        linearAlgebraContent
    }
    var markupDescription: String {
        linearAlgebraContent
    }

}

public protocol MathWebPage: BaseThemePage {
    @_Builder var markupDescription: String { get }
}

extension MathWebPage {
    public var themedContent: String {
        markupDescription
    }

}

public protocol PLPage: BaseThemePage {
    @_Builder var plContent: String { get }

}

extension PLPage {
    public var themedContent: String {
        plContent
    }
}

public protocol ZaneWebPage: BaseThemePage {
    @_Builder var markup: String { get }

}

extension ZaneWebPage {
    public var themedContent: String {
        markup
    }
}

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
