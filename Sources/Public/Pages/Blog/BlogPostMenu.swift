import Scribe

struct BlogPostMenu: Block {
    var component: some Block {
        Open("Welcome", .page(Welcome.self))
    }
}
