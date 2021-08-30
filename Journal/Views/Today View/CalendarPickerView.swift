//
//  CalendarPickerView.swift
//  Journal
//
//  Created by Jacob Myers on 6/24/21.
//

import SwiftUI

struct CalendarPickerView: View {
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }()
    
    @State private var birthDate = Date()
    
    var body: some View {
        VStack {
            DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: .date)
                {}.background(Color.clear).frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.height * 0.05, alignment: .center)
            
            
            
            Text("Date is \(birthDate, formatter: dateFormatter)")
        }
    }
}

struct CalendarPickerView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarPickerView()
    }
}
