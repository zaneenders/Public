import WebsiteBuilder

struct Projects: BaseThemePage {
    var themedContent: String {
        "Collection of some of my projects I am personally thinking about or working on. This does not include other peoples projects that I am helping with."
    }

    var subPages: [WebPage.Type] = [
        Scribe.self,
        MyWebsite.self,
    ]
}
