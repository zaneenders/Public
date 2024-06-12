import Scribe
import _ScribeExtras

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
        //
        GitRebase()
    }
}

struct GitRebase: Block {
    var component: some Block {
        Group(.vertical) {
            Text("Rebase <branch> onto main").style(defaultStyles)
            Text("git checkout <branch>").style(defaultStyles)
            Text("git pull --rebase origin main").style(defaultStyles)
            Text("git pull --rebase").style(defaultStyles)
        }.style([.Boarder(.white, .px(6))])
    }
}
