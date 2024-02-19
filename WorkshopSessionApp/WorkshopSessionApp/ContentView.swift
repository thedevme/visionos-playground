//
//  ContentView.swift
//  WorkshopSessionApp
//
//  Created by Craig Clayton on 9/6/23.
//

import SwiftUI
import RealityKit

struct ContentView: View {
    @State var selectedPage: Page?
    
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(Page.allCases) { page in
                    Button(action: { selectedPage = page }) {
                        Label {
                            Text(page.title)
                        } icon: {
                            Image(systemName: page.symbolName)
                                .symbolVariant(.circle.fill)
                        }
                    }
                    .buttonStyle(.plain)
                }
            }
            .navigationTitle("Sessions")
            .onAppear {
                selectedPage = .sessionOne
            }
        } detail: {
            if let selectedPage {
                selectedPage.content
                    .navigationTitle(selectedPage.title)
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
