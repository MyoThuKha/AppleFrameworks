//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Myo Thu Kha on 7/13/24.
//

import SwiftUI

struct AFButton: View {
    
    let label: String
    let onClick: () -> Void
    
    var body: some View {
        Button (action: onClick)
        {
            Text(label)
        }
        .padding()
        .frame(width: 300, height: 60)
        .foregroundStyle(Color.white)
        .background(Color.red.gradient)
        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
    }
}

#Preview {
    AFButton(label: "Hello world", onClick: {print("Testing button")})
}
