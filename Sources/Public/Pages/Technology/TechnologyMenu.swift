import Scribe

struct TechnologyMenu: Block {
    var component: some Block {
        Group(.horizontal) {
            Open("Git Tips", .page(GitTips.self))
            #if DEBUG
                Open("Browser Tips", .page(BrowserTips.self))
            #endif
            Open("Programming Languages", .page(ProgrammingLanguages.self))
            Open("Chemistry", .page(FlashCards.self))
        }
    }
}
