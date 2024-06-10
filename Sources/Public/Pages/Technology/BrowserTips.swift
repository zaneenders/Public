import Scribe

struct BrowserTips: BlockPage {
    @State var count: Int = 0
    var component: some Block {
        Menu()
        Text("Browser Tips").selected()
        Text("Link to this to check for TabNabbing")
        Open("Link", .link(url: "https://mathiasbynens.be/demo/opener"))
    }
}
