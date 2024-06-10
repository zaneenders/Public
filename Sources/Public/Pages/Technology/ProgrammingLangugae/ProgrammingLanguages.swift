import Scribe

struct ProgrammingLanguages: BlockPage {
    var component: some Block {
        Menu()
        Text(
            "Random thoughts and tips in regards to Programming languages I have used."
        ).selected()
        Open("Swift", .page(SwiftLanguage.self))
        Open("Racket", .page(Racket.self))
    }
}
