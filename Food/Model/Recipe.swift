//
//  Recipe.swift
//  Food
//
//  Created by 曾浩儀 on 2023/3/10.
//

import Foundation

struct Recipe: Hashable,Codable{
    
    var name: String
    var ingredients: [Ingredient]
    var cookTime: String
    var servings: String
    var steps: [String]
    var imageName: String
}

extension Recipe {
    static var sampleData: [Recipe] {
        [
            Recipe(
                name: "Pad Thai",
                ingredients: [
                    Ingredient(quantity: "1 (14oz)", name: "Flat, wide rice noodles", emoji: "🍜"),
                    Ingredient(quantity: "8 tbsp", name: "Fish sauce", emoji: "🐟"),
                    Ingredient(quantity: "3/4 cup", name: "Rice vinegar", emoji: "🍜"),
                    Ingredient(quantity: "1 to 2 tsp", name: "Tarmarind paste", emoji: "🫘"),
                    Ingredient(quantity: "1 cup", name: "Granulated sugar", emoji: "🍯")
                ],
                cookTime: "10 mins",
                servings: "4 servings",
                steps: [
                    "1.Soak the rice.",
                    "2.Add paprika",
                    "3.Bring a pot of water to boil."
                ],
                imageName: "padThai"
            ),
            
            
            
        ]
    }
}
