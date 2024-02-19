//
//  Page.swift
//  SII-BtnsModalsSheets
//
//  Created by Craig Clayton on 9/6/23.
//

import Foundation
import SwiftUI

enum Page: String, CaseIterable, Identifiable {
    case sessionOne
    case sessionTwo
    case sessionThree
    
    var id: String { self.rawValue }
    
    var title: String {
        switch self {
        case .sessionOne:
            "Session One"
        case .sessionTwo:
            "Session Two"
        case .sessionThree:
            "Session Three"
        }
    }
    
    var symbolName: String {
        switch self {
        case .sessionOne:
            "01"
        case .sessionTwo:
            "02"
        case .sessionThree:
            "03"
        }
    }
    
    @ViewBuilder
    var content: some View {
        switch self {
        case .sessionOne:
            SessionOne()
        case .sessionTwo:
            SessionTwo()
        case .sessionThree:
            SessionThree()
        }
    }
}
