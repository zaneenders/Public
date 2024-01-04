import WebsiteBuilder

struct Favorites: ZaneWebPage {
    var markup: String {
        "A Page of some of my favorite content on the web"
        "hopefully not broken links"
    }

    var subPages: [WebPage.Type] = [
        FavoriteVideos.self,
        FavoriteArticles.self,
        FavoritePodcasts.self,
    ]
}
