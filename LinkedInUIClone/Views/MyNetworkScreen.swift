//
//  MyNetworkScreen.swift
//  LinkedInUIClone
//
//  Created by Subham Patel on 20/04/25.
//

import SwiftUI
var networkData: [NetworkModel] = [
    .init(id: 1, name: "Marry", position: "SDE at Paytm", mutual: 34, image: "00"),
    .init(id: 2, name: "Peter", position: "SDE at Ginger", mutual: 34, image: "01"),
    .init(id: 3, name: "Jenny", position: "Open to work", mutual: 34, image: "02"),
    .init(id: 4, name: "Sara", position: "GET at HCL", mutual: 34, image: "03"),
    .init(id: 5, name: "Kia", position: "Student", mutual: 34, image: "04"),
    .init(id: 6, name: "Rachel", position: "Intern at iNeuron", mutual: 34, image: "05"),
    .init(id: 7, name: "John", position: "HR at Intel", mutual: 34, image: "01"),
    .init(id: 8, name: "Tiya", position: "SDE at Paytm", mutual: 34, image: "02")
]
struct MyNetworkScreen: View {
    var body: some View {
        VStack{
            SearchBarView()
            HStack{
                Text("Manage my network")
                    .font(.body)
                    .foregroundColor(.blue)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }.padding(.horizontal)
            
            Rectangle()
                .fill(Color.gray.opacity(0.4))
                .frame(maxHeight: 10)
                .ignoresSafeArea(.all)
            
            ScrollView(.vertical, showsIndicators: false){
                HStack{
                    Text("Invitations")
                        .font(.body)
                        .foregroundColor(.blue)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }.padding(.horizontal)
                Divider()
                
                ForEach(networkData, id: \.id){ data in
                    InvitationView(Data: data)
                    Divider()
                }
            }
            
        }
    }
}

#Preview {
    MyNetworkScreen()
}
