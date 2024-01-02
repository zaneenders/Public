import WebsiteBuilder

protocol BaseThemePage: WebPage {
    var themedContent: String { get }
    var js: Bool { get }
    var mathPage: Bool { get }

}

extension BaseThemePage {

    var title: String {
        "Zane Enders | Home"
    }

    public var contents: String {
        """
        <!DOCTYPE html>
        <html lang="en">
        \(headHTML)
        \(themedContent)
        </html>
        """
    }

    var headHTML: String {
        """
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="icon" type="image/x-icon" href="/favicon.ico">
            \(titleHTML)
            \(scriptHTML)
            <style>
            \(CSSClass.style(.button))
            </style>
        </head>
        """
    }

    var scriptHTML: String {
        """
        <script>console.log("I don't like Javascript or Web Development - Zane")</script>\(!js ? "" : """
        <script src="/script.js" type="text/javascript" charset="utf-8"></script>
        """)\(!mathPage ? "" : """
        <script>
            MathJax = {
                tex: {
                    inlineMath: [['$', '$']]
                },
                svg: {
                    fontCache: 'global'
                }
            }
        </script>
        <script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js">
        </script>
        """)
        """
    }

    var titleHTML: String {
        "<title>\(title)</title>"
    }
}
