//
//  MealTime.swift
//  StudyBuddy Watch App
//
//  Created by Marita Brichan on 2023-01-21.
//

import SwiftUI

struct MealTime: View {
    var body: some View {
            VStack {
                Text("It's Snack Time! 🍑").font(.system(size: 24.0))
                Text("\nYou've been studying for over 8 Pomos. Go eat something. It's never a good idea to skip meals! 🍕\n").font(.system(size: 14.0))
                
                // Adding the button
                Button (action: {
                    
                    
                    // Code to execute when button is tapped goes here
                    print("Button tapped!")
                } ){
                    Text("✨OK✨")
                }  .buttonStyle(.bordered)
                    .tint(.green)

            }

    }
}

struct MealTime_Previews: PreviewProvider {
    static var previews: some View {
        MealTime()
    }
}
