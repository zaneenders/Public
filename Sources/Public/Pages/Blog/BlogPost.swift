import Scribe

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
