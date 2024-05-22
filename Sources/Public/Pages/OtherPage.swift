import Scribe

struct OtherPage: BlockPage {
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
        Open("Zane Enders", .page(HomePage.self))
    }
}
