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
            VStack(spacing: 30){
                ProfileHeaderView(name: user.name, avatar: user.avatar)
                
                VStack(alignment: .leading){
                    Text("HOÀN THÀNH HỒ SƠ")
                        .font(.headline)
                    ProgressBarView(value: $user.profileCompletion)

                }
                .padding(.horizontal)
                
                
                // Information Section
                VStack(alignment: .leading, spacing: 10) {
                    Text("Thông tin cá nhân")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.bottom, 5)
                    
                    HStack {
                        Text("Họ tên:")
                            .foregroundColor(.secondary)
                        Spacer()
                        Text(user.name)
                            .fontWeight(.medium)
                    }
                    Divider()
                    
                    HStack {
                        Text("Email:")
                            .foregroundColor(.secondary)
                        Spacer()
                        Text(user.email)
                            .fontWeight(.medium)
                    }
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Sở thích:")
                            .foregroundColor(.secondary)
                        
                        HStack {
                            ForEach(user.interests, id: \.self) { interest in
                                Text(interest)
                                    .font(.caption)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 5)
                                    .background(Color.blue.opacity(0.1))
                                    .cornerRadius(10)
                            }
                        }
                    }
                }
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(15)
                .padding(.horizontal)
                
                
            }
        }
    }
}

#Preview {
    ProfileView()
}

