//
//  ColorPicker.swift
//  LinkedInUIClone
//
//  Created by Subham Patel on 19/04/25.
//

import SwiftUI

struct ColorPicker: View {
    let colors: [Color] = [.red, .green, .yellow, .blue, .orange, .purple]
    @State private var selectedColor: Color = .red
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 15)
                .fill(selectedColor)
                .frame(width: 300, height: 200)
                .overlay(Text("Selected Color \(selectedColor)"))
            
            HStack{
                ForEach(colors, id: \.self) { color in
                    Button(action: {
                        selectedColor = color
                    }, label: {
                        Circle()
                            .fill(color)
                    })
                }
            }.padding()
        }
    }
}

#Preview {
    ColorPicker()
}













//    // Main rectangle that changes color on selection
//    RoundedRectangle(cornerRadius: 15)
//        .fill(selectedColor)
//        .frame(height: 150)
//        .overlay(Text("Selected Color")
//            .foregroundColor(.white)
//            .bold()
//        )
//        .padding()
//    
//    // List of color buttons
//    HStack(spacing: 15) {
//        ForEach(colors, id: \.self) { color in
//            Button(action: {
//                selectedColor = color
//            }) {
//                Circle()
//                    .fill(color)
//                    .frame(width: 50, height: 50)
//                    .overlay(
//                        Circle()
//                            .stroke(selectedColor == color ? Color.white : Color.clear, lineWidth: 3)
//                    )
//            }
//        }
//    }
//}
//.padding()
