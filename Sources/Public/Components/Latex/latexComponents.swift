typealias LatexString = String

/*
Note extra space is important
*/
func latex(_ latexDescription: String) -> LatexString {
    " $\(latexDescription)$ "
}

// TODO fix swift namespace issue
func _subscript(_ string: String) -> LatexString {
    "_{\(string)} "
}

func superscript(_ string: String) -> LatexString {
    "^{\(string)} "
}

func fraction(_ top: String, _ bottom: String) -> LatexString {
    " \\frac{\(top)}{\(bottom)} "
}

func sqrt(_ left: String, _ right: String) -> LatexString {
    " \\sqrt[\(left)]{\(right)} "
}

func bold(_ text: String) -> LatexString {
    " \\textbf{\(text)} "
}

func hat(_ text: String) -> LatexString {
    " \\hat \(text) "
}

func curlyBrackets(_ text: String) -> LatexString {
    " \\{ \(text) \\} "
}

func perp() -> LatexString {
    " \\perp "
}

func dot(_ left: String, _ right: String) -> LatexString {
    " \(left) \\cdot \(right) "
}

func columnVector(_ elements: [String]) -> LatexString {
    var contents = " "
    for e in elements {
        contents += "\(e) \\\\ \n"
    }
    let out = """
        \\begin{bmatrix}
        \(contents)
        \\end{bmatrix} 
        """

    return latex(out)
}
