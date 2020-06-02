//
//  ContentView.swift
//  Aura_App Survey Qs
//
//  Created by Kendall Daniels on 11/24/19.
//  Copyright © 2019 Kendall Daniels. All rights reserved.
//

import SwiftUI
import FirebaseAuth

struct LoginContentView: View {
    
        @ObservedObject var viewRouter: ViewRouter
        
        @State var username: String = ""
        @State var password: String = ""
        @State var error: String = ""
        @State private var image: Image?
        @State private var showingImagePicker = false
        @State private var inputImage: UIImage?
        @EnvironmentObject var session: SessionStore

    func signIn() {
        session.signIn(email: username, password: password) { (result, error) in
            if let error = error {
                self.error = error.localizedDescription
            } else {
                self.username = ""
                self.password = ""
            }
        }
    }
    
    
    var body: some View {
        
        
        ZStack{
            LinearGradient(gradient: .init(colors: [Color(UIColor(red:0.97, green:0.61, blue:0.62, alpha:1.0)), Color(UIColor(red:0.79, green:0.85, blue:1.00, alpha:1.0)),]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
        
        
        VStack {
            WelcomeText()
            UserImage()
            TextField("Username", text: $username)
            .padding()
                .background(Color.gray)
                .cornerRadius(5.0)
                .padding(.bottom, 20)

            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray)
                .cornerRadius(5.0)
                .padding(.bottom, 20)

     
            
            Button(action: {self.viewRouter.currentPage = "page4"}) {
            LoginButtonContent()
            }
            
            .padding()
            
            Button(action: {
                self.viewRouter.currentPage = "page1"
                
            }) {
            SignUpButtonContent()
            }
            }
        }

//        return AnyView(_fromValue: username)
//        return AnyView(_fromValue: password)
        .padding()
        
        
}
    
    
}


#if DEBUG
struct LoginContentView_Previews: PreviewProvider {
    static var previews: some View {
       LoginContentView(viewRouter: ViewRouter())
    }

}

    
    
#endif
    
    struct WelcomeText : View {
        var body: some View {
            return Text("Welcome To Aura!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
        }
    }
    
    struct UserImage : View {
        var body: some View {
            return Image("userImage")
            .resizable()
                .aspectRatio(UIImage(named: "userImage")! .size, contentMode: .fill)
                .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 75)
        }
    }
    
    struct LoginButtonContent: View {
             var body: some View {
                
             return Text("LOGIN")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 220, height: 60)
                            .background(Color.blue)
                            .cornerRadius(15.0)
        }
    }
    
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



