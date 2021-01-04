//
//  PickerExampleView.swift
//  Pickers-SwiftUI
//
//  Created by Юрий Станиславский on 04.01.2021.
//

import SwiftUI

struct PickerExampleView: View {
    @State private var section = 0
    var settingsTime = ["1 min", "5 min", "10 min", "15 min"]
    
    var body: some View {
        NavigationView {
            Form {
                Picker(selection: $section,
                       label: Text("Time"),
                       content: {
                        ForEach(0..<settingsTime.count) {
                            Text(settingsTime[$0])
                        }
                       })
            }
            .navigationTitle("Selected: \(settingsTime[section])")
        }
    }
}

struct PickerExampleView_Previews: PreviewProvider {
    static var previews: some View {
        PickerExampleView()
    }
}
