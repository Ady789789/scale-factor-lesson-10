//
//  ContentView.swift
//  scale factor lesson 10
//
//  Created by natural health on 1/28/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var photoName = ""
    @State private var photoNumber = 0
    @State private var messageNumber = 0
    
    var body: some View {
        VStack {
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 100)
                .animation(.easeIn(duration: 0.15), value: message)
            
            Image(photoName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 45))
                .shadow(radius: 50)
                .animation(.default, value: photoName)
            
            Spacer()
            
            Button("Show Message!") {
                let messages = ["You are Awesome!",
                              "You are Great!",
                              "You are Fantastic!",
                              "Fabulous? That's You!",
                                "You  make me Smile!",
                "When the Genius Bar needs help, they call You!"]
                message = messages[messageNumber]
                messageNumber = messageNumber + 1
                if messageNumber == messages.count {
                    messageNumber = 0
                }
                
                
                photoName = "photo\(photoNumber)"
//                photoNumber = photoNumber + 1
                photoNumber += 1
                if photoNumber > 9 {
                    photoNumber = 0
                }
//        print(photoNumber) do not show on content view only in console
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
