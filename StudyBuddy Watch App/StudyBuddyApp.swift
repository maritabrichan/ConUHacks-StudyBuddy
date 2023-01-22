//
//  Test_ProjectApp.swift
//  Test Project Watch App
//
//  Created by Marita Brichan on 2023-01-21.
//

import SwiftUI

@main
struct Test_Project_Watch_AppApp: App {
    @State var count = 10
    var body: some Scene {
        WindowGroup {
            ScrollView{
                QuoteView()
                Pomodoro_counter(count: count)
                TimerView(count: count)
            }
        }
    }
}


