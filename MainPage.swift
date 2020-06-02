//
//  MainPage.swift
//  AuraApp
//
//  Created by Camille Etienne on 12/9/19.
//  Copyright © 2019 Camille Etienne. All rights reserved.
//

import SwiftUI
import AVKit
//impor/Users/cetienne/Documents/AuraApp 2/AuraApp.xcodeprojt FirebaseFirestore


struct MainPage: View {
    
    @ObservedObject var viewRouter: ViewRouter
    
    @State var time : CGFloat = 0
    @State var player : AVAudioPlayer!
    @State var audio : String = ""
    @State var songlist : [String: Int] = ["Aaliyah- I Care 4 U": 139, "Alicia Keys - Diary": 128, "Alicia Keys Ft. Maxwell - Fire We Make": 68, "Anderson .Paak - Trippy (feat. J. Cole)": 97, "Ari Lennox - Up Late":80, "Bilal & Raphael Saadiq - Soul Sista [Remix] (Queen & Slim The Soundtrack)": 146, "D'Angelo - Send It On": 127, "Drake - Marvins Room": 112, "Erykah Badu - Didn't Cha Know": 135, "Future - Hallucinating": 130, "Goapele - Closer": 93, "Future - Might As Well": 134, "Ice Cube - It Was A Good Day": 82, "Jazmine Sullivan & Bryson Tiller - Insecure": 89, "Jhené Aiko - Triggered (freestyle)": 93, "Kendrick Lamar - These Walls": 108, "Lauryn Hill - Nothing Even Matters feat. D'Angelo": 136, "Lauryn Hill - To Zion": 173, "Lauryn Hill-That Thing": 100, "Lucky Daye - Real Games": 142, "Mali Music ft. Jazmine Sullivan - Loved By You": 69, "Mario - Just a Friend": 132, "Nipsey Hussle - 4 In The Mornin": 140, "Solange - Cranes in the Sky": 97, "Summer Walker - CPR": 140, "Swae Lee - Offshore": 100, "SZA - Broken Clocks": 113, "The Internet - Girl (ft Kaytranada)": 80, "The Internet - Hold On": 60, "Young Thug - Constantly Hating featuring Birdman [Explicit]": 170]

    @State var ignitelist : [String:Int] = [:]
    @State var retainlist : [String:Int] = [:]
    @State var supresslist : [String:Int] = [:]
    //@State var playerPaused = true
    //@State var ref : DatabaseReference!
//    var ref : StorageReference {
//        return Storage.storage().reference.child
//    }
    
    var body: some View {
        
        
        VStack{
            
            LinearGradient(gradient: .init(colors: [Color(UIColor(red:0.97, green:0.61, blue:0.62, alpha:1.0)), Color(UIColor(red:0.79, green:0.85, blue:1.00, alpha:1.0)),]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            
            Button(action: {self.viewRouter.currentPage = "page4"}) {
            ChangeAuraContent()
            }
            
            
            
            
            
            ZStack(alignment: .leading , content: {
            
                
                Capsule()
                    .fill(Color.gray).frame(height: 8)
                    .padding(10)
                
                Capsule()
                    .fill(Color.blue).frame(width: time , height: 8)
                    .padding(10)
            })
            
            HStack{
            Button(action: {
                
                self.player.play()
                //to continuously get the current audio time that will affect our main thread
                DispatchQueue.global(qos: .background).async {
                    
                    while true{
                        let screenWidth = UIScreen.main.bounds.width - 20
                        let currenttime = self.player.currentTime / self.player.duration
                        let timeForLabel = CGFloat(currenttime) * screenWidth
                        
                        self.time = timeForLabel
                        
                        print(currenttime)
                    }
                    
                    
                }
            }){
                Text("Play")
            }
        }.onAppear{
            
            let ignitelist = self.songlist.filter() {$0.value >= 120}
            let retainlist = self.songlist.filter() {$0.value >= 76 && $0.value < 120}
            let supresslist = self.songlist.filter() {$0.value >= 60 && $0.value < 76}
            
            var audio = ""
      
            while sessionStatus == "Ignite"{
                let index: Int = Int(arc4random_uniform(UInt32(ignitelist.count)))
                
                audio = Array(ignitelist.keys)[index]
                
                self.audio = audio
                
                let url = Bundle.main.path(forResource: self.audio, ofType: "mp3", inDirectory: "mp3Folder")
                self.player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: url ?? "auraAudio"))
            }
            while sessionStatus == "Retain"{
                let index: Int = Int(arc4random_uniform(UInt32(retainlist.count)))
                
                audio = Array(retainlist.keys)[index]
                
                self.audio = audio
                
                let url = Bundle.main.path(forResource: self.audio, ofType: "mp3", inDirectory: "mp3Folder")
                self.player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: url ?? "auraAudio"))
                
            }
            while sessionStatus == "Supress"{
                
                let index: Int = Int(arc4random_uniform(UInt32(supresslist.count)))

                audio = Array(supresslist.keys)[index]
                
                self.audio = audio
                
                let url = Bundle.main.path(forResource: self.audio, ofType: "mp3", inDirectory: "mp3Folder")
                self.player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: url ?? "auraAudio"))
            }
            
            
            
        }
    
            HStack{
                          Button(action: {
                
                            self.player.pause()
                                      
                      })
                      {
                      Text("Pause")
                  }
            }

}
    }
    
    struct MoodImage : View {
           var body: some View {
               return Image("auraMood")
               .resizable()
                   .aspectRatio(UIImage(named: "auraMood")! .size, contentMode: .fill)
                   .frame(width: 250, height: 250)
               .clipped()
               .cornerRadius(250)
               .padding(.bottom, 75)
           }

}

}


    #if DEBUG
    struct MainPage_Previews: PreviewProvider {
        static var previews: some View {
            MainPage(viewRouter: ViewRouter())
        }
    }

    #endif

struct ChangeAuraContent: View {
         var body: some View {
            
         return Text("Change Aura")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 60)
                        .background(Color.blue)
                        .cornerRadius(15.0)
    }
}



