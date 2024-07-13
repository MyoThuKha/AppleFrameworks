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
                        .frame(width: 25)
                        .foregroundStyle(Color(.label))
                }
                .padding()
            }
            
            
            Spacer()
            FrameworkTileView(framework: framework)
            Text(framework.description)
                .padding()
            
            Spacer()
            
            Button {
                print("Hello world")
                
            }
            label: {
                Text("Learn More")
            }
            .padding()
            .frame(width: 300, height: 60)
            .foregroundStyle(Color.white)
            .background(Color.red.gradient)
            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
        }
    }
}

#Preview {
    FrameworkDetailView()
}
