import Scribe

struct FavoriteQuotesPage: BlockPage {
    var component: some Block {
        Menu()
        Text("Some favorite Quotes of mine")
        Quote(
            "Schrodinger's Code",
            "Your code is good as long as it works and no one else looks at it.",
            "Zane Enders"
        ).selected()
        Quote(
            "Python",
            "Hidden cost, the language",
            "Bryn Curry"
        )
    }
}
