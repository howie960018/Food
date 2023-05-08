//
//  ContentView.swift
//  Food
//
//  Created by 曾浩儀 on 2023/3/10.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showOnboarding = true
    
    var body: some View {
        
        if showOnboarding {
             OnboardingView(showOnboarding: $showOnboarding)
        } else {
            RecipeListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
