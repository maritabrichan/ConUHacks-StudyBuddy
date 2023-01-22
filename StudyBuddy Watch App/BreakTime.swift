//
//  BreakTime.swift
//  StudyBuddy Watch App
//
//  Created by Marita Brichan on 2023-01-21.
//

import SwiftUI

struct BreakTime: View {
    
    var body: some View {
            VStack {
                Text("It's Break Time! 😉").font(.system(size: 23.0))
                Text("\nYou have worked very hard in the past 25 minutes and deserve some rest. 🍻\n").font(.system(size: 14.0))
                
                // Adding the button
                Button (action: {
                    
                    
                    // Code to execute when button is tapped goes here
                    print("Button tapped!")
                } ){
                    Text("✨OK✨")
                }  .buttonStyle(.bordered)
                    .tint(.green)

            }

        .padding()
    }
}

struct BreakTime_Previews: PreviewProvider {
    static var previews: some View {
        BreakTime()
    }
}
