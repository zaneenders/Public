import WebsiteBuilder

struct ProgrammingLanguages: BaseThemePage {
    var themedContent: String {
        makeLinks(subPages).joined(separator: "\n")
    }

    var pages: [BaseThemePage.Type] = [
        TypeInference.self,
        ParametricPolymorphism.self,
    ]
}
