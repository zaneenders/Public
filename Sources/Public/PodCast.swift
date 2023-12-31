struct PodcastLink {
    let apple: String
    let spotify: String
}

struct Podcast {
    let link: PodcastLink
    let commet: String

    init(_ link: PodcastLink, _ comment: String) {
        self.link = link
        self.commet = comment
    }
}
