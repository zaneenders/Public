import WebsiteBuilder

struct ProgrammingLanguages: PLPage {
    var plContent: String {
        makeLinks(subPages).joined(separator: "\n")
    }

    var subPages: [WebPage.Type] = [
        TypeInference.self,
        ParametricPolymorphism.self,
    ]
}
