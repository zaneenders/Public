import WebsiteBuilder

enum LinkType {
    case inner
    case outer
}

func button(_ str: String, _ type: LinkType) -> String {
    // "<button type=\"button\" href=\"/Qoutes\" \(CSSClass.typeClass(.button))>Click Me!</button> "
    switch type {
    case .inner:
        return """
            <button onclick=" location.href='http://google.com'" \(CSSClass.typeClass(.button))>\(str)</button>
            """
    case .outer:
        return """
            <button onclick=" window.open('http://google.com','_blank')" \(CSSClass.typeClass(.button))>\(str)</button>
            """
    }
}
