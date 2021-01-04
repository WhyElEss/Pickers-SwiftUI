//
//  PickerExampleView.swift
//  Pickers-SwiftUI
//
//  Created by Юрий Станиславский on 04.01.2021.
//

import SwiftUI

struct PickerExampleView: View {
    @State private var timeSection = 0
    @State private var prioritySection = 0
    @State private var planeModeIsOn = false
    var settingsTime = ["1 min", "5 min", "10 min", "15 min"]
    var priority = ["!", "!!", "!!!"]
    
    var body: some View {
        NavigationView {
            Form {
                Picker(selection: $timeSection,
                       label: Text("Time"),
                       content: {
                        ForEach(0..<settingsTime.count) {
                            Text(settingsTime[$0])
                        }
                       })
                
                Toggle(isOn: $planeModeIsOn, label: {
                    Text("Plane Mode")
                        .foregroundColor(planeModeIsOn ? .orange : .secondary)
                })
                
                Picker(selection: $prioritySection,
                       label: Text("Priority"),
                       content: {
                        ForEach(0..<priority.count) {
                            Text(priority[$0])
                        }
                       })
                
            }
            .navigationTitle("Selected: \(settingsTime[timeSection]) \(priority[prioritySection])")
        }
    }
}

struct PickerExampleView_Previews: PreviewProvider {
    static var previews: some View {
        PickerExampleView()
    }
}
