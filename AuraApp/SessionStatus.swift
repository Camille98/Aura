//
//  SessionStatus.swift
//  Aura_App Survey Qs
//
//  Created by Kendall Daniels on 12/16/19.
//  Copyright © 2019 Kendall Daniels. All rights reserved.
//

import SwiftUI


var sessionStatus : String = "Retain"


struct SessionStatus: View {

        
        @ObservedObject var viewRouter: ViewRouter
        
        //var GenreList : [String] = []
        
            
            var body: some View {
                
                
                
                ZStack{
                    LinearGradient(gradient: .init(colors: [Color(UIColor(red:0.97, green:0.61, blue:0.62, alpha:1.0)), Color(UIColor(red:0.79, green:0.85, blue:1.00, alpha:1.0)),]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
                    
                    VStack{
                        NotificationText()
                        
                        Text("Select Your Sessions Mood: ").fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.blue)
                        
                        Button(action: {
                            print("Ignite")
                            sessionStatus = "Ignite"
                            self.viewRouter.currentPage = "streamingPage"
                        })
                        {
                           
                            HStack{
                                Text("Ignite")
                                        .fontWeight(.bold)
                                        
                                }
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding()
                                /*.foregroundColor(Color(UIColor(red:0.79, green:0.85, blue:1.00, alpha:1.0)))*/
                                .background(Color.white)
                                .cornerRadius(40)
                                .padding(.horizontal, 20)
                        }
                        Button(action: {
                            print("Retain")
                            sessionStatus = "Retain"
                            self.viewRouter.currentPage = "streamingPage"
                            
                        })
                        {
                            HStack{
                                Text("Retain")
                                        .fontWeight(.bold)
                                        
                                }
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding()
                                /*.foregroundColor(Color(UIColor(red:0.79, green:0.85, blue:1.00, alpha:1.0)))*/
                                .background(Color.white)
                                .cornerRadius(40)
                                .padding(.horizontal, 20)
                    
                        }
                        Button(action: {
                            sessionStatus = "Supress"
                            self.viewRouter.currentPage = "streamingPage"
                        })
                        {
                                HStack{
                                    Text("Supress")
                                            .fontWeight(.bold)
                                            
                                    }
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .padding()
                                    /*.foregroundColor(Color(UIColor(red:0.79, green:0.85, blue:1.00, alpha:1.0)))*/
                                    .background(Color.white)
                                    .cornerRadius(40)
                                    .padding(.horizontal, 20)
                        
                            }
                        
                    }
                }
        }
            

        

        #if DEBUG
        struct SessionStatus_Previews: PreviewProvider {
            static var previews: some View {
                SessionStatus(viewRouter: ViewRouter())
            }
        }

        #endif
    
    struct NotificationText : View {
          var body: some View {
              return Text("Choose Your Aura")
                .font(.largeTitle)
                  .fontWeight(.semibold)
                  .padding(.bottom, 20)
          }
      }
        }


    
