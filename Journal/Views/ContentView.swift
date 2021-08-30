//
//  ContentView.swift
//  Journal
//
//  Created by Jacob Myers on 6/8/21.
//

import SwiftUI

struct ContentView: View {
    // State vars
    @State private var totalDaysAlertIsShowing = false
    @State private var positiveItems = Constants.General.NUM_POS_ITEMS_TO_START
    @State private var negativeItems = Constants.General.NUM_NEG_ITEMS_TO_START
    
    var body: some View {
        TabView {
            // "Today" tab
            TodayEditView()
            .tabItem {
                Image(systemName: "sun.min")
                Text("Today")
            }
            
            // "All" tab
            AllDaysListView()
            .tabItem {
                Image(systemName: "books.vertical")
                Text("All")
            }
        }
        .accentColor(Color("JournalCoverColor"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
