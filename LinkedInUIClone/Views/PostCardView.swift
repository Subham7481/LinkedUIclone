//
//  PostCardView.swift
//  LinkedInUIClone
//
//  Created by Subham Patel on 20/04/25.
//

import SwiftUI

struct SocialView{
    var ids: Int
    var image: String
    var title: String
}
var socialView: [SocialView] = [
    .init(ids: 0, image: "hand.thumbsup", title: "Like"),
    .init(ids: 1, image: "text.bubble", title: "Comment"),
    .init(ids: 2, image: "arrow.turn.up.right", title: "Share"),
    .init(ids: 3, image: "paperplane.fill", title: "send")
]
let samplePostData = PostData(id: 1, image: "02", title: "Subham Patel", followers: 5, profileImage: "1")
struct PostCardView: View {
    var data : PostData
    var body: some View {
        VStack(alignment: .leading){
            Rectangle()
                .fill(Color.gray.opacity(0.4))
                .frame(width: .infinity, height: 10)
                .ignoresSafeArea(.all)
            
            HStack(alignment: .center){
                Image(data.profileImage)
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70, alignment: .leading)
                
                VStack(alignment: .leading){
                    Text(data.title)
                        .font(.body)
                    
                    Text("\(data.followers) followers")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    Text("8m")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.horizontal)
            Text("Looking for a new course in iOS with SwiftUI, you are already at great place.")
                .padding(.horizontal)
            Image(data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: .infinity, alignment: .center)
            Divider()
        }
    }
}

#Preview {
    PostCardView(data: samplePostData)
}
