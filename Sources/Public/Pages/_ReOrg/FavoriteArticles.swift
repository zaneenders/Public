import WebsiteBuilder

struct FavoriteArticles: BaseThemePage {
    var themedContent: String {
        h3("Computer Science & Programming related things")
        unorderedList {
            newTabLink(
                "Programming Languages Comic",
                to: "https://leftoversalad.com/c/015_programmingpeople/")
            newTabLink(
                "C isn't a Programming Language anymore",
                to: "https://faultlore.com/blah/c-isnt-a-language/")
            newTabLink(
                "Text Rendering hates you too",
                to: "https://faultlore.com/blah/text-hates-you/")
            // https://bernsteinbear.com/blog/typed-python/
        }
        h4(aTag("Swift related articles", to: _Swift.url))
        h4("Operating Systems")
        unorderedList {
            newTabLink(
                "Midori",
                to: "https://joeduffyblog.com/2015/11/03/blogging-about-midori/"
            )
        }
    }
}
