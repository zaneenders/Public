import WebsiteBuilder

//@available(*, deprecated, message: "Move into WebsiteBuilder")
@resultBuilder
public enum _Builder {
    public static func buildBlock(_ components: any PageComponent...)
        -> HTMLString
    {
        var output = ""
        for c in components {
            output += c.contents
            output += "\n"
        }
        return output
    }
}
