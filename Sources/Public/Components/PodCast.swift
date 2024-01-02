import WebsiteBuilder

protocol ExternalMeida: PageComponent {
    var htmlView: String { get }
}

extension Podcast: ExternalMeida {
    var htmlView: String {
        var out = ""
        for link in links {
            out += link.makeButton()
        }
        return "<div>\(out)<div>"
    }

    var contents: String {
        htmlView
    }
}

enum PodcastLink: Hashable {
    case apple(URLString)
    case spotify(URLString)

    func makeButton() -> URLString {
        switch self {
        case let .apple(url):
            return button("apple", to: .site(url))
        case let .spotify(url):
            return button("spotify", to: .site(url))
        }
    }
}

struct Podcast {
    let links: Set<PodcastLink>

    init(_ link: PodcastLink) {
        self.links = [link]
    }

    init(_ links: Set<PodcastLink>) {
        self.links = links
    }
}
