import Scribe

struct GitTips: BlockPage {
    var component: some Block {
        Menu()
        Text("Git Tips").selected()
        //
        Text("Show last short commit hash")
        Text("git rev-parse --short HEAD")
        //
        Text("Undo last commit")
        Text("git reset --soft HEAD~")
    }
}
