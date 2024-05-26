import Scribe

struct BlogPage: BlockPage {
    var component: some Block {
        Menu()
        Text("Welcome to my blog").selected()
        BlogPostMenu()
    }
}

struct BlogPostMenu: Block {
    var component: some Block {
        Open("Welcome", .page(Welcome.self))
    }
}

protocol BlogPost: BlockPage {
    associatedtype Content: Block
    @BlockParser var content: Content { get }
}

extension BlogPost {
    var component: some Block {
        // TODO VGroup
        Group(.vertical) {
            Menu()
            BlogPostMenu()
            content
        }
    }
}
