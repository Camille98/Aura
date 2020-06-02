//
//  ViewRouter.swift
//  Aura_App Survey Qs
//
//  Created by Kendall Daniels on 12/7/19.
//  Copyright © 2019 Kendall Daniels. All rights reserved.
//

import Foundation
import Combine
import SwiftUI


class ViewRouter: ObservableObject{
    
    let objectWillChange = PassthroughSubject<ViewRouter,Never>()
    
    var currentPage: String = "page0" {
        
        didSet {
            objectWillChange.send(self)
        }
    }
    
}
