//
//  ContentView-model.swift
//  StudyBuddy Watch App
//
//  Created by Jaeden Rotondo on 2023-01-22.
//


import Foundation

extension ContentView {
    final class ViewModel: ObservableObject {
        @Published var isActive = false
        @Published var showingAlert = false
        @Published var time: String = "1:00"
        @Published var pomodoros: Int = 1
        @Published var minutes: Float = 1.0 {
            didSet {
                self.time = "\(Int(minutes)):00"
            }
        }
        private var initialTime = 1
        private var endDate = Date()
        
        // Start the timer with the given amount of minutes
        func start(minutes: Float) {
            self.initialTime = Int(minutes)
            //self.pomodoros -= 1
            self.endDate = Date()
            self.isActive = true
            self.endDate = Calendar.current.date(byAdding: .minute, value: Int(minutes), to: endDate)!
        }
        
        // Reset the timer
        func addPomodoros() {
            self.pomodoros += 1
        }
        
        func removePomodoros() {
            self.pomodoros -= 1
        }
        
        
        func reset() {
            self.pomodoros+=1
            self.minutes = Float(initialTime)
            self.isActive = false
            self.time = "\(Int(minutes)):00"
        }
        
        // Show updates of the timer
        func updateCountdown(){
            guard isActive else { return }
            
            // Gets the current date and makes the time difference calculation
            let now = Date()
            let diff = endDate.timeIntervalSince1970 - now.timeIntervalSince1970
            
            // Checks that the countdown is not <= 0
            if diff <= 0 {
                self.isActive = false
                self.time = "1:00"
                self.showingAlert = true
                return
            }
            
            // Turns the time difference calculation into sensible data and formats it
            let date = Date(timeIntervalSince1970: diff)
            let calendar = Calendar.current
            let minutes = calendar.component(.minute, from: date)
            let seconds = calendar.component(.second, from: date)

            // Updates the time string with the formatted time
            self.minutes = Float(minutes)
            self.time = String(format:"%d:%02d", minutes, seconds)
        }
    }
}
