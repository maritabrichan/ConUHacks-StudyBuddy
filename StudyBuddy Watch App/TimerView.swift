//
//  TimerView.swift
//  StudyBuddy Watch App
//
//  Created by Marita Brichan on 2023-01-21.
//

import SwiftUI

struct TimerView: View {
    //MARK: - PROPERTIES
    @State var timeRemaining = 24*60*60
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    //MARK: - BODY
    var body: some View {
        
        Text("\(timeString(time: timeRemaining))")
            .font(.system(size: 30))
            .frame(height: 40.0)
            .frame(minWidth: 0, maxWidth: .infinity)
            .foregroundColor(.white)
            .background(Color.black)
            .onReceive(timer){ _ in
                if self.timeRemaining > 0 {
                    self.timeRemaining -= 1
                }else{
                    self.timer.upstream.connect().cancel()
                }
            }
    }
    
    //Convert the time into 24hr (24:00:00) format
    func timeString(time: Int) -> String {
        let hours   = Int(time) / 3600
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format:"%02i:%02i:%02i", hours, minutes, seconds)
    }
}
