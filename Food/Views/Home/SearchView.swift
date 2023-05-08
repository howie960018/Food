//
//  SearchView.swift
//  Food
//
//  Created by 曾浩儀 on 2023/4/27.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            TextField("Search Recipes",text: $searchText)
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 20).stroke(Color.gray,lineWidth: 2))
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchText: .constant(""))
    }
}
