//
//  ContentView.swift
//  bourdonner
//
//  Created by Erick Martins on 27/09/21.
//

import SwiftUI
import CoreData

struct PortfolioView: View {
    //Mark:- variables
    var appModel: AppModel = AppModel()
    //Mark:- views
    var body: some View {
        NavigationView {
            ZStack {
                Color("background")
                    .ignoresSafeArea()
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading) {
                        HeaderView(appModel: appModel)
                        
                        SkillsView(skills: appModel.portfolio.skills, width: UIScreen.main.bounds.width - 48)
                            .padding(.top, 20)
                        
                        ExperiencesView(experiences: appModel.portfolio.experiences)
                            .padding(.top, 20)
                    }.zIndex(1)
                        .padding(24)
                    
                }
                
            }
             .navigationBarHidden(true)
        }
    }
}
struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .colorScheme(.dark)
    }
}
