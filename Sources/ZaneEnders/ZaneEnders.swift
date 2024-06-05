import Public
import Scribe
import WSServer

@main
struct ZaneEnders: ScribeWS {
    let details = SiteDetails(title: "Zane Was Here")
    let server = ServerConfig(
        host: .ipv4("127.0.0.1"), port: 42069,
        domain: "zaneenders.com")
    let page: (any BlockPage.Type) = HomePage.self
}
