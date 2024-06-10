import Scribe

struct Menu: Block {
    var component: some Block {
        Open("Home", .page(HomePage.self))
        Group(.horizontal) {
            Open("Blog", .page(BlogPage.self))
            Open("Favorite Quotes", .page(FavoriteQuotesPage.self))
            Open("💻", .page(TechnologyPage.self))
        }
    }
}
