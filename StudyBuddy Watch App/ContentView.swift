//
//  ContentView.swift
//  StudyBuddy Watch App
//
//  Created by Marita Brichan on 2023-01-21.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int = 1
    @State var  remove: String = "Remove Pomo"
    var body: some View {
        ScrollView{
            HStack{
                VStack{
                    Text("Pomo Goal :").font(.headline).bold().italic()
                    Text(String(count)).font(.largeTitle)
            
                }
                .padding()
                NavigationView{
                    NavigationLink(destination:TimerView()){
                    Text("Start")
                }
            }
            }
            HStack {
                // Adding the button
                Button(action: {

                    // Code to execute when button is tapped goes here
                    count = count+1
                    remove = "Remove Pomo"
                }) {
                    Text("Add Pomo")
                }
                // Adding the button
                    // Code to execute when button is tapped goes here
                    if count > 0 {
                        Button(action: {
                      count = count-1
                            print("Button tapped!")
                        }) {
                            Text(remove)
                        }
                    }
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
