import WebsiteBuilder

struct BadIdeas: BaseThemePage {
    var themedContent: String {
        Fractal.link
    }

    var subPages: [WebPage.Type] = [
        Fractal.self
    ]
}
