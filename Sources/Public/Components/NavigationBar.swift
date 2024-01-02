import WebsiteBuilder

struct NavigationBar: PageComponent {
    var contents: String {
        """
        <div>\(aTag("Zane Enders",to: "/", CSSClass.typeClass(.button)))</div>
        <div>\(links)</div>
        """
    }

    var links: String {
        var out = ""
        for page in Home().subPages {
            out.append(wrapLink(page))
        }
        return out
    }

    private func wrapLink(_ page: WebPage.Type) -> String {
        return aTag("\(page)", to: page.url, CSSClass.typeClass(.button))
    }
}
