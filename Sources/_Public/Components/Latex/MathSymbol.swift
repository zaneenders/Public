// TODO add remaining symbols from Latex cheat sheet
enum MathSymbol {
    case lambda
    case Sigma
    case sigma
    case notEqual
}

extension MathSymbol: CustomStringConvertible {
    var description: String {
        switch self {
        case .lambda:
            return "\\lambda"
        case .Sigma:
            return "\\Sigma"
        case .sigma:
            return "\\sigma"
        case .notEqual:
            return "\\neq"
        }
    }
}

let Sigma = latex(MathSymbol.Sigma.description)
let sigma = latex(MathSymbol.sigma.description)
