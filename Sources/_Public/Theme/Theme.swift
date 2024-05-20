import WebsiteBuilder

typealias URLString = String
enum LinkType {
    case page(URLString)
    case site(URLString)
}

/*
TODO need different types of buttons
- well I want the design of all buttons to look the same
*/

func button(_ label: String, to type: LinkType) -> String {
    switch type {
    case .page(let url):
        return """
            <button onclick=" location.href='\(url)'">\(label)</button>
            """
    case .site(let url):
        return """
            <button onclick=" window.open('\(url)','_blank')">\(label)</button>
            """
    }
}

func makeButton(_ page: BaseThemePage.Type) -> String {
    return button("\(page.self)", to: .page(page.url))
}

func makeButton(_ page: BasePage.Type) -> String {
    return button("\(page.self)", to: .page(page.url))
}
