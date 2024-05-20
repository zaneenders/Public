import Tags
import WebsiteBuilder

struct Math: BaseThemePage {
    let js: Bool = true
    let mathPage: Bool = true

    var themedContent: String {
        h2("Math related things here")
        h3(latex("e^{i\\pi} + 1 = 0"))
        h3("Abstractness is the price of generality - 3B1B")
        makeLinks(subPages).joined(separator: "\n")

        #if DEBUG
            MathPlan()
        #endif
    }

    var subPages: [BaseThemePage.Type] = [
        LinearAlgebra.self,
        Derivative.self,
        Axiom.self,
        Polynomials.self,
        Algebra.self,
        Equivalence.self,
    ]
}

struct MathPlan: PageComponent {
    @ParagraphBuilder var contents: String {
        """
        The loose plan is to relearn math / teach math on my website starting from the beginning and building up.
        """
        Question("Why do we start with Arithmetic")
        "Maybe I can build up similar to this https://youtu.be/HeQX2HjkcNo?feature=shared&t=954"
        TODO("get swift Syntax highlighting working")
        TODO("Get MathML html tags working")
        TODO("Maybe poke at WEBGL2 for drawing shapes and graphs")
    }
}
