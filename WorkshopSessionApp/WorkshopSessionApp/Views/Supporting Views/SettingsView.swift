//
//  SettingsView.swift
//  SII-BtnsModalsSheets
//
//  Created by Craig Clayton on 9/6/23.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            List {
                Section("Reminders") {
                    Toggle(isOn: .constant(false), label: {
                        Label("Reminders", systemImage: "bell")
                    })
                    DatePicker(selection: .constant(.now), displayedComponents: .hourAndMinute) {
                        Label("Remind at", systemImage: "clock")
                    }
                }
                .disabled(true)
                
                Section("Data") {
                    Button {
                        
                    } label: {
                        Label("Export Data", systemImage: "square.and.arrow.up")
                    }
                    Button {
                        
                    } label: {
                        Label("Import Data", systemImage: "square.and.arrow.down")
                    }
                }
                .disabled(true)
                
                Section("About") {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Version 1.0")
                            .font(.headline)
                        
                        Link("Design To SwiftUI", destination: URL(string: "http://www.designtoswiftui.com")!)
                        
                        Text("© Craig Clayton 2023")
                    }
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Resources")
                            .font(.headline)
                        
                        Link("Design To SwiftUI", destination: URL(string: "http://www.designtoswiftui.com")!)
                    }
                }
                .foregroundStyle(.secondary)
            }
            .navigationTitle("Settings")
            #if !os(macOS)
            .navigationBarTitleDisplayMode(.inline)
            #endif
            .toolbar {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .symbolRenderingMode(.hierarchical)
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}

