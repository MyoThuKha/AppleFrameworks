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
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(frameworks){
                        framework in
                        FrameworkTileView(framework: framework)
                            .onTapGesture {
                                viewModel.currentFramework = framework
                            }
                    }
                }
            }.navigationTitle("Apple Frameworks")
                .sheet(isPresented: $viewModel.isShowDetail, content: {
                    FrameworkDetailView(
                        isShowDetail: $viewModel.isShowDetail,
                        framework: viewModel.currentFramework ?? MockData.sampleFramework
                    )
                })
        }
    }
}

#Preview {
    FrameworkGridView()
}


