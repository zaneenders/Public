import Colors
import WebsiteBuilder

/*
Ok I like the idea of using a result builder but I guess I don't really know what it should look like
Some sort of page builder. Maybe a body builder.
Would like to do a sort of Styled Components. Where you do the styling on the part you are adjusting.
And use the copiler part to compile the CSS and JS together. I don't hate HTML but the API for making
it do anything interesting is annoying and a little confusing. Button up.

What components do I need?
- what ever components NeoVIm has? We are trying to build a text editor.

What do you need to build components?
remove as maybe Strings as possible so the only strings you have to right is the content
*/
public struct _Page {

    let contents: String

    init(@PageBuilder pageComponents: () -> String) {
        self.contents = pageComponents()
    }
}

@resultBuilder
public enum PageBuilder {
    // TODO whats the syntax for this? I need to get the LSP working
    public static func buildBlock() -> String {
        ""
    }
}

public struct TestPage: WebPage {

    let background = Colors.xTerm256(233)
    let buttonIdel = Colors.xTerm256(220)
    let darkEdge = Colors.xTerm256(000)
    let lightEdge = Colors.xTerm256(235)
    let hoverText = Colors.xTerm256(112)
    let actionText = Colors.xTerm256(161)
    let mainText = Colors.xTerm256(244)
    let linkTextEdge1 = Colors.xTerm256(239)
    let linkTextEdge2 = Colors.xTerm256(237)

    var css: CSS {
        """
        h1 {
          font-family: Yellowtail;
          color: blue;
        }

        .neu-button {
          font-family: PermanentMarker;
          display: inline-block;
          margin: 1em;
          padding: 0.2em 0.4em 0.3em 0.3em;
          color: \(buttonIdel);
          border-style: none;
          border-radius: 5px;
          background-color: \(background);
          box-shadow: inset 2px 2px 3px \(lightEdge),
            inset -2px -2px 3px \(darkEdge);
        }

        .neu-button:hover {
          color: \(hoverText);
        }

        .neu-button:active {
          color: \(actionText);
          box-shadow: inset 2px 2px 3px \(darkEdge),
            inset -2px -2px 3px \(lightEdge);
        }

        * {
          background-color: \(background);
          background-clip: text;
          font-family: PermanentMarker;
          -webkit-user-select: none;
          -moz-user-select: none;
          -ms-user-select: none;
          cursor: pointer;
          font-size: 1.2em;
        }

        .neu-text {
          font-family: IndieFlower;
          border-radius: 12px;
          background: \(background);
          box-shadow: inset 2px 2px 3px \(darkEdge),
            inset -2px -2px 3px \(lightEdge);
          margin: 0;
          padding: 0.2em;
          width: fit-content;
          block-size: fit-content;
          display: inline-block;
          color: \(mainText);
        }

        .neu-link {
          color: \(buttonIdel);
          font-size: 0.9em;
          text-decoration: none;
        }

        .neu-link:hover {
          text-shadow: 2px 2px 3px \(linkTextEdge1), -2px -2px 3px \(linkTextEdge2);
          transition: background-color 0.1s ease;
          color: \(hoverText);
        }

        .neu-link:active {
          color: \(actionText);
        }

        @font-face {
          font-family: Yellowtail;
          src: url(Yellowtail-Regular.ttf);
        }

        @font-face {
          font-family: PermanentMarker;
          src: url(PermanentMarker-Regular.ttf);
        }

        @font-face {
          font-family: IndieFlower;
          src: url(IndieFlower-Regular.ttf);
        } 
        """
    }

    var body: String {
        """
        <h1>Zane Enders</h1>
        <button class="neu-button" onclick=\"console.log('hello')\">
            Click me I'm a button
        </button>
        <p class="neu-text">Hello i am zane I am listenting to theveerg cast <a class="neu-link" target="_blank"
              href="https://demo.themesberg.com/neumorphism-ui/html/components/buttons.html">link</a> aidk atrinalsdfjka;lksjas
            tyring to fill out some text really fast and wow am I bad at typing fast well listening to music. Why am I so hard
            on my self</p>
        """
    }

    var tile: String {
        "Document"
    }

    // Maybe move this to a protocol
    public var contents: String {
        """
        <!DOCTYPE html>
        <html lang="en">

        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>\(tile)</title>
          <style>
          \(css)
          </style>
        </head>

        <body>
        \(body)
        </body>
        </html>
        """
    }

    public init() {}
}

struct StyleSates: HasStyle {
    let idel: CSS
    let selected: CSS
    let active: CSS

    var css: CSS {
        idel + selected + active
    }
}

// TODO how should cod highlight work?
struct CodeBlock {
    var code: String
}

typealias JS = String
typealias CSS = String

protocol HasStyle {
    var css: CSS { get }
}

protocol HasJS {
    var js: JS { get }
}

struct NeuLink: HasStyle {

    let label: String
    let href: String
    let css: String

    init(_ label: String, _ href: String, _ css: () -> String) {
        self.label = label
        self.href = href
        self.css = css()
    }
}

struct NeuParagraph: HasStyle {

    let contents: String
    let css: String
    // How do we accept strings and LInks?
    // I think I want something more specific then HTML elements
    // what are the rules of HTML parser?
    init(_ label: String, _ css: () -> String) {
        self.contents = label
        self.css = css()
    }
}

struct NeuHeading: HasStyle {

    let label: String
    let css: String

    init(_ label: String, _ css: () -> String) {
        self.label = label
        self.css = css()
    }
}

struct NeuButton: HasStyle, HasJS {

    let label: String
    let style: StyleSates
    let js: JS

    init(_ label: String, _ styles: StyleSates, _ onClick: JS) {
        self.label = label
        self.style = styles
        self.js = onClick
    }

    var css: CSS {
        style.css
    }
}
