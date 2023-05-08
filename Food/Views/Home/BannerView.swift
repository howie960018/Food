//
//  BannerView.swift
//  Food
//
//  Created by 曾浩儀 on 2023/3/17.
//

import SwiftUI

struct BannerView: View {
    var body: some View {
        HStack{
            Text("🥗")
                .font(.system(size: 80))
            
            VStack(alignment: .leading, spacing: 10){
                Text("you have 4 recipes to try")
                    .font(.body)
                    .foregroundColor(.black)
                Button("sea recipes"){}
            }
        }
        .frame(maxWidth: .infinity)
        .background(Color("lightGreen"), in: RoundedRectangle(cornerRadius: 20))
       // .preferredColorScheme(.dark)
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView()
    }
}
