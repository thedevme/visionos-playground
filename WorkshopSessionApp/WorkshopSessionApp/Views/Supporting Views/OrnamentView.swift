//
//  OrnamentView.swift
//  SII-BtnsModalsSheets
//
//  Created by Craig Clayton on 9/6/23.
//

import SwiftUI
import Foundation

struct OrnamentView: View {
    var body: some View {
        List {
            Text("Item 1")
            Text("Item 2")
            Text("Item 3")
            Text("Item 4")
            Text("Item 5")
            Text("Item 6")
        }
        .ornament(attachmentAnchor: .scene(.top), contentAlignment: .bottom) { smallContent }
        .ornament(attachmentAnchor: .scene(.topTrailing), contentAlignment: .leading) { largeContent }
    }
    
    var smallContent: some View {
        Text("Ornament Content")
            .padding()
            .glassBackgroundEffect(
                in: RoundedRectangle(
                    cornerRadius: 32,
                    style: .continuous
                )
            )
    }
    
    var largeContent: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                .foregroundStyle(.secondary)
        }
        .frame(width: 200)
        .padding()
        .background(Color.blue.opacity(0.4))
        .glassBackgroundEffect(
          in: RoundedRectangle(
              cornerRadius: 32,
              style: .continuous
          )
        )
    }
}

#Preview {
    OrnamentView()
}
