import Colors
import WebsiteBuilder

enum CSSClass {
    case button

    static func typeClass(_ c: CSSClass) -> String {
        switch c {
        case .button:
            return """
                class = "button"
                """
        }
    }

    static func style(_ c: CSSClass) -> String {
        switch c {
        case .button:
            // https://dev.to/nicm42/how-to-make-a-button-looked-like-it-s-staying-pressed-down-58k
            // would like to have state between pages
            let style = """
                .button {
                    border-radius: 10px;
                    box-shadow: 2px 2px 6px \(Colors.xTerm256(251)), -2px -2px 6px \(Colors.xTerm256(255));
                    padding: 0.4em;
                    margin: 0.25em;
                    color: black;
                    text-decoration: none;
                    border-color: white;
                    border-style: solid;
                    border-width: 1px; 
                }
                .button:hover {
                    background-color: \(Colors.xTerm256(122));
                    border-color: \(Colors.xTerm256(251));
                }
                .button:active {
                    box-shadow: 2px 2px 6px \(Colors.xTerm256(255)), -2px -2px 6px \(Colors.xTerm256(251)); 
                    background-color: red;
                }
                """
            return style
        }
    }
}
