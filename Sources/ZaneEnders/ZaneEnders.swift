import Public
import Scribe
import WSServer

@main
struct ZaneEnders: ScribeWS {
    let details = SiteDetails(
        title: "Zane Was Here",
        selected: [
            BackgroundColor(.blue),
            Boarder(.yellow),
        ])
    let server = ServerConfig(
        host: .ipv4("0.0.0.0"), port: 42069,
        domain: "zaneenders.com")
    let page: (any BlockPage.Type) = HomePage.self
}
