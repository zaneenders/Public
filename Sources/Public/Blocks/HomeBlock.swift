import WebsiteBuilder

// Needs to be public so the server can setup from there
public struct HomeBlock: Block {
    public init() {}

    @State var count: Int = 0
    // @State var count2: Int = 0

    var s: Bool {
        count.isMultiple(of: 2)
    }

    public var component: some Block {
        Button("Button \(count)") {
            count += 1
        }
        Text("Zane Was here \(s)")
        Text("Welcome to the rabbit hole")
        Nested(count: $count)
        /*
        Button("Button \(count2)") {
            count2 += 1
        }
        */
    }
}

struct Nested: Block {
    @Binding var count: Int
    var component: some Block {
        Text("Nested \(count)")
    }
}
