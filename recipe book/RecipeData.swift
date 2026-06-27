import Foundation

enum RecipeData {
    static let recipes = [
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
}
