//
//  SheetView.swift
//  navi
//
//  Created by Jiaji sun on 10/10/22.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button("Press to dismiss") {
            dismiss()
        }
        .font(.title)
        .padding()
        .background(.black)
        
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
