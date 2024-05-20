import Scribe

public struct HomePage: BlockProgram {

    public init() {}

    @State var left = 0
    @State var right = 0
    public var component: some Block {

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
        SwitchTo("Other Page", .program(OtherPage.self))
        SwitchTo("Git Tips", .program(GitTips.self))
    }
}
