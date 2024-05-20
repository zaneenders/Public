struct Matrix: BaseThemePage {

    var themedContent: String {
        """
        Matrix addition is pretty much the same as vector addition and can be thought of as a loop with pointers in both elements and adding those elements together in the resulting matrix.

        Two Matrix are consider equal if all there entries are equal
        """
    }
}

extension Matrix {

    // @available(*, deprecated, message: "Testing")
    init(_ matrix2d: [[Int]]) {
        /*
        m x n
        m rows = number of arrays in main array
        n cols = number of ints in each sub array
        */
        for row in matrix2d {
            for entry in row {

            }
        }
    }
}

extension Matrix {
    // TODO does this work for web?
    // see LatexColor.md
    /*
    line:     \ldots
    diagonal: \ddots
    vertical: \vdots

    brackets: \begin{bmatrix}\end{bmatrix}
    parentheses: \begin{pmatrix}\end{pmatrix}

    COLOR:
    https://docs.mathjax.org/en/latest/input/tex/extensions/color.html
    */
    // energy is a custom color
    var latex: String {
        """
        $\\definecolor{energy}{RGB}{114,0,172}
        \\begin{matrix}
        {\\color{red} \\alpha}& {\\color{green} \\beta^{*}}
        \\\\
        {\\color{energy} \\gamma^{*}}& {\\color{blue} \\delta}
        \\end{matrix}$
        """
    }
}
