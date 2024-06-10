import Scribe

struct TechnologyPage: BlockPage {
    var component: some Block {
        Menu()
        TechnologyMenu()
        Text("My Various technology interest").selected()
    }
}
