//
//  QuoteView.swift
//  StudyBuddy Watch App
//
//  Created by Jaeden Rotondo on 2023-01-22.
//

import SwiftUI
struct TaskEntry: Codable  {
    let id: Int
    let title: String
    var completed: Bool
}
struct QuoteView: View {
    
    @State var results = [TaskEntry]()
  
    var body: some View {
        List(results, id: \.id) { item in
            HStack() {
                Text(item.title);Image(systemName: item.completed ? "checkmark.square.fill" : "square")
                    .foregroundColor(item.completed ? Color.blue : Color.secondary)
                    .onTapGesture {
                        print(String(item.id))
                    }
            }
        }.onAppear(perform: loadData)
    }
    
  
    func loadData() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos") else {
            print("Your API end point is Invalid")
            return
        }
        let request = URLRequest(url: url)

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let response = try? JSONDecoder().decode([TaskEntry].self, from: data) {
                    DispatchQueue.main.async {
                        self.results = response
                    }
                    return
                }
            }
        }.resume()
    }
    
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView()
    }
}
