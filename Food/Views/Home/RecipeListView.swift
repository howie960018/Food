//
//  RecipeListView.swift
//  Food
//
//  Created by 曾浩儀 on 2023/3/10.
//

import SwiftUI

struct RecipeListView: View {
    
    @State private var searchText = ""
    @State private var allRecipes = [Recipe]()
    
    var recipes: [Recipe] {
        if searchText.isEmpty{
            return allRecipes
        }
        
        return allRecipes.filter({
            $0.name.lowercased().contains(searchText.lowercased())
        })
    }
    var body: some View {
        NavigationView{
            VStack{
                SearchView(searchText: $searchText)
                ScrollView(showsIndicators: false) {
                    LazyVStack(alignment: .leading,spacing: 10){
                        //BannerView()
                        ForEach(recipes, id: \.self) { recipe in
                            NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
                                RecipeTileView(recipe: recipe)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
            }
            .animation(.easeOut, value: searchText)
            .padding(.horizontal)
            .navigationTitle("DevTechie Recipes")
        }
            .onAppear {
                allRecipes = JSONFileManager.load("recipes.json")
            }
        
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
