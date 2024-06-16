import Scribe

struct BlogPostMenu: Block {
    var component: some Block {
        Open("Meet Scribe", .page(MeetScribe.self))
    }
}
