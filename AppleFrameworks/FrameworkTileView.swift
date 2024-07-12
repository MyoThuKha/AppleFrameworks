//
//  FrameworkTileView.swift
//  AppleFrameworks
//
//  Created by Myo Thu Kha on 7/13/24.
//

import SwiftUI

struct FrameworkTileView: View{
    
    var framework: Framework;
    
    var body: some View{
        
        VStack {
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.bold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
    
}

#Preview {
    FrameworkTileView(framework: MockData.sampleFramework)
}
