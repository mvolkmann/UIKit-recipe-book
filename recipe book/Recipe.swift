import Foundation

struct Recipe {
    struct Ingredient {
        let name: String
        let amount: String
        let unit: String

        var displayText: String {
            "\(amount) \(unit) \(name)"
        }
    }

    let name: String
    let description: String
    let ingredients: [Ingredient]
}
