//
//  ContentView.swift
//  practice
//
//  Created by Anthony Marie on 2/1/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageString = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    var body: some View {
        VStack {
            Image(imageString)
                .resizable()
                .scaledToFit()
                .foregroundColor(.blue)
                .frame(width: 400, height: 400)
            
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.orange)
            
            
            
            Spacer()
            
            
            
            HStack {
                let messages = ["balls", "toys", "tennis", "sports", "golf"]
                //             the goal is to randomize an image between 1-5 and if the most recent picture is the same as the one before, reroll until a new picture is found
                var imageNumber = Int.random(in: 1...5)
                
                Button("Image changer") {
                    
                    while imageNumber == lastImageNumber {
                        imageNumber = Int.random(in: 1...5)
                        
                    }
                    
                    imageString = "image\(imageNumber)"
                    lastImageNumber = imageNumber
                }
                Spacer()
                var messageNumber = Int.random(in: 0...messages.count-1)
                Button("Text Changer baby!") {
                    while messageNumber == lastMessageNumber{ messageNumber = Int.random(in: 0...messages.count-1)
                    }
                    messageString = messages[messageNumber]
                    lastMessageNumber = messageNumber
                }
                Spacer()
                
                Button("The Big One") {
                    while messageNumber == lastMessageNumber{ messageNumber = Int.random(in: 0...messages.count-1)
                    }
                    messageString = messages[messageNumber]
                    lastMessageNumber = messageNumber
                    
                    while imageNumber == lastImageNumber {
                        imageNumber = Int.random(in: 1...5)
                        
                    }
                    
                    imageString = "image\(imageNumber)"
                    lastImageNumber = imageNumber
                }
                
            }
            
        }
        
        
        
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
