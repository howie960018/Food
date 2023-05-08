//
//  LottieView.swift
//  Food
//
//  Created by 曾浩儀 on 2023/3/10.
//

import Lottie
import SwiftUI

struct LottieView: UIViewRepresentable {
    
    
    typealias UIViewType = UIView
    var name = ""
    var loopMode : LottieLoopMode = .loop
    
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        let animationView = LottieAnimationView()
        animationView.animation = LottieAnimation.named(name)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode
        animationView.play()
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo:view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        
        return view
        
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
    
}
