//
//  SearchBarView.swift
//  LinkedInUIClone
//
//  Created by Subham Patel on 20/04/25.
//

import SwiftUI

struct SearchBarView: View {
    var body: some View {
        HStack(alignment: .center){
            Image("demo")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 50, height: 50)
            
            //Search bar
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.blue.opacity(0.2))
                .frame(width: 270, height: 30)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            
                        Text("Search")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.gray)
                        
                        Spacer()
                    }.padding()
                )
            //Message Box
            Image(systemName: "ellipses.bubble.fill")
                .resizable()
                .foregroundColor(.gray)
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
        }.padding(.top)
    }
}

#Preview {
    SearchBarView()
}
