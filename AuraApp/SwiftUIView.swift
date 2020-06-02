//
//  SwiftUIView.swift
//  AuraApp
//
//  Created by Camille Etienne on 12/17/19.
//  Copyright © 2019 Camille Etienne. All rights reserved.
//

import SwiftUI
import Firebase
import Combine


struct SwiftUIView: View {
    
    @EnvironmentObject var session: SessionStore
    
    func getUser() {
           session.listen()
       }
    
    var body: some View {
        Text("Welcome Back")
//        Group {
//          if (session.session != nil) {
//            Text("Welcome Back!")
//            Button(action: {print("Sign Out")}){
//                session.signOut()
//            }
//          } else {
//            LoginContentView()
//          }
//        }.onAppear(perform: getUser)
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
