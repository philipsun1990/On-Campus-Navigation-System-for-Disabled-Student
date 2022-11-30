//
//  SheetView.swift
//  navi
//
//  Created by Jiaji sun on 10/10/22.
//

import SwiftUI

struct SheetView: View {
    @State private var rampCheck = false
    @State private var elevatorCheck = false
    @State private var agCheck = false
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
<<<<<<< HEAD
        VStack {
            
            Toggle("Ramp", isOn: $rampCheck)
                .toggleStyle(SwitchToggleStyle(tint: .red))
            Toggle("Elevator", isOn: $elevatorCheck)
                .toggleStyle(SwitchToggleStyle(tint: .red))
            Toggle("Accessible Gate", isOn: $agCheck)
                .toggleStyle(SwitchToggleStyle(tint: .red))
            if rampCheck {
                Text("Ramp")
            }
            if elevatorCheck {
                Text("Elevator")
            }
            if agCheck {
                Text("Accessible Gate")
            }
            Button("confirm") {
                dismiss()
            }
            .font(.title)
            .padding(30)
            
        }
        .padding(20)
=======
            VStack {
                
                Toggle("Ramp", isOn: $rampCheck)
                    .toggleStyle(SwitchToggleStyle(tint: .red))
                Toggle("Elevator", isOn: $elevatorCheck)
                    .toggleStyle(SwitchToggleStyle(tint: .red))
                Toggle("Accessible Gate", isOn: $agCheck)
                    .toggleStyle(SwitchToggleStyle(tint: .red))
                if rampCheck {
                    Text("Ramp")
                }
                if elevatorCheck {
                    Text("Elevator")
                }
                if agCheck {
                    Text("Accessible Gate")
                }
                Button("confirm") {
                    dismiss()
                }
                .font(.title)
                .padding(30)
                
            }
            .padding(20)
>>>>>>> parent of c1719a3 (New Version)
        
        
    }
    
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
