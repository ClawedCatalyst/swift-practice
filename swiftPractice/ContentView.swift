//
//  ContentView.swift
//  swiftPractice
//
//  Created by suhail ahmad on 13/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        VStack{
            HStack{
                Text("Item 1")
                Text("Item 2")
                Text("Item 3")
            }
            
            HStack{
                Text("Item 1")
                Text("Item 2")
                Text("Item 3")
            }
            
            ZStack {
                Text("Back")
                Text("Front")
            }
        }
    }
}

#Preview {
    ContentView()
}

