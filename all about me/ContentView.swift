//
//  ContentView.swift
//  all about me
//
//  Created by Saranya Mandapaty on 6/23/23.
//

import SwiftUI

struct ContentView: View {
    @State var name = ""
       @State var factsRevealed = false
       var textTitle = "What is your name? "
       var imageName = "newspaper"
       var facts = [
           "I love going on bike rides.",
           "Dream is to work at the NYT",
           "I love reading international classics.",
           "I love art but cannot paint, my favorite medium is colored pencil and graphite.",
           "I want to visit Greece (inspired by Mamma Mia)."
       ]

       var body: some View {
           VStack {
               Text("Welcome, Saranya Mandapaty!")
                   .font(.title)
                   .fontWeight(.bold)
    

               Image(imageName)
                   .resizable()
                   .aspectRatio(contentMode: .fit)
                   .frame(width: 200, height: 200)
                   .padding()

               Button("Show facts") {
                   factsRevealed.toggle()
               }
               .foregroundColor(.white)
               .padding()
               .background(Color.purple)
               .cornerRadius(10)

               if factsRevealed {
                   ForEach(facts, id: \.self) { fact in
                       Text(fact)
                           .font(.subheadline)
                           .fontWeight(.bold)
                           .foregroundColor(.purple)
                           .multilineTextAlignment(.leading)
                           .padding()
                   }
               }
           }
           .padding()
       }
   }
