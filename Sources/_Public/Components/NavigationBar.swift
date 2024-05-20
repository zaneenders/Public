import WebsiteBuilder

struct NavigationBar: PageComponent {
    var contents: String {
        """
        <div>\(Home.pageLink)</div>
        <div>\(links)</div>
        """
    }

    var links: String {
        var out = ""
        // How do I add private routes here?
        for page in Home().pages {
            out.append(page.pageLink)
        }
        return out
    }
}
