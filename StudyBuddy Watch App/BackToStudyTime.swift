//
//  BackToStudyTime.swift
//  StudyBuddy Watch App
//
//  Created by Marita Brichan on 2023-01-21.
//

import SwiftUI

struct BackToStudyTime: View {
    
    var body: some View {
      
            VStack {
                Text("Break is Over! 🏃‍♀️").font(.system(size: 25.0))
                Text("\nIt's time to go back to your studies. You can do this! 💪\n").font(.system(size: 15.0))
                
                // Adding the button
                Button (action: {
                    
                    
                    // Code to execute when button is tapped goes here
                    print("Button tapped!")
                } ){
                    Text("OK 🫡")
                }  .buttonStyle(.bordered)
                    .tint(.green)

            }

                
            
        

        .padding()
    }
}

struct BackToStudyTime_Previews: PreviewProvider {
    static var previews: some View {
        BackToStudyTime()
    }
}
