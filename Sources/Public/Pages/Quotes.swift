import WebsiteBuilder

struct Qoutes: BaseThemePage {

    let js: Bool = false
    let mathPage: Bool = false

    var title: String {
        "Zane Enders | Qoutes"
    }

    var themedContent: String {
        list
    }

    var list: String {
        """
        You have to be in a bin so pick the bin. 
        The meaning of life is self respect.
        - Andrew Bustamante \(Podcast(PodcastLink(apple:"https://podcasts.apple.com/us/podcast/310-andrew-bustamante-cia-spy/id1434243584?i=1000575398147",spotify:"https://open.spotify.com/episode/1MfT1hrogKow5wkTmiY85C"), "Just better Then I thought it would be and also a new persepctive on many parts of life."))
        """
    }

    init() {}
}
