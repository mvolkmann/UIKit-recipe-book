import UIKit

struct Recipe {
    let name: String
    let description: String
    let ingredients: [String]
}

class RecipeListScreen: UIViewController {
    @IBOutlet private var tableView: UITableView!

    private let recipes = [
        Recipe(
            name: "Classic Spaghetti Carbonara",
            description: "A rich pasta dish with eggs, cheese, pancetta, and black pepper.",
            ingredients: [
                "Spaghetti",
                "Eggs",
                "Parmesan cheese",
                "Pancetta",
                "Black pepper"
            ]
        ),
        Recipe(
            name: "Chicken Tikka Masala",
            description: "Tender chicken in a creamy, spiced tomato sauce.",
            ingredients: [
                "Chicken",
                "Yogurt",
                "Tomato sauce",
                "Garam masala",
                "Cream"
            ]
        ),
        Recipe(
            name: "Beef Tacos",
            description: "Seasoned beef served in tortillas with fresh toppings.",
            ingredients: [
                "Ground beef",
                "Tortillas",
                "Lettuce",
                "Cheddar cheese",
                "Salsa"
            ]
        ),
        Recipe(
            name: "Margherita Pizza",
            description: "A simple pizza topped with tomato, mozzarella, and basil.",
            ingredients: [
                "Pizza dough",
                "Tomato sauce",
                "Mozzarella",
                "Fresh basil",
                "Olive oil"
            ]
        ),
        Recipe(
            name: "Chocolate Chip Cookies",
            description: "Soft, chewy cookies loaded with chocolate chips.",
            ingredients: [
                "Flour",
                "Butter",
                "Brown sugar",
                "Eggs",
                "Chocolate chips"
            ]
        )
    ]

    // Called after the view controller loads its view hierarchy; sets up the
    // table view.
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        // Register the default cell class so dequeueReusableCell
        // can create cells for this identifier.
        tableView.register(
            UITableViewCell.self,
            forCellReuseIdentifier: "RecipeCell"
        )
    }
}

extension RecipeListScreen: UITableViewDataSource {
    // This is called by the table view when it
    // needs to know how many rows to display.
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        recipes.count
    }

    // This is called by the table view when a row is about to appear.
    // It creates and configures a cell for that row.
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "RecipeCell",
            for: indexPath
        )
        let recipe = recipes[indexPath.row]

        var content = cell.defaultContentConfiguration()
        content.text = recipe.name
        content.secondaryText = recipe.description
        content.secondaryTextProperties.numberOfLines = 2
        cell.contentConfiguration = content
        cell.accessoryType = .disclosureIndicator

        return cell
    }
}

extension RecipeListScreen: UITableViewDelegate {
    // This is called by the table view after the user taps a row.
    // It opens the selected recipe's detail screen.
    func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    ) {
        tableView.deselectRow(at: indexPath, animated: true)

        let detailViewController =
            RecipeDetailViewController(recipe: recipes[indexPath.row])
        navigationController?.pushViewController(
            detailViewController,
            animated: true
        )
    }
}
