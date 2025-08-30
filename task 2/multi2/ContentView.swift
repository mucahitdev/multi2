//
//  ContentView.swift
//  multi2
//
//  Created by MÜCAHİT KÖKDEMİR on 20.08.2025.
//

import SwiftUI

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 20) {
            
            // MARK: Header with Gradient Background
            ZStack {
                LinearGradient(colors: [.blue, .purple],
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                    .frame(height: 200)
                    .ignoresSafeArea()
                
                VStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                        .shadow(radius: 10)
                    
                    Text("Mücahit Dev")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("iOS Developer • Swift Enthusiast")
                        .font(.subheadline)
                        .foregroundColor(.white.opacity(0.9))
                }
            }
            
            // MARK: Info Cards
            HStack(spacing: 16) {
                InfoCard(title: "Followers", value: "1.2K")
                InfoCard(title: "Following", value: "340")
                InfoCard(title: "Likes", value: "5.4K")
            }
            .padding(.horizontal)
            
            // MARK: About Me
            VStack(alignment: .leading, spacing: 8) {
                Text("About Me")
                    .font(.headline)
                    .bold()
                
                ScrollView {
                    Text("""
                    Passionate iOS developer with a love for Swift and SwiftUI. 
                    Always eager to learn new technologies and create amazing user experiences. 
                    In my free time, I enjoy reading, exploring new apps, and contributing to open source projects.
                    """)
                    .font(.body)
                    .foregroundColor(.secondary)
                }
                .frame(height: 120)
            }
            .padding(.horizontal)
            
            // MARK: Buttons
            HStack(spacing: 16) {
                Button(action: {}) {
                    Text("Message")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                
                Button(action: {}) {
                    Text("Follow")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
            }
            .padding(.horizontal)
            
            Spacer()
        }
    }
}

// MARK: Reusable Info Card
struct InfoCard: View {
    let title: String
    let value: String
    
    var body: some View {
        VStack {
            Text(value)
                .font(.headline)
                .bold()
            Text(title)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
    }
}

#Preview {
    ProfileView()
}
