import Scribe

struct TechnologyMenu: Block {
    var component: some Block {
        Group(.horizontal) {
            Open("Git Tips", .page(GitTips.self))
            Open("Browser Tips", .page(BrowserTips.self))
            Open("Programming Languages", .page(ProgrammingLanguages.self))
            Open("Chemistry", .page(FlashCards.self))
        }
    }
}
