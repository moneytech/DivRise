//
//  SettingsView.swift
//  Dividend App
//
//  Created by Kevin Li on 12/27/19.
//  Copyright © 2019 Kevin Li. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    @Binding var receive: Bool
    @Binding var daySelection: Int
    @Binding var dateSelection: Date
    
    let openSettings: () -> Void
    let onNotificationChange: () -> Void
    
    var body: some View {
        
        let receiveBinding = Binding<Bool>(get: {
            return self.receive
        }, set: {
            self.receive = $0
            self.openSettings()
        })
        
        let dayBinding = Binding<Int>(get: {
            return self.daySelection
        }, set: {
            self.daySelection = $0
            self.onNotificationChange()
        })
        
        let dateBinding = Binding<Date>(get: {
            return self.dateSelection
        }, set: {
            self.dateSelection = $0
            self.onNotificationChange()
        })
        
        return
            ZStack {
                
                Color("modalBackground")
                    .edgesIgnoringSafeArea(.all)
                
                Form {
                    Section(header: Text("Notifications")) {
                        Toggle(isOn: receiveBinding) {
                            Text("Recieve Notifications")
                                .foregroundColor(Color("textColor"))
                        }
                        
                        Stepper(value: dayBinding, in: 1...14) {
                            Text("Day of month: \(daySelection)")
                            .foregroundColor(Color("textColor"))
                        }
                        .colorScheme(.dark)
                        .disabled(!receive)
                        
                        DatePicker(selection: dateBinding, displayedComponents: .hourAndMinute) {
                            Text("Time of notification")
                                .foregroundColor(Color("textColor"))
                        }
                        .colorScheme(.dark)
                        .disabled(!receive)
                    }
                    
                }
        }
    }
}
