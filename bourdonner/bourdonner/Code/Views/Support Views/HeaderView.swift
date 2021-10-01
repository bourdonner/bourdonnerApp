//
//  HeaderView.swift
//  bourdonner
//
//  Created by Erick Martins on 28/09/21.
//

import SwiftUI

struct HeaderView: View {
    //MARK:- variables
    var appModel: AppModel
    //MARK:- views
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("self")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .mask(MaskView())
                    .padding(5)
                    .background(
                        Circle()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color("yellow"), .accentColor]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        //    .foregroundColor(.accentColor)
                            .opacity(1)
                          //  .shadow(radius: 5)
                    )
                Spacer()
            }
            Text(appModel.portfolio.name)
                .font(Omnes.bold.font(size: 27))
                .padding(.top, 8)
            
            Text(appModel.portfolio.role)
                .font(Omnes.light.font(size: 17))
                .multilineTextAlignment(.leading)
            //                .padding(.top, -15)
            
            HStack{
                Image(systemName: "location.fill")
                    .font(.system(size: 16, weight: .semibold))
                    
                
                Text(appModel.portfolio.location)
                    .font(Omnes.light.font(size: 17))
                    
                
                }.padding(.top, 5)
   
            Text(appModel.portfolio.description)
                .font(Omnes.light.font(size: 16))
                .opacity(0.7)
                .padding(.top, 5)
                .lineSpacing(8)
            
            HStack {
                Link(destination: URL(string: "https://bourdonner.com.br/projects")!) {
                    Image(systemName: "globe")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.accentColor)
                    
                Link("bourdonner.com.br", destination: URL(string: "https://bourdonner.com.br/projects")!)
                        .font(Omnes.bold.font(size: 17))
                        .foregroundColor(.accentColor)
                }
                    
            }.padding(.top, 5)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel: AppModel())
            .padding(24)
    }
}

struct MaskView: View {
    var body: some View {
        Image(systemName: "circle.fill")
            .font(.system(size: 100))
    }
}
