import Scribe

struct Menu: Block {
    var component: some Block {
        Open("Home", .page(HomePage.self))
        Group(.horizontal) {
            Open("Other Page", .page(OtherPage.self))
            Open("Git Tips", .page(GitTips.self))
            Open("Browser Tips", .page(BrowserTips.self))
            Open("Blog", .page(BlogPage.self))
        }
    }
}
