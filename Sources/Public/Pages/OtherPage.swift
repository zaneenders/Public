import Scribe

struct OtherPage: BlockPage {
    @State var count: Int = 0
    var component: some Block {
        Menu()
        Text("Other Page").selected()
        Button("\(count)") {
            count += 1
        }
        if count.isMultiple(of: 2) {
            Text("Even")
        } else {
            Text("Odd")
        }
    }
}
