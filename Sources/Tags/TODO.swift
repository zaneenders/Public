import WebsiteBuilder

public struct TODO: PageComponent {

    let txt: String

    public init(_ item: String) {
        self.txt = item
    }

    /**
    ```
    TODO("hello"){
        TODO("Sub task")
    }
    ```
    */
    @available(*, deprecated, message: "Testing out nested TODO list")
    public init(_ item: String, @TODOComposer _ subtask: () -> [TODO]) {
        var output = "\(item)\n <ol> "
        for p in subtask() {
            output += " <li> " + p.contents + " </li> "
        }
        output += " </ol> "
        self.txt = output
    }

    public var contents: String {
        pTag("TODO: " + txt)
    }
}

@resultBuilder
public enum TODOComposer {
    public static func buildBlock(_ components: TODO...)
        -> [TODO]
    {
        components
    }
}

public struct DONE: PageComponent {

    let txt: String

    public init(_ item: String) {
        self.txt = item
    }

    public var contents: String {
        pTag("[x]: " + _strikethroughTag(txt))
    }
}
