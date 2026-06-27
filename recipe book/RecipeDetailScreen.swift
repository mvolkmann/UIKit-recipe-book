import UIKit

class RecipeDetailScreen: UIViewController {
    @IBOutlet private var descriptionLabel: UILabel!
    @IBOutlet private var ingredientsLabel: UILabel!

    private var recipe: Recipe!

    func configure(with recipe: Recipe) {
        self.recipe = recipe
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = recipe.name // the view title

        descriptionLabel.text = recipe.description

        // This uses a single UILabelView to display all the ingredients
        // by separating them with newline characters.
        ingredientsLabel.text = recipe.ingredients.map { "• \($0.displayText)" }
            .joined(separator: "\n")
    }
}
