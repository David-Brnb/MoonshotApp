//
//  AstronautIcon.swift
//  MoonshotApp
//
//  Created by Leoni Bernabe on 09/07/25.
//

import SwiftUI

struct CrewMember {
    let role: String
    let astronaut: Astronaut
}

struct AstronautIcon: View {
    let member: CrewMember
    
    var body: some View {
        NavigationLink {
            AstronautView(astronaut: member.astronaut)
            
        } label: {
            HStack {
                Image(member.astronaut.id)
                    .resizable()
                    .frame(width: 104, height: 72)
                    .clipShape(.capsule)
                    .overlay(
                        Capsule()
                            .strokeBorder(Color.white, lineWidth: 1)
                    )
                
                VStack(alignment: .leading) {
                    Text(member.astronaut.name)
                        .foregroundStyle(.white)
                        .font(.headline)
                    
                    Text(member.role)
                        .foregroundStyle(.white.opacity(0.5))
                }
                    
            }
            .padding(.horizontal)
        }
    }
}

//#Preview {
//    AstronautIcon()
//}
