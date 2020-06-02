//
//  SignUpContentView.swift
//  AuraApp
//
//  Created by Camille Etienne on 12/8/19.
//  Copyright © 2019 Camille Etienne. All rights reserved.
//

import SwiftUI

struct SignUpContentView: View {
    
        @ObservedObject var viewRouter: ViewRouter
    
    
        @State var username: String = ""
        @State var password: String = ""
        @State private var image: Image?
        @State private var showingImagePicker = false
        @State private var inputImage: UIImage?
        


    
        
    
        
        var body: some View {
            
            ZStack{
                LinearGradient(gradient: .init(colors: [Color(UIColor(red:0.97, green:0.61, blue:0.62, alpha:1.0)), Color(UIColor(red:0.79, green:0.85, blue:1.00, alpha:1.0)),]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            
            VStack {
                WelcomeText()
                
                TextField("Username", text: $username)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(5.0)
                    .padding(.all)

                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
         
                
                .padding()
                
                
        
                    Button(action: {self.viewRouter.currentPage = "page1"}) {
                    SignUpButtonContent()
                        
                    }
                
                

            }
    }
    }

        
                


    #if DEBUG
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
           SignUpContentView(viewRouter: ViewRouter())
        }
        }

        
        
    #endif
        
        struct WelcomeText : View {
            var body: some View {
                return Text("Sign Up For Aura!")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.bottom, 20)
            }
        }


        
//        struct UserImage : View {
//            var body: some View {
//
//                return Image("userImage")
//                .resizable()
//                    .aspectRatio(UIImage(named: "userImage")! .size, contentMode: .fill)
//                    .frame(width: 150, height: 150)
//                .clipped()
//                .cornerRadius(150)
//                .padding(.bottom, 75)
//            }
        
        
        
        struct SignUpButtonContent: View {
                 var body: some View {
                    
                 return Text("SIGN UP")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 220, height: 60)
                                .background(Color.blue)
                                .cornerRadius(15.0)
            }
        }


}
