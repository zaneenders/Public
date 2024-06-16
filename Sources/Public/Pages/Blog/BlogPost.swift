import Scribe

protocol BlogPost: BlockPage {
    associatedtype Content: Block
    @BlockParser var content: Content { get }
}

struct BlogTile: Block {
    let label: String
    init(_ label: String) {
        self.label = label
    }
    var component: some Block {
        Text(label).style([
            .ForegroundColor(.orange), .BackgroundColor(.black),
            .Boarder(.orange, .px(6)),
        ])
    }
}

struct BlogHeading: Block {
    let label: String
    init(_ label: String) {
        self.label = label
    }
    var component: some Block {
        Text(label).style([.ForegroundColor(.orange)])
    }
}

extension BlogPost {
    var component: some Block {
        Group(.vertical) {
            Menu()
            BlogPostMenu()
            content.style([.ForegroundColor(.white)])
        }
    }
}
