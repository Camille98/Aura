//
//  GenreQs.swift
//  Aura_App Survey Qs
//
//  Created by Kendall Daniels on 12/8/19.
//  Copyright © 2019 Kendall Daniels. All rights reserved.
//

import SwiftUI





struct GenreQs: View {
    
    
    @ObservedObject var viewRouter: ViewRouter
    
    //var GenreList : [String] = []
    
        
        var body: some View {
            
            
            
            ZStack{
                LinearGradient(gradient: .init(colors: [Color(UIColor(red:0.97, green:0.61, blue:0.62, alpha:1.0)), Color(UIColor(red:0.79, green:0.85, blue:1.00, alpha:1.0)),]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
                
                VStack{
                    
                    Text("Select Your Favorite Genres: ").fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.blue)
                    
                    Button(action: {
                        print("Pop")
                        //var isPopChosen: Bool = true
                        PopGenres(true)
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
                        RockGenres(true)
                        
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
                        RnBGenres(true)
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
                        HipHopGenres(true)
                    })
                    {
                                HStack{
                                    Text("Hip Hop")
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
                        JazzGenres(true)
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
                       
                    
                    Button(action: {
                            print("Next")
                            self.viewRouter.currentPage = "page4"
                        })
                    {
                        HStack{
                            Text("Next")
                                    .fontWeight(.bold)
                                .foregroundColor(Color.white)
                            }
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            /*.foregroundColor(Color(UIColor(red:0.79, green:0.85, blue:1.00, alpha:1.0)))*/
                            .background(Color.blue)
                            .cornerRadius(40)
                            .padding(.horizontal, 20)
                    }
                }
            }
    }
        

    

    #if DEBUG
    struct GenreQs_Previews: PreviewProvider {
        static var previews: some View {
            GenreQs(viewRouter: ViewRouter())
        }
    }

    #endif
    }


var GenreList : [String] = []


    func PopGenres(_ isChosen: Bool){
        //var  typeGenre = "Pop"
       if (isChosen == true && !GenreList.contains("Pop")){
            GenreList.append("Pop")
        
    }
}

func RockGenres(_ isChosen: Bool){
    if (isChosen == true && !GenreList.contains("Rock")) {
            GenreList.append("Rock")
        
    }
}

func RnBGenres(_ isChosen: Bool){
        if (isChosen == true && !GenreList.contains("RnB")){
            GenreList.append("RnB")
        
    }
}

func HipHopGenres(_ isChosen: Bool){
       if (isChosen == true && !GenreList.contains("HipHop")){
            GenreList.append("HipHop")
            print(GenreList)
    }
}
func JazzGenres(_ isChosen: Bool){
       if (isChosen == true && !GenreList.contains("Jazz")){
            GenreList.append("Jazz")
        
    }
}
