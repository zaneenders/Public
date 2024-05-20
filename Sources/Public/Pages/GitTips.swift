import Scribe

struct GitTips: BlockProgram {
    @State var count: Int = 0
    var component: some Block {
        Text("Git Tips").selected()
        SwitchTo("Zane Enders", .program(HomePage.self))
        //
        Text("Show last short commit hash")
        Text("git rev-parse --short HEAD")
        //
        Text("Undo last commit")
        Text("git reset --soft HEAD~")
    }
}
