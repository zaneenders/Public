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

/*
git status --porcelain
Used to list out changed files
*/

struct GitRebase: Block {
    var component: some Block {
        Group(.vertical) {
            Text("Rebase <branch> onto main").style(defaultStyles)
            Text("git checkout <branch>").style(defaultStyles)
            Text("git pull --rebase origin main").style(defaultStyles)
            Text("git pull --rebase").style(defaultStyles)
        }.style([.Boarder(.white, .px(6))])
        """
        When you ask for a review.
        When building one PR off another PR, When the base changes you should rebase the others
        """
    }
}
