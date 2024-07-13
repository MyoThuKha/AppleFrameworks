//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Myo Thu Kha on 7/14/24.
//

import Foundation


final class FrameworkGridViewModel: ObservableObject {
    @Published var isShowDetail = false
    
    
    var currentFramework: Framework?{
        didSet{
            isShowDetail = true
        }
    }
    
}
