//
//  PostView.swift
//  LinkedInUIClone
//
//  Created by Subham Patel on 21/04/25.
//

import SwiftUI
var postData: [PostData] = [
    .init(id: 0, image: "0", title: "iNeuron", followers: 4066, profileImage: "00"),
    .init(id: 1, image: "1", title: "Learnyst", followers: 3028, profileImage: "01"),
    .init(id: 2, image: "2", title: "Synopsys inc", followers: 8901, profileImage: "02"),
    .init(id: 3, image: "3", title: "Skill-Lync", followers: 6522, profileImage: "03"),
    .init(id: 4, image: "4", title: "Intel", followers: 8900, profileImage: "04"),
    .init(id: 5, image: "5", title: "HP", followers: 4112, profileImage: "05"),
    .init(id: 6, image: "6", title: "JungleWorks", followers: 9001, profileImage: "00"),
    .init(id: 7, image: "7", title: "Arrikto", followers: 4012, profileImage: "01"),
    .init(id: 8, image: "8", title: "Tata Power", followers: 309, profileImage: "02"),
    .init(id: 9, image: "9", title: "Apple", followers: 4501, profileImage: "03"),
]
struct PostView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center){
                ForEach(postData, id: \.id){ data in
                    PostCardView(data: data)
                    HStack(alignment: .center, spacing: 35){
                        ForEach(socialView, id: \.ids){ data in
                            VStack{
                                Image(systemName: data.image)
                                Text("\(data.title)")
                            }
                            .foregroundColor(.black.opacity(0.8))
                            .font(.subheadline)
                        }.padding(.horizontal)
                    }
                }
            }
        }
    }
}

#Preview {
    PostView()
}
