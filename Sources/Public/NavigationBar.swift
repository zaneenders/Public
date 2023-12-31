import _WebsiteBuilder

struct NavigationBar: PageComponent {
    var contents: String {
        """
        <div>\(links)</div>
        """
    }

    var links: String {
        var out = ""
        for page in ThemeTestPage().subPages {
            out.append("\(page.link)")
        }
        return out
    }
}
