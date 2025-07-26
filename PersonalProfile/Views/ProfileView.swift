//
//  ProfileView.swift
//  PersonalProfile
//
//  Created by CHIEN on 19/7/25.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var user = User(
        name : "NGUYỄN VĂN TEKY",
        avatar : "Saka",
        email: "Teky@gmail.com",
        profileCompletion: 0.75,
        interests: ["Lập trình", "Đọc sách","Âm nhạc"],
        achiements: [
            Achiements(icon: "folder.fill",title: "Người mới",description: "Đã tham gia được một tháng"),
            Achiements(icon: "eraser.fill",title: "Siêu năng suất",description: "hoàn thành 5 dự án liên tiếp"),
        ],
        
        
    )
    var body: some View {
        ScrollView{
            VStack{
                ProfileHeaderView(name: user.name, avatar: user.avatar)
                
                VStack(alignment: .leading){
                    Text("HOÀN THÀNH HỒ SƠ")
                        .font(.headline)
                    ProgressBarView(value: $user.profileCompletion)
                    
                    // XONG CHAT LÊN MỤC CHAT NHA - TỚI 19H20'
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    ProfileView()
}

