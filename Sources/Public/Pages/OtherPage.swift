import Scribe

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
