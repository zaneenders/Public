import WebsiteBuilder

struct Blog: BaseThemePage {
    @_Builder var themedContent: String {
        posts()
    }

    var pages: [BaseThemePage.Type] = [
        MyNewWebsite.self,
        NeoVim.self,
    ]

    func posts() -> String {
        var out = ""
        for page in pages {
            out += page.pageLink
        }
        return out
    }
}
