//
//  EventObjectView.swift
//  Journal
//
//  Created by Jacob Myers on 6/8/21.
//

import SwiftUI

struct EventRowEditView: View {
    // State vars
    @State private var description: String = ""
    @State private var isEditingDesc = false
    @State private var showGreeting = false
    
    // Params
    var isPositive: Bool
    
    var body: some View {
        HStack {
            TextField(
                Constants.General.DEFAULT_TEXTFIELD_TEXT,
                text: $description
            ) { isEditing in
                self.isEditingDesc = isEditing
            } onCommit: {}
            .frame(width: Constants.Views.EVENTROWEDIT_TEXTFIELD_WIDTH)
//            .frame(width:  300)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .foregroundColor(Color("TextColor"))
//            .padding(.leading, 30)
            .padding(.leading, Constants.Views.EVENTROWEDIT_TEXTFIELD_PADDING)
            .font(.title3)
            Toggle("", isOn: $showGreeting)
                .padding(.trailing, 30)
                .toggleStyle(
                    SwitchToggleStyle(tint: Color("JournalCoverColor"))
                )
            
        }
    }
}

struct EventObjectView_Previews: PreviewProvider {
    static var previews: some View {
        EventRowEditView(isPositive: true)
    }
}
