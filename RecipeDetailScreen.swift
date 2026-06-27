import UIKit

class RecipeDetailScreen: UIViewController {
    @IBOutlet private var descriptionLabel: UILabel!
    @IBOutlet private var ingredientsLabel: UILabel!

    private var recipe: Recipe?

    func configure(with recipe: Recipe) {
        self.recipe = recipe
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let recipe else { return }

        title = recipe.name
        descriptionLabel.text = recipe.description
        ingredientsLabel.text = recipe.ingredients.map { "• \($0)" }
            .joined(separator: "\n")
    }
}
