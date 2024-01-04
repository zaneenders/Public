import WebsiteBuilder

struct Projects: ZaneWebPage {
    var markup: String {
        "Collection of some of my projects I am personally thinking about or working on. This does not include other peoples projects that I am helping with."
    }

    var subPages: [WebPage.Type] = [
        Scribe.self,
        MyWebsite.self,
    ]
}
