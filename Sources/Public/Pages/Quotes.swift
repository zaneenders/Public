import WebsiteBuilder

let links: Set<PodcastLink> = [
    .apple(
        "https://podcasts.apple.com/us/podcast/310-andrew-bustamante-cia-spy/id1434243584?i=1000575398147"
    ), .spotify("https://open.spotify.com/episode/1MfT1hrogKow5wkTmiY85C"),
]
let why =
    "Just better Then I thought it would be and also a new persepctive on many parts of life."
let podcastLink = Podcast(links)

struct Qoutes: BaseThemePage {

    @_Builder var themedContent: String {
        Qoute(
            "You have to be in a bin so pick the bin", "Andrew Bustamante",
            podcastLink, why)
        Qoute(
            "The meaning of life is self respect", "Andrew Bustamante",
            podcastLink, why)
    }

    init() {}
}
