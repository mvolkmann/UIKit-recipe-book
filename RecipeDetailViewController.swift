import UIKit

class RecipeDetailViewController: UIViewController {
    private let recipe: Recipe

    init(recipe: Recipe) {
        self.recipe = recipe

        // We need to run the init method in UIViewController even though
        // this screen is built in code instead of loaded from a nib file.
        // A nib file is a compiled Interface builder file.
        super.init(nibName: nil, bundle: nil)
    }

    // Because the superclass UIViewController has a required init?(coder:),
    // this subclass must also defined it.  But it will never be called.
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // This programmatically creates the view.
    override func viewDidLoad() {
        super.viewDidLoad()

        title = recipe.name
        view.backgroundColor = .systemBackground

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

        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 16
        // Disable autoresizing mask constraints
        // so Auto Layout uses the constraints below.
        stackView.translatesAutoresizingMaskIntoConstraints = false

        stackView.addArrangedSubview(descriptionLabel)
        stackView.addArrangedSubview(ingredientsTitleLabel)
        stackView.addArrangedSubview(ingredientsLabel)
        view.addSubview(stackView)

        let topSpace = view.safeAreaLayoutGuide.topAnchor
        let leadingSpace = view.layoutMarginsGuide.leadingAnchor
        let trailingSpace = view.layoutMarginsGuide.trailingAnchor
        NSLayoutConstraint.activate([
            // Begin 24 points below the top of the safe area.
            stackView.topAnchor.constraint(equalTo: topSpace, constant: 24),
            stackView.leadingAnchor.constraint(equalTo: leadingSpace),
            stackView.trailingAnchor.constraint(equalTo: trailingSpace)
        ])
    }
}
