import Foundation

// enum is used here as a namespace
// so the recipes array doesn't need to be global.
enum RecipeData {
    static let recipes = [
        Recipe(
            name: "Classic Spaghetti Carbonara",
            description: "A rich pasta dish with eggs, cheese, pancetta, and black pepper.",
            ingredients: [
                .init(name: "Spaghetti", amount: "12", unit: "oz"),
                .init(name: "Eggs", amount: "3", unit: "large"),
                .init(name: "Parmesan cheese", amount: "1", unit: "cup"),
                .init(name: "Pancetta", amount: "4", unit: "oz"),
                .init(name: "Black pepper", amount: "1", unit: "tsp")
            ]
        ),
        Recipe(
            name: "Chicken Tikka Masala",
            description: "Tender chicken in a creamy, spiced tomato sauce.",
            ingredients: [
                .init(name: "Chicken", amount: "1.5", unit: "lb"),
                .init(name: "Yogurt", amount: "1", unit: "cup"),
                .init(name: "Tomato sauce", amount: "2", unit: "cups"),
                .init(name: "Garam masala", amount: "2", unit: "tbsp"),
                .init(name: "Cream", amount: "1/2", unit: "cup")
            ]
        ),
        Recipe(
            name: "Beef Tacos",
            description: "Seasoned beef served in tortillas with fresh toppings.",
            ingredients: [
                .init(name: "Ground beef", amount: "1", unit: "lb"),
                .init(name: "Tortillas", amount: "8", unit: "small"),
                .init(name: "Lettuce", amount: "2", unit: "cups"),
                .init(name: "Cheddar cheese", amount: "1", unit: "cup"),
                .init(name: "Salsa", amount: "1/2", unit: "cup")
            ]
        ),
        Recipe(
            name: "Margherita Pizza",
            description: "A simple pizza topped with tomato, mozzarella, and basil.",
            ingredients: [
                .init(name: "Pizza dough", amount: "1", unit: "lb"),
                .init(name: "Tomato sauce", amount: "1/2", unit: "cup"),
                .init(name: "Mozzarella", amount: "8", unit: "oz"),
                .init(name: "Fresh basil", amount: "1/4", unit: "cup"),
                .init(name: "Olive oil", amount: "1", unit: "tbsp")
            ]
        ),
        Recipe(
            name: "Chocolate Chip Cookies",
            description: "Soft, chewy cookies loaded with chocolate chips.",
            ingredients: [
                .init(name: "Flour", amount: "2 1/4", unit: "cups"),
                .init(name: "Butter", amount: "1", unit: "cup"),
                .init(name: "Brown sugar", amount: "3/4", unit: "cup"),
                .init(name: "Eggs", amount: "2", unit: "large"),
                .init(name: "Chocolate chips", amount: "2", unit: "cups")
            ]
        )
    ]
}
