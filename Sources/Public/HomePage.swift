import Scribe
import WSServer

public struct HomePage: BlockPage {

    public init() {}

    @State var left = 0
    @State var right = 0
    public var component: some Block {
        Menu()
        Text("Zane Enders").selected()
        Text("Welcome to my website. It's a subtly different 😉.")
        Group(.horizontal) {
            Button("left: \(left)") {
                left += 1
            }
            Button("right: \(right)") {
                right += 1
            }
        }
    }
}

// Used for Server setup/ config
public let myDetails = SiteDetails(
    title: "Zane Was Here",
    selected: [
        BackgroundColor(.blue),
        Boarder(.yellow),
    ])

public let url = "zaneenders.com"
