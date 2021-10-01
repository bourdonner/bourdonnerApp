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
        Skill(id: UUID().uuidString, skillName: "User Interface", image: "aspectratio"),
        Skill(id: UUID().uuidString, skillName: "Swift", image: "swift"),
        Skill(id: UUID().uuidString, skillName: "Motion Graphics", image: "wand.and.rays"),
        Skill(id: UUID().uuidString, skillName: "Video Editing", image: "video.badge.checkmark"),
        Skill(id: UUID().uuidString, skillName: "Graphic Design", image: "highlighter")
    ],
    experiences: [
        Experience(id: UUID().uuidString, companyName: "Federal University of Paraná", role: "Designer", duration: "2020 - current"),
        Experience(id: UUID().uuidString, companyName: "Harmo Consulting Group", role: "Design Internship", duration: "2020"),
        Experience(id: UUID().uuidString, companyName: "Court of Justice of the State of Paraná", role: "Design Internship", duration: "2017-2020"),
        //Experience(id: UUID().uuidString, companyName: "Nome da empresa", role: "Cargo", duration: "Duração"),
    ], projects: [
        Projects(id: UUID().uuidString, projectName: "Nome do Projeto", type: "Tipo do Projeto", projectImage: "iphone", link: "https://www.bourdonner.com.br"),
        Projects(id: UUID().uuidString, projectName: "Nome do Projeto", type: "Tipo do Projeto", projectImage: "iphone", link: "https://www.bourdonner.com.br"),
        Projects(id: UUID().uuidString, projectName: "Nome do Projeto", type: "Tipo do Projeto", projectImage: "iphone", link: "https://www.bourdonner.com.br"),
        Projects(id: UUID().uuidString, projectName: "Nome do Projeto", type: "Tipo do Projeto", projectImage: "iphone", link: "https://www.bourdonner.com.br")])
}
