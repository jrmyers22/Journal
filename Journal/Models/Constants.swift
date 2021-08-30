//
//  Constants.swift
//  Journal
//
//  Created by Jacob Myers on 6/8/21.
//

import Foundation
import UIKit

enum Constants {
    enum General {
        public static let DEFAULT_TEXTFIELD_TEXT = "What's up?"
        public static let NUM_POS_ITEMS_TO_START = 3
        public static let NUM_NEG_ITEMS_TO_START = 1
    }
    
    enum Views {
        public static let EVENTROWEDIT_TEXTFIELD_WIDTH = UIScreen.main.bounds.width * 0.75
        public static let EVENTROWEDIT_TEXTFIELD_PADDING = UIScreen.main.bounds.width * 0.1
        public static let EVENTROWEDIT_CIRCLE_WIDTH = UIScreen.main.bounds.width * 0.03
        public static let EVENTROWEDIT_CIRCLE_HEIGHT = UIScreen.main.bounds.width * 0.03
        public static let EVENTROWEDIT_TEXT_WIDTH = UIScreen.main.bounds.width * 0.75
        
        public static let EVENTROWEDIT_LCCIRCLE_WIDTH = UIScreen.main.bounds.width * 0.1
        public static let EVENTROWEDIT_LCCIRCLE_HEIGHT = UIScreen.main.bounds.width * 0.1
        
        public static let DAYVIEW_TEXT_WIDTH = UIScreen.main.bounds.width
        public static let DAYVIEW_TEXT_HEIGHT = UIScreen.main.bounds.height / 8
        public static let DAYVIEW_SCROLLVIEW_PADDING = UIScreen.main.bounds.width * 0.05
        
        public static let DAYSUMMARYRV_OUTLINE_WIDTH = UIScreen.main.bounds.width * 0.95
        public static let DAYSUMMARYRV_OUTLINE_HEIGHT = UIScreen.main.bounds.height / 8
        
        public static let TODAYEDIT_TEXT_WIDTH = UIScreen.main.bounds.width
        public static let TODAYEDIT_SCROLLVIEW_WIDTH = UIScreen.main.bounds.width
    }
}
