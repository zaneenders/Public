import WebsiteBuilder

struct SocialGraph: BaseThemePage {

    var themedContent: String {
        var links = ""
        links.append(h2("Social Graph"))
        for fav in SocialGraph.socialWeb {
            links.append(pTag(newTabLink(fav.key, to: fav.value)))
        }
        return links
    }

    // Websites
    private static let socialWeb = [
        "Dibri Nsofor": "https://dibrinsofor.github.io/",
        "Tyler Callister": "https://tcmtb.blog/",
        "Ashton Wiersdorf": "https://lambdaland.org/",
        "Professor Panchekha": "https://pavpanchekha.com/",
        "Bri Clark": "https://bricreativeco.com/",
        "Kris Marston": "https://krisairdancer.com/",
        "Sam Seagal": "https://samsegal.dev",
        "Dr Ian Brigs": "https://ianbriggs.dev",
        "Bhargav Kulkarni": "https://wags-1314.github.io",
    ]
}
