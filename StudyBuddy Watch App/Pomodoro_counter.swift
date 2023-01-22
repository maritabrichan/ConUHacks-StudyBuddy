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
      
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text(String(count))
                
                // Adding the button
                Button(action: {
                    
                    
                    // Code to execute when button is tapped goes here
                    count = count+1
                    remove = "Remove Pomo"
                    print("Button tapped!")
                }) {
                    Text("Add Pomo")
                }
            }

                // Adding the button
                Button(action: {
                    
                    // Code to execute when button is tapped goes here
                    if count > 0 {
                      count = count-1
                    }else{
                        remove = "No more Pomos!"
                    }
                    print("Button tapped!")
                }) {
                    Text(remove)
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
