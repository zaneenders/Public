import _WebsiteBuilder

public struct ThemeTestPage: ThemeTest, RootPage {
    public init() {}

    public var subPages: [WebPage.Type] {
        Qoutes.self
    }

    public var contents: String {
        """
        <!DOCTYPE html>
        <html lang="en">
        \(headHTML)
        \(bodyHTML)
        </html>
        """
    }
}
