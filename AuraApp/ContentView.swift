//
//  ContentView.swift
//  Aura_App Survey Qs
//
//  Created by Kendall Daniels on 11/24/19.
//  Copyright © 2019 Kendall Daniels. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
   
    //@ObservedObject var viewRouter: ViewRouter
    @State var isPopChosen : Bool = false
    @State var isRockChosen : Bool = false
    @State var isRnBChosen : Bool = false
    @State var isHipHopChosen : Bool = false
    @State var isJazzChosen : Bool = false
    
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: .init(colors: [Color(UIColor(red:0.97, green:0.61, blue:0.62, alpha:1.0)), Color(UIColor(red:0.79, green:0.85, blue:1.00, alpha:1.0)),]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            VStack{
                Button(action: {
                    print("Pop")
                    self.isPopChosen = true
                })
                {
                   
                    HStack{
                        Text("Pop")
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
                    print("Rock")
                    self.isRockChosen = true
                })
                {
                    HStack{
                        Text("Rock")
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
                    print("R&B")
                    self.isRnBChosen = true
                })
                {
                        HStack{
                            Text("R&B")
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
                    print("Hip Hop")
                    self.isHipHopChosen = true
                })
                {
                            HStack{
                                Text("Rock")
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
                    print("Jazz")
                    self.isJazzChosen = true
                })
                {
                    HStack{
                        Text("Jazz")
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
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#endif
}
