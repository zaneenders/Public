import Public
import Scribe
import WSServer

@main
struct ZaneEnders: ScribeWS {
    let details = MyDetails.site
    let server = ServerConfig(
        host: .ipv4("0.0.0.0"), port: 42069,
        domain: MyDetails.url)
    let page: (any BlockPage.Type) = HomePage.self
}
