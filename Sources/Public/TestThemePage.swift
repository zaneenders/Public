import WebsiteBuilder

public struct ThemeTestPage: ThemeTest, RootPage {
    let js: Bool = false
    let mathPage: Bool = false
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
