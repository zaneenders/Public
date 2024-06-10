import Scribe
import _ScribeExtras

struct BrowserTips: BlockPage {
    @State var count: Int = 0
    var component: some Block {
        Menu()
        Text("Browser Tips").selected()
        Text("Link to this to check for TabNabbing")
        Link("Example Link", url: "https://mathiasbynens.be/demo/opener")
    }
}
