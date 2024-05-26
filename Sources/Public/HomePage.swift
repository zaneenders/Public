import Scribe

public struct HomePage: BlockPage {

    public init() {}

    @State var left = 0
    @State var right = 0
    public var component: some Block {
        Menu()
        Text("Zane Enders").selected()
        Text("Welcome to my website. It's a subtly different 😉.")
        HGroup {
            Button("left: \(left)") {
                left += 1
            }
            Button("right: \(right)") {
                right += 1
            }
        }
    }
}
