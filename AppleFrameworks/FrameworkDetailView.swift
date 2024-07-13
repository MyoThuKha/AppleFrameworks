//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Myo Thu Kha on 7/13/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework = MockData.sampleFramework
    var body: some View {
        VStack{
            
            HStack{
                Spacer()
                Button{
                    print("Close detail")
                } label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20)
                        .foregroundStyle(Color(.label))
                }
                .padding()
            }
            
            
            Spacer()
            FrameworkTileView(framework: framework)
            Text(framework.description)
                .padding()
            
            Spacer()
            
            AFButton(label: "Learn More", onClick: {
                
            })
            
        }
    }
}

#Preview {
    FrameworkDetailView()
}
