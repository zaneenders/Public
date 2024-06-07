import Scribe

struct Oxoanion {
    init(_ compond: String, _ name: String) {
        self.compond = compond
        self.name = name
    }
    let compond: String
    let name: String
}

struct Chemistry: BlockPage {
    var cards: [Oxoanion] = [
        Oxoanion("BrO-", "hypobromite"),
        Oxoanion("BrO_2-", "bromite"),
    ]
    @State var index: Int = 0
    @State var side: Bool = false
    @State var display: String = ""
    func computeDisplay() -> String {
        switch side {
        case false:
            return cards[index].name
        case true:
            return cards[index].compond
        }
    }
    var component: some Block {
        Menu()
        Text("Oxoanions of the Halides").selected()
        Text(display)
        Button("Flip") {
            side.toggle()
            display = computeDisplay()
        }
        Button("Next") {
            if index + 1 < cards.count {
                index += 1
            } else {
                index = 0
            }
            display = computeDisplay()
        }
    }
}
