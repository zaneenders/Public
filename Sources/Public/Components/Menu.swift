import Scribe

struct Menu: Block {
    var component: some Block {
        HGroup {
            Open("Other Page", .page(OtherPage.self))
            Open("Git Tips", .page(GitTips.self))
            Open("Blog", .page(BlogPage.self))
        }
    }
}
