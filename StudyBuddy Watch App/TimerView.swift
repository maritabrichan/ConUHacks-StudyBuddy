//
//  TimerView.swift
//  StudyBuddy Watch App
//
//  Created by Marita Brichan on 2023-01-21.
//

import SwiftUI

struct TimerView: View {
    //MARK: - PROPERTIES
    @State var timeRemaining = 2//1*25*60 // 25 second counter
    @State var isBreakViewActive = false
    @State var count :Int = 1
    
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
                    count = count - 1
                    print(String(count))
                    self.isBreakViewActive = true
                    self.timer.upstream.connect().cancel()
                }
            }.sheet(isPresented: $isBreakViewActive) {
                BreakTime() // Run the breakview
            }
    }
    
    //Convert the time into 24hr (24:00:00) format
    func timeString(time: Int) -> String {
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format:"%02i:%02i", minutes, seconds)
    }
}
