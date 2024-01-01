import WebsiteBuilder

protocol BaseThemePage: WebPage {
    var themedContent: String { get }
}

extension BaseThemePage {
    var contents: String {
        """
        <!DOCTYPE html>
        <html lang="en">
        \(headHTML)
        <body>\(themedContent)</body>
        </html>
        """
    }
}
