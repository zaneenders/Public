import WebsiteBuilder

struct Favorites: BaseThemePage {
    var themedContent: String {
        "A Page of some of my favorite content on the web"
        "hopefully not broken links"
    }

    var subPages: [WebPage.Type] = [
        FavoriteVideos.self,
        FavoriteArticles.self,
        FavoritePodcasts.self,
    ]
}
