//
//  SleepTime.swift
//  StudyBuddy Watch App
//
//  Created by Marita Brichan on 2023-01-21.
//

import SwiftUI

struct SleepTime: View {
    var body: some View {
            VStack {
                Text("It's Sleep Time! 💤").font(.system(size: 25.0))
                Text("\nYou've been studying for over 24 Pomos. Go sleep. Sleeping helps with concentration! 📝\n\n").font(.system(size: 14.0))
                
                // Adding the button
                Button (action: {
                    
                    
                    // Code to execute when button is tapped goes here
                    print("Button tapped!")
                } ){
                    Text("OK 🫡")
                }  .buttonStyle(.bordered)
                    .tint(.green)

            }

    }
}

struct SleepTime_Previews: PreviewProvider {
    static var previews: some View {
        SleepTime()
    }
}
