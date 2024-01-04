protocol Number {}

struct Real: Number {

}

extension Real: Latex {
    var latexDescription: LatexString {
        "\\mathbb{R}"
    }
}

struct Complex: Number {

}

extension Complex: Latex {
    var latexDescription: LatexString {
        "\\mathbb{C}"
    }
}

protocol Latex {
    var latexDescription: LatexString { get }
}
