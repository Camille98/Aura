//
//  MotherView.swift
//  AuraApp
//
//  Created by Camille Etienne on 12/17/19.
//  Copyright © 2019 Camille Etienne. All rights reserved.
//

import SwiftUI

struct MotherView: View {
    
    //@State var page = "page1"
    
    @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        
        VStack{
            
            if viewRouter.currentPage == "page0" {
                LoginContentView(viewRouter: viewRouter)
            }
            
            
            if viewRouter.currentPage == "page1" {
                AgeQs(viewRouter: viewRouter)
            }
            
            if viewRouter.currentPage == "page2"{
                GenreQs(viewRouter: viewRouter)
                
            }
    
            if viewRouter.currentPage == "page3"{
                SignUpContentView(viewRouter: viewRouter)
            }
            if viewRouter.currentPage == "page4"{
                SessionStatus(viewRouter: viewRouter)
            }
            if viewRouter.currentPage == "streamingPage"{
                MainPage(viewRouter: viewRouter)
            }
            }
        }
    }




#if DEBUG
struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView(viewRouter: ViewRouter())
    }
}
#endif

