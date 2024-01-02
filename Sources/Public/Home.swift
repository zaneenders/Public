import WebsiteBuilder

public struct Home: BaseThemePage, RootPage {
    let js: Bool = false
    let mathPage: Bool = false
    public init() {}

    public var subPages: [WebPage.Type] {
        Qoutes.self
        Qoutes.self
    }

    public var themedContent: String {
        """
        <!DOCTYPE html>
        <html lang="en">
        \(headHTML)
        \(bodyHTML)
        </html>
        """
    }

    private let buttonCSS = """
        border-radius: 18px;
        background: #e0e0e0;
        box-shadow: inset 6px 6px 12px #bebebe, inset -6px -6px 12px #ffffff;
        """

    private var bodyCSS: String {
        """
        @font-face { font-family: Yellowtail; src: url('Yellowtail-Regular.ttf'); }
        font-family: Fantasy;
        text-align: center;
        """
    }

    private var otherCSS: String {
        """
        .engraved {
            font-size: 100px;
            font-family: Futura;
            background-color: #666666;
            -webkit-background-clip: text;
            -moz-background-clip: text;
            background-clip: text;
            color: transparent;
            text-shadow: rgba(245,245,245,0.5) 3px 5px 1px;
        }

        .embossed{
            color: #f0f0f0;
            font-size: 100px;
            font-family: Futura;
            background-color: #666666;
            text-shadow: 1px 4px 4px #555;
            text-align: center;
            -webkit-background-clip: text;
            -moz-background-clip: text;
        }

        div{
            float: left;
            font-family: Gordona;
            background: grey;
            text-align: center
            height: 60px;
            width: 300px;
            text-align: center;
            margin: 10px;
            padding: 10px;
        }

        #black{
            text-shadow: -1px -1px rgba(0,0,0,0.5), 1px 1px rgba(255,255,255,0.5);
            color: rgba(0,0,0,0.5);
            border: ridge 5px grey;
        }
        """
    }

    /// Default Content and Configuration
    var title: String {
        "Zane Enders | Home"
    }

    var body: String {
        NavigationBar().contents
            + buildH1("Zane Enders")
            + "Zane was here ->"
            + "<div id=\"tan\"><h1>Embossed in tan</h1></div>"
            + button("Look I'm a button")
    }

    func button(_ str: String) -> String {
        return
            "<button type=\"button\" \(innerCSS(buttonCSS))>Click Me!</button> "
    }

    func buildH1(_ str: String) -> String {
        let style = """
            font-size: 6em;
            font-family: Yellowtail;
            background-color: #666666;
            -webkit-background-clip: text;
            -moz-background-clip: text;
            background-clip: text;
            color: transparent;
            text-shadow: rgba(245,245,245,0.5) 3px 5px 1px;
            """
        return "<h1 style = \" \(style) \">\(str)</h1>"
    }

    var bodyStyle: String {
        """
        style = \" text-align: center; \"
        """
    }

    var bodyHTML: String {
        "<body  \(innerCSS(bodyCSS)) >\(body)</body>"
    }

    func innerCSS(_ str: String) -> String {
        "style = \" \(str) \""
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