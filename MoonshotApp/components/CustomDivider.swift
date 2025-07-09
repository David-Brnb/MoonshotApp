//
//  CustomDivider.swift
//  MoonshotApp
//
//  Created by Leoni Bernabe on 09/07/25.
//

import SwiftUI

struct CustomDivider: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundStyle(.lightBackground)
            .padding(.vertical)
    }
}

#Preview {
    CustomDivider()
}
