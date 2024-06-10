import Scribe

struct Menu: Block {
    var component: some Block {
        Open("Home", .page(HomePage.self))
        Group(.horizontal) {
            Open("Other Page", .page(OtherPage.self)).style([
                .BackgroundColor(.green),
                .Boarder(.pink, .px(0)),
            ])
            Open("Git Tips", .page(GitTips.self))
            #if DEBUG
                Open("Browser Tips", .page(BrowserTips.self))
            #endif
            Open("Blog", .page(BlogPage.self))
            Open("Favorite Quotes", .page(FavoriteQuotesPage.self))
            Open("Programming Languages", .page(ProgrammingLanguages.self))
            Open("Chemistry", .page(FlashCards.self))
        }
    }
}
