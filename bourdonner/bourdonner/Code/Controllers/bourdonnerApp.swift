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
    @State private var isSplashScreenActive = true

    var body: some Scene {
        WindowGroup {
            PortfolioView()
                
                .overlay {
                    SplashScreen(isActive: $isSplashScreenActive){
                        Image("splashLogo")
                            .resizable()
                            .frame(width: 120, height: 120, alignment: .center)
                                 } background: {
                                     Rectangle()
                                         .fill(LinearGradient(gradient: Gradient(colors: [Color("yellow"), .accentColor]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                      //   .opacity(0)
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        isSplashScreenActive.toggle()
                    }
                }
                .environment(\.managedObjectContext, persistenceController.container.viewContext)

                
        }
    }
}
