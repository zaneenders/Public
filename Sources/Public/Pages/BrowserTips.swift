import Scribe

struct BrowserTips: BlockPage {
    @State var count: Int = 0
    var component: some Block {
        Text("Git Tips").selected()
        Open("Zane Enders", .page(HomePage.self))
        Text("Link to this to check for TabNabbing")
        Open("Link", .link(url: "https://mathiasbynens.be/demo/opener"))
    }
}
