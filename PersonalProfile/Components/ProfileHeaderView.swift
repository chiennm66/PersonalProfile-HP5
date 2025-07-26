//
//  ProfileHeaderView.swift
//  PersonalProfile
//
//  Created by CHIEN on 19/7/25.
//

import SwiftUI

struct ProfileHeaderView: View {
    // command + N --> chọn swiftUI
    
    var name :String
    var avatar :String
    
    var body: some View {
        VStack{
            Image(avatar)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(.green, lineWidth: 5)
                )
                .shadow(radius: 5)
            
            Text(name)
                .font(.title)
                .fontWeight(.bold)
                .padding(.top,10)
        }
        .padding()
    }
}

#Preview {
    ProfileHeaderView(name: "NGUYÊN VĂN TEKY" , avatar: "Saka")
}
