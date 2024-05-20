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
    }
}

struct OtherPage: BlockProgram {
    @State var count: Int = 0
    var component: some Block {
        Text("Other Page").selected()
        Button("\(count)") {
            count += 1
        }
        if count.isMultiple(of: 2) {
            Text("Even")
        } else {
            Text("Odd")
        }
        SwitchTo("Zane Enders", .program(HomePage.self))
    }
}
