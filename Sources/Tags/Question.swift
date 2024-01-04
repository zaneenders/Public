import WebsiteBuilder

// Maybe move to Tags
public struct Question: PageComponent {
    let txt: String
    public init(_ item: String) {
        self.txt = item
    }

    public var contents: String {
        pTag("Question: " + txt)
    }
}
