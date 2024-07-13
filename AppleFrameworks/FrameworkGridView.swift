//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Myo Thu Kha on 7/12/24.
//

import SwiftUI

struct FrameworkGridView: View {
    private var frameworks = MockData.frameworks
    private let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(frameworks){
                        framework in
                        FrameworkTileView(framework: framework)
                    }
                }
            }.navigationTitle("Apple Frameworks")
        }
    }
}

#Preview {
    FrameworkGridView()
}


