//
//  ProfileAndPostView.swift
//  LinkedInUIClone
//
//  Created by Subham Patel on 21/04/25.
//

import SwiftUI

struct ProfileAndPostView: View {
    var body: some View {
        VStack(alignment: .leading){
            SearchBarView()
            Divider()
            HStack{
                Image(systemName: "square.and.pencil")
                Text("Share a post")
            }.padding(.horizontal)
            Divider()
            
            HStack{
                Image(systemName: "photo")
                    .foregroundColor(.blue)
                Text("photo")
                Spacer()
                Image(systemName: "video.fill")
                    .foregroundColor(.green)
                Text("video")
                Spacer()
                Image(systemName: "calendar")
                    .foregroundColor(.orange)
                Text("event")
            }.padding(.horizontal)
        }
    }
}

#Preview {
    ProfileAndPostView()
}
