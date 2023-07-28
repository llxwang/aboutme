//
//  ContentView.swift
//  aboutme
//
//  Created by JZhang on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    let facts = [
        "I'm a huge Swiftie and I know all the lyrics to All to Well (10 min. version)",
        "I was born and have lived in Portland, Oregon all of my life",
        "My go-to baking recipe is matcha infused cookies with white chocolate chips",
        "My hobbies include crocheting, listening to music, thrifting, and cooking with friends",
        "In a perfect world I would live in a million dollar apartment in New York City with my friends",
        
    ]

    @State var random = 0
    var body: some View {
        
        ZStack{
            Color(.init(red: 204/255.0, green: 213/255.0, blue: 174/255.0, alpha: 1))
                .ignoresSafeArea()
            VStack(alignment: .center, spacing:15){
                Text ("Get to Know Me!")
                    .font(.title)
                    .foregroundColor(Color(.init(red: 188/255.0, green: 108/255.0, blue: 37/255.0, alpha: 1)))
                
                Image("Lily")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .cornerRadius(50)
                    
                Text("Lily Wang (she/her)")
                    .font(.title)
                    .foregroundColor(Color(.init(red: 188/255.0, green: 108/255.0, blue: 37/255.0, alpha: 1)))

                Text(facts[random])
                    .font(.body)
                    .foregroundColor(Color(.init(red: 100/255.0, green: 13/255.0, blue: 15/255.0, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .padding()
                
                Button(action: {
                            self.random = Int.random(in: 0..<facts.count)
                            print(random)
                        }) {
                            Text("Click here for a fun fact!")
                        }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(Color(.init(red: 188/255.0, green: 108/255.0, blue: 37/255.0, alpha: 1)))
                
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
