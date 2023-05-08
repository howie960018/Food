//
//  Ingredient.swift
//  Food
//
//  Created by 曾浩儀 on 2023/3/10.
//

import Foundation


struct Ingredient :Hashable, Codable {
    
    var quantity: String
    var name: String
    var emoji: String
}
