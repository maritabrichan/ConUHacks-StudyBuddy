//
//  ContentView.swift
//  Test Project Watch App
//
//  Created by Marita Brichan on 2023-01-21.
//

import SwiftUI

struct Pomodoro_counter: View {
    @State var count: Int = 1
    @State var  remove: String = "Remove Pomo"
    var body: some View {
        ScrollView{
            HStack{
                VStack{
                    Text("Pomo Goal:").font(.headline).bold().italic()
                    Text(String(count)).font(.largeTitle)
            
                }.padding()
                Button(action: {
                    //go to timer
                    print("Button tapped!")
                }) {
                    Text("Start")
                }
            }
            HStack {
                
                // Adding the button
                Button(action: {
                    
                    
                    // Code to execute when button is tapped goes here
                    count = count+1
                    remove = "Remove Pomo"
                    print("Button tapped!")
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

        .padding()
    }
}

struct PomodoroCounter_Previews: PreviewProvider {
    static var previews: some View {
        Pomodoro_counter()
    }
}
