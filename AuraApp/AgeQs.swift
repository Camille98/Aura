//
//  AgeQs.swift
//  Aura_App Survey Qs
//
//  Created by Kendall Daniels on 12/7/19.
//  Copyright © 2019 Kendall Daniels. All rights reserved.
//

import SwiftUI


var AgeIs : String = "16"

struct AgeQs: View {
    
    @ObservedObject var viewRouter: ViewRouter
    
    
    var body: some View {
        
        //@State private var showDetails = false
        
        //let lightBlue = UIColor(red:0.97, green:0.61, blue:0.62, alpha:1.0)
        
        //let lightPink = UIColor(red:0.79, green:0.85, blue:1.00, alpha:1.0)
        
        ZStack{
            LinearGradient(gradient: .init(colors: [Color(UIColor(red:0.97, green:0.61, blue:0.62, alpha:1.0)), Color(UIColor(red:0.79, green:0.85, blue:1.00, alpha:1.0)),]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
              
            
        
              VStack{
                
                Text("Select Your Age Range: ").fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(.blue)
                
                Button(action: {
                   self.viewRouter.currentPage = "page2"
                    //self.age16 = true
                    //should also save the age group of the person
                })
                {
                    HStack{
                        Text("16-19")
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
                    AgeIs = "25"
                    self.viewRouter.currentPage = "page2"
                    
                    //should also save the age group of the person
                })
                {
                    HStack{
                        Text("20-24")
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
                    AgeIs = "25"
                    self.viewRouter.currentPage = "page2"
                    
                    
                })
                {
                    HStack{
                        Text("25-34")
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
                    AgeIs = "35"
                    
                    self.viewRouter.currentPage = "page2"
                    
                    
                })
                {
                    HStack{
                        Text("35-44")
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
                    AgeIs = "45"
                    self.viewRouter.currentPage = "page2"
                    
                    
                    //should also save the age group of the person
                })
                {
                    HStack{
                        Text("45-54")
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
                    
                    AgeIs = "55"
                    self.viewRouter.currentPage = "page2"
                   
                    
                    //should also save the age group of the person
                })
                {
                    HStack{
                        Text("55-64")
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
                    AgeIs = "65"
                    self.viewRouter.currentPage = "page2"
                    
                    //should also save the age group of the person
                })
                {
                    HStack{
                        Text("65+")
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
struct AgeQs_Previews: PreviewProvider {
    static var previews: some View {
        AgeQs(viewRouter: ViewRouter())
    }
}
#endif

    struct AgeButtons: ButtonStyle {
             func makeBody(configuration: Self.Configuration) -> some View {
             configuration.label
              
            
             .frame(minWidth: 0, maxWidth: .infinity)
             .padding()
             /*.foregroundColor(Color(UIColor(red:0.79, green:0.85, blue:1.00, alpha:1.0)))*/
             .background(Color.white)
             .cornerRadius(40)
             .padding(.horizontal, 20)
        }
    }
    
    
    
    
}
