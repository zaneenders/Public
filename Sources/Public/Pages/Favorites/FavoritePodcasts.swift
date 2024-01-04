import WebsiteBuilder

struct FavoritePodcasts: ZaneWebPage {
    var markup: String {
        h3("How do we deprecate Kubernetes?")
        newTabLink(
            "Git Hub Read Me - Kelsey Hightower",
            to: "https://github.com/readme/podcast/kelsey-hightower")
    }
}
