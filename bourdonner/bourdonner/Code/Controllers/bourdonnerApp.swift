//
//  bourdonnerApp.swift
//  bourdonner
//
//  Created by Erick Martins on 27/09/21.
//

import SwiftUI

@main
struct bourdonnerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            PortfolioView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
