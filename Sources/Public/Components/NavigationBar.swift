import WebsiteBuilder

struct NavigationBar: PageComponent {
    var contents: String {
        """
        <div>\(button("Zane Enders",to:.page("/")))</div>
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
        return button("\(page)", to: .page(page.url))
    }
}
