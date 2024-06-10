import Scribe

struct SwiftLanguage: BlockPage {
    var component: some Block {
        Menu()
        Text("It's pretty good you should try it 😉.").selected()
    }
}
