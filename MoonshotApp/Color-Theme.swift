//
//  Color-Theme.swift
//  MoonshotApp
//
//  Created by Leoni Bernabe on 30/06/25.
//

import SwiftUI

extension ShapeStyle where Self == Color {
    static var darkBackground: Self {
        Color(red: 0.1, green: 0.1, blue: 0.2)
    }
    
    static var lightBackground: Self {
        Color(red: 0.2, green: 0.2, blue: 0.3)
    }
}
