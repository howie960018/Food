//
//  AppOnboarding.swift
//  Food
//
//  Created by 曾浩儀 on 2023/3/10.
//

import Foundation

struct AppOnBoarding : Identifiable {
    let id = UUID().uuidString
    var title: String
    var detail: String
    var animationName: String
    
}

extension AppOnBoarding {
    static var data : [AppOnBoarding] {
        [
            AppOnBoarding(title: "Welcome to food recipes !" ,detail: "Search, cook and enjoy freshly made food at your home.", animationName: "onboarding1"),
            AppOnBoarding(title: "Pick fresh ingredients !" ,detail: "Find list of  ingredients with Food Recipes App.", animationName: "onboarding2"),
            AppOnBoarding(title: "Cook to perfection!" , detail: "find list of steps to cook your food to the perfection", animationName: "onboarding3"),
            AppOnBoarding(title: "Enjoy your homemade meal! " , detail: "Enjoy food with your family.", animationName: "onboarding4"),
        ]
    
    }
}
