//
//  PomosDone.swift
//  StudyBuddy Watch App
//
//  Created by Marita Brichan on 2023-01-22.
//

import SwiftUI

struct PomosDone: View {
    var body: some View {
            VStack {
                Text("CONGRATS 🎉\nYou Are Done!").font(.system(size: 25.0))
                Text("\nYou have finished all your planned Pomos 💯\n\n").font(.system(size: 14.0))
                
                // Adding the button
                Button (action: {
                    
                    
                    // Code to execute when button is tapped goes here
                    print("Button tapped!")
                } ){
                    Text("AMAZING! 💃")
                }  .buttonStyle(.bordered)
                    .tint(.green)

            }

    }
}

struct PomosDone_Previews: PreviewProvider {
    static var previews: some View {
        PomosDone()
    }
}
