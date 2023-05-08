//
//  RecipeDetailView.swift
//  Food
//
//  Created by 曾浩儀 on 2023/4/27.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe: Recipe
    @Environment(\.dismiss) var dismiss
    
    @State private var stepShowing = false
    @ViewBuilder
    private var backButton: some View {
        HStack{
            Button{dismiss()} label:{
                Image(systemName: "chevron.backward")
                    .font(.title3)
                    .foregroundColor(.primary)
                    .padding()
                    .background(.thinMaterial, in: Circle())
            }
            Spacer()
        }
        .padding(.top, 30)
        .padding(.leading)
    }
    var body: some View {
        VStack{
            ZStack{
                BackgroundImage(image:Image(recipe.imageName))
                VStack{
                    backButton
                    Spacer()
                    RecipeByView()
                }
            }
            .frame(maxWidth: UIScreen.main.bounds.width,
            maxHeight: 300)
            .clipped()
            
            List{
                VStack(alignment: .leading,spacing: 10){
                    DescHeaderView(stepsShowing: $stepShowing, recipe: recipe)
                    
                    if stepShowing {
                        StepsView(recipe: recipe)
                    }else {
                        IngredientsView(recipe: recipe)
                    }
                }
                .padding(.top)
                
            }.listStyle(.plain)
        }
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: Recipe.sampleData[0])
    }
}
