import Colors
import WebsiteBuilder

// TODO seperate built in selectors and custom selectors
enum CSSClass: CaseIterable {
    case body
    case button
    case div

    private static func style(_ c: CSSClass) -> String {
        switch c {
        case .button:
            // https://dev.to/nicm42/how-to-make-a-button-looked-like-it-s-staying-pressed-down-58k
            // would like to have state between pages
            let style = """
                \(c) {
                    display: inline-block;
                    border-radius: 10px;
                    box-shadow: 2px 2px 6px \(Colors.xTerm256(251)), -2px -2px 6px \(Colors.xTerm256(255));
                    padding: 0.4em;
                    margin: 0.25em;
                    color: black;
                    text-decoration: none;
                    background-color: \(Colors.xTerm256(15));
                    border-color: \(Colors.xTerm256(15));
                    border-style: solid;
                    border-width: 1px; 
                }
                \(c):hover {
                    background-color: \(Colors.xTerm256(122));
                    border-color: \(Colors.xTerm256(251));
                }
                \(c):active {
                    box-shadow: 2px 2px 6px \(Colors.xTerm256(255)), -2px -2px 6px \(Colors.xTerm256(251)); 
                    background-color: red;
                }
                """
            return style
        case .div:
            return """
                div {
                }
                """
        case .body:
            return """
                \(c) {
                    text-align: center; 
                }
                """
        }
    }

    static func allStyles() -> String {
        var out = ""
        for s in CSSClass.allCases {
            out.append(CSSClass.style(s))
            out.append("\n")
        }
        return out
    }

    static func typeClass(_ c: CSSClass) -> String {
        return """
            class = "\(c)"
            """
    }

    static func typeClass(_ classes: Set<CSSClass>) -> String {
        var list = ""
        for c in classes {
            list.append("\(c) ")
        }
        list = String(list.dropLast())
        return """
            class = "\(list)"
            """
    }
}
