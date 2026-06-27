import UIKit

class RecipeDetailScreen: UIViewController {
    @IBOutlet private var descriptionLabel: UILabel!
    @IBOutlet private var ingredientsLabel: UILabel!
    @IBOutlet private var stepsLabel: UILabel!

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
        // Each ingredient is preceded by a bullet character.
        ingredientsLabel.text = recipe.ingredients.map { "• \($0.displayText)" }
            .joined(separator: "\n")

        // This uses a single UILabelView to display all the steps
        // by separating them with newline characters.
        // Each step is preceded by its number,
        // followed by a period and a space.
        stepsLabel.text = recipe.steps.enumerated().map { index, step in
            "\(index + 1). \(step)"
        }
        .joined(separator: "\n")
    }
}
