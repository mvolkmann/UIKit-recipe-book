import UIKit

class RecipeDetailViewController: UIViewController {
    private let recipe: Recipe

    init(recipe: Recipe) {
        self.recipe = recipe
        super.init(nibName: nil, bundle: nil)
    }

    // Because the superclass UIViewController has a required init?(coder:),
    // this subclass must defined it.
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = recipe.name
        view.backgroundColor = .systemBackground

        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false

        let descriptionLabel = UILabel()
        descriptionLabel.text = recipe.description
        descriptionLabel.font = .preferredFont(forTextStyle: .body)
        descriptionLabel.numberOfLines = 0

        let ingredientsTitleLabel = UILabel()
        ingredientsTitleLabel.text = "Ingredients"
        ingredientsTitleLabel.font = .preferredFont(forTextStyle: .headline)

        let ingredientsLabel = UILabel()
        ingredientsLabel.text = recipe.ingredients.map { "• \($0)" }
            .joined(separator: "\n")
        ingredientsLabel.font = .preferredFont(forTextStyle: .body)
        ingredientsLabel.numberOfLines = 0

        stackView.addArrangedSubview(descriptionLabel)
        stackView.addArrangedSubview(ingredientsTitleLabel)
        stackView.addArrangedSubview(ingredientsLabel)
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor,
                constant: 24
            ),
            stackView.leadingAnchor
                .constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            stackView.trailingAnchor
                .constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        ])
    }
}
