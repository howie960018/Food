//
//  OnboardingView.swift
//  Food
//
//  Created by 曾浩儀 on 2023/3/10.
//

import SwiftUI

struct OnboardingView: View {
    
    @Binding var showOnboarding: Bool
    var steps = AppOnBoarding.data
    @State private var selection = 0
    

    var body: some View {
        VStack{
            TabView(selection: $selection){
                ForEach(0..<steps.count,id: \.self) {
                    idx in
                    VStack{
                        Spacer()
                        Text(steps[idx].title)
                            .font(.largeTitle)
                        Rectangle()
                            .fill(Color.secondary.opacity(0.2))
                            .frame(height: 1)
                        
                        VStack(alignment: .leading){
                            LottieView(name: steps[idx].animationName)
                                .scaledToFit()
                            Text(steps[idx].detail)
                        }.padding()
                        
                        Spacer()
                    }
                    .tag(idx)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            
            HStack{
                Spacer()
                Button{
                    withAnimation{
                        if selection < steps.count - 1 {
                            selection += 1
                        }else {
                            showOnboarding.toggle()
                        }
                    }
                } label: {
                    if selection == steps.count - 1{
                        Image(systemName: "checkmark.circle")
                            .font(.largeTitle)
                    }else {
                        Image(systemName: "chevron.right.circle")
                            .font(.largeTitle)
                    }
                }
            }
            .padding()
            .foregroundColor(.primary)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(showOnboarding: .constant(true))
    }
}
