//
//  HomeScreen.swift
//  LinkedInUIClone
//
//  Created by Subham Patel on 21/04/25.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(spacing: 20){
            ProfileAndPostView()
            PostView()
        }
    }
}

#Preview {
    HomeScreen()
}
