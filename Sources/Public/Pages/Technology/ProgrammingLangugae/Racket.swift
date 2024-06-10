import Scribe

struct Racket: BlockPage {
    var component: some Block {
        Menu()
        Group(.vertical) {
            Text("Install Racket language server").selected()
            Text("raco pkg install racket-langserver")
        }
    }
}
