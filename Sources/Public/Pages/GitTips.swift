import Scribe

struct GitTips: BlockPage {
    @State var count: Int = 0
    var component: some Block {
        Text("Git Tips").selected()
        Open("Zane Enders", .page(HomePage.self))
        //
        Text("Show last short commit hash")
        Text("git rev-parse --short HEAD")
        //
        Text("Undo last commit")
        Text("git reset --soft HEAD~")
    }
}
