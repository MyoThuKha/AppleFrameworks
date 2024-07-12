//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Myo Thu Kha on 7/12/24.
//

import SwiftUI

struct FrameworkGridView: View {
    private var framework = MockData.sampleFramework
    private let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    
    var body: some View {
        LazyVGrid(columns: columns){
            FrameworkTileView(framework: framework)
            FrameworkTileView(framework: framework)
            FrameworkTileView(framework: framework)
            
        }
    }
}

#Preview {
    FrameworkGridView()
}


