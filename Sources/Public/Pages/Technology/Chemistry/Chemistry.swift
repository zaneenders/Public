import Scribe

struct Halides {
    // TODO support MathML https://developer.mozilla.org/en-US/docs/Web/MathML
    init(_ compond: String, _ name: String) {
        self.compond = compond
        self.name = name
    }
    let compond: String
    let name: String
}

struct FlashCards: BlockPage {
    let cards: [Halides] = [
        Halides("BrO-", "hypobromite"),
        Halides("BrO_2-", "bromite"),
        Halides("BrO_3-", "bromate"),
        Halides("BrO_4-", "perbromate"),
        Halides("ClO-", "hypochlorite"),
        Halides("ClO_2-", "chlorite"),
        Halides("ClO_3-", "chlorate"),
        Halides("ClO_4-", "perchloate"),
        Halides("IO-", "hypoiodite"),
        Halides("IO_2-", "iodite"),
        Halides("IO_3-", "iodate"),
        Halides("IO_4-", "periodate"),
    ]
    @State var index: Int = 0
    @State var side: Bool = false
    @State var display: String = "Press Next or Flip"

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

    func computeDisplay() -> String {
        switch side {
        case false:
            return cards[index].name
        case true:
            return cards[index].compond
        }
    }
}
