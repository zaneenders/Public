import WebsiteBuilder

struct Qoute: PageComponent {
    let text: String
    let person: String
    let why: String?
    let link: ExternalMeida?

    init(
        _ text: String, _ person: String, _ extern: ExternalMeida? = nil,
        _ why: String? = nil
    ) {
        self.text = text
        self.person = person
        self.link = extern
        self.why = why
    }

    var contents: String {
        """
        <div \(CustomCSS.typeClass(.card))>
        <div>"\(text)"</div>
        - \(person) \(link != nil ? link!.htmlView : "")
        </div>
        """
    }
}
