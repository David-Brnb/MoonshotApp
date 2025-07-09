//
//  ContentView.swift
//  MoonshotApp
//
//  Created by Leoni Bernabe on 30/06/25.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    let columns = [
        GridItem(.adaptive(minimum: 180))
    ]
    
    @State var mode = "List"
    @State var width1 = 400.0
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(missions) { mission in
                        NavigationLink {
                            MissionView(mission: mission, astronauts: astronauts)
                        } label: {
                            VStack {
                                Image(mission.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .padding()
                                
                                VStack {
                                    Text(mission.displayName)
                                        .font(.headline)
                                        .foregroundStyle(.white)
                                    
                                    Text(mission.formattedLaunchDate)
                                        .font(.caption)
                                        .foregroundStyle(.gray)
                                    
                                }
                                .padding(.vertical)
                                .frame(maxWidth: .infinity)
                                .background(.lightBackground)
                            }
                            .clipShape(.rect(cornerRadius: 10))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.lightBackground)
                            )
                            
                        }
                        .padding(.bottom)
                        
                    }
                }
                .padding([.horizontal, .bottom])
                .frame(maxWidth: width1) // aquí controlas el ancho del grid
                .frame(maxWidth: .infinity)
            }
            .navigationTitle(
                "Moonshot"
            )
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                Button(mode) {
                    if(mode == "List"){
                        mode = "Grid"
                        width1 = 350
                    } else {
                        mode = "List"
                        width1 = 400
                    }
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
