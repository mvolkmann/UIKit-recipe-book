import UIKit

class RecipeListScreen: UIViewController {
    @IBOutlet private var tableView: UITableView!

    private let recipes = RecipeData.recipes

    // This is called after the view controller loads its view hierarchy.
    // It configures the table view.
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
    // This is called when the table view
    // needs to know how many rows to display.
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        recipes.count
    }

    // This is called when a row is about to appear.
    // It creates and configures a cell for that row.
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "RecipeCell",
            for: indexPath
        )

        var content = cell.defaultContentConfiguration()
        let recipe = recipes[indexPath.row]
        content.text = recipe.name
        content.secondaryText = recipe.description
        content.secondaryTextProperties.numberOfLines = 2

        cell.contentConfiguration = content

        // This adds a right chevron to the end of the cell that
        // indicates to users that clicking it will display more data.
        cell.accessoryType = .disclosureIndicator

        return cell
    }
}

extension RecipeListScreen: UITableViewDelegate {
    // This is called when the user taps a row.
    // It opens the selected recipe's detail screen.
    func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    ) {
        tableView.deselectRow(at: indexPath, animated: true)

        guard let detailVC = storyboard?.instantiateViewController(
            withIdentifier: "RecipeDetailScreen"
        ) as? RecipeDetailScreen else { return }

        detailVC.configure(with: recipes[indexPath.row])
        navigationController?.pushViewController(detailVC, animated: true)
    }
}
