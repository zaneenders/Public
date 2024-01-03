import Colors
import WebsiteBuilder

enum CustomCSS: CaseIterable {
    case card
    case blogContent
}

extension CustomCSS {
    private static func _cardStyle() -> String {
        """
        display: inline-block;
        background-color: \(Colors.xTerm256(15));
        box-shadow: inset 2px 2px 6px \(Colors.xTerm256(251)), inset -2px -2px 6px \(Colors.xTerm256(255)); 
        border-radius: 10px;
        border-color: \(Colors.xTerm256(15));
        border-style: solid;
        border-width: 1px;     
        """
    }
    fileprivate static func style(_ c: CustomCSS) -> String {
        switch c {
        case .card:
            """
            .\(c) {
                \(_cardStyle())
                margin: 1em;
                padding: 1em;
            }
            """
        case .blogContent:
            """
            .\(c) {
                \(_cardStyle())
                margin: 1em;
                padding: 0 1em;
            }
            .\(c) > p, h3, h4, h5, h6 {
                text-align: left;
            }
            """
        }
    }

    static func typeClass(_ c: CustomCSS) -> String {
        return """
            class = "\(c)"
            """
    }

    static func typeClass(_ classes: Set<CustomCSS>) -> String {
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

enum CSSClass: CaseIterable {
    case body
    case button
    case div
}

extension CSSClass {
    fileprivate static func style(_ c: CSSClass) -> String {
        switch c {
        case .button:
            // https://dev.to/nicm42/how-to-make-a-button-looked-like-it-s-staying-pressed-down-58k
            // would like to have state between pages
            let style = """
                \(c) {
                    display: inline-block;
                    box-shadow: 2px 2px 6px \(Colors.xTerm256(251)), -2px -2px 6px \(Colors.xTerm256(255));
                    padding: 0.4em;
                    margin: 0.25em;
                    color: black;
                    text-decoration: none;
                    background-color: \(Colors.xTerm256(15));
                    border-radius: 10px;
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
}

func allStyles() -> String {
    var out = ""
    for s in CSSClass.allCases {
        out.append(CSSClass.style(s))
        out.append("\n")
    }
    for s in CustomCSS.allCases {
        out.append(CustomCSS.style(s))
        out.append("\n")
    }
    return out
}
