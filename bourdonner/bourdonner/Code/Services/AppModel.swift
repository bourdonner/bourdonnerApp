//
//  AppModel.swift
//  bourdonner
//
//  Created by Erick Martins on 28/09/21.
//

import Foundation

class AppModel: ObservableObject {
    var portfolio: Portfolio = Portfolio(name: "erick martins", role: "Designer & Developer", description: "Designer at Federal University of Paraná\nStudent at Apple Developer Academy\nWWDC 2021 Swift Student Challenge Winner", location: "Curitiba, Brazil",
    skills: [
        Skill(id: UUID().uuidString, skillType: .userInterface, image: "aspectratio"),
              Skill(id: UUID().uuidString, skillType: .swift, image: "swift"),
              Skill(id: UUID().uuidString, skillType: .motionGraphics, image: "wand.and.rays"),
                    Skill(id: UUID().uuidString, skillType: .videoEditing, image: "video.badge.checkmark"),
        Skill(id: UUID().uuidString, skillType: .graphicDesign, image: "highlighter")
    ],
    experiences: [
        Experience(id: UUID().uuidString, companyName: "Federal University of Paraná", role: "Designer", duration: "2020 - current"),
        Experience(id: UUID().uuidString, companyName: "Harmo Consulting Group", role: "Design Internship", duration: "2020"),
        Experience(id: UUID().uuidString, companyName: "Court of Justice of the State of Paraná", role: "Design Internship", duration: "2017-2020"),
        //Experience(id: UUID().uuidString, companyName: "Nome da empresa", role: "Cargo", duration: "Duração"),
    ], projects: [
        Projects(id: UUID().uuidString, projectName: "Royals", type: .userInterface, projectImage: "royalsUI", link: "https://vimeo.com/manage/videos/610081412"),
        Projects(id: UUID().uuidString, projectName: "Don't Panic", type: .userInterface, projectImage: "dontpanicSW", link: "https://vimeo.com/manage/videos/582313315"),
        Projects(id: UUID().uuidString, projectName: "TrenzaloreApp", type:.userInterface, projectImage: "imageUI1", link: "https://vimeo.com/manage/videos/582317881"),
        Projects(id: UUID().uuidString, projectName: "Royals", type: .motionGraphics, projectImage: "royalsUI", link: "https://vimeo.com/manage/videos/610081412"),
        Projects(id: UUID().uuidString, projectName: "bourdonnerApp", type: .swift, projectImage: "imageUI1", link: "https://github.com/bourdonner/bourdonnerApp"),
        Projects(id: UUID().uuidString, projectName: "tecnológica", type: .swift, projectImage: "tecnologicaUI", link: "https://github.com/bourdonner/tecnologica"),
        Projects(id: UUID().uuidString, projectName: "Algures 13: Interestelar", type: .graphicDesign, projectImage: "imageGD1", link: "https://bourdonner.com.br/interestelar"),
        Projects(id: UUID().uuidString, projectName: "ESEJE", type: .videoEditing, projectImage: "imageUI1", link: "https://vimeo.com/manage/videos/384569248")])
}
