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
                                            Skill(id: UUID().uuidString, skillType: .animated, image: "figure.walk"),
                                            Skill(id: UUID().uuidString, skillType: .videoEditing, image: "video.and.waveform.fill"),
                                            Skill(id: UUID().uuidString, skillType: .swift, image: "swift"),
                                            Skill(id: UUID().uuidString, skillType: .userInterface, image: "aspectratio.fill"),
                                            Skill(id: UUID().uuidString, skillType: .motionGraphics, image: "wand.and.rays"),
                                            Skill(id: UUID().uuidString, skillType: .graphicDesign, image: "paintbrush.pointed.fill")
                                         ],
                                         experiences: [
                                            Experience(id: UUID().uuidString, companyName: "Federal University of Paraná", role: "Designer", duration: "2020 - current"),
                                            Experience(id: UUID().uuidString, companyName: "Harmo Consulting Group", role: "Design Internship", duration: "2020"),
                                            Experience(id: UUID().uuidString, companyName: "Court of Justice of the State of Paraná", role: "Design Internship", duration: "2017-2020"),
                                            //Experience(id: UUID().uuidString, companyName: "Nome da empresa", role: "Cargo", duration: "Duração"),
                                         ], projects: [
                                            
                                            //User Interface
                                            Projects(id: UUID().uuidString, projectName: "Royals", type: .userInterface, projectImage: "royalsUI", link: "https://vimeo.com/610081412"),
                                            Projects(id: UUID().uuidString, projectName: "Don't Panic", type: .userInterface, projectImage: "dontpanicSW", link: "https://vimeo.com/582313315"),
                                            Projects(id: UUID().uuidString, projectName: "TrenzaloreApp", type:.userInterface, projectImage: "trenzaloreGD", link: "https://vimeo.com/582317881"),
                                            
                                            //Motion Graphics
                                            Projects(id: UUID().uuidString, projectName: "Royals", type: .motionGraphics, projectImage: "royalsUI", link: "https://vimeo.com/610081412"),
                                            Projects(id: UUID().uuidString, projectName: "Envelhecendo", type: .motionGraphics, projectImage: "envelhecendoMG", link: "https://bourdonner.com.br/envelhecendo"),
                                            
                                            
                                            //Swift
                                            Projects(id: UUID().uuidString, projectName: "bourdonnerApp", type: .swift, projectImage: "bourdonnerSW", link: "https://github.com/bourdonner/bourdonnerApp"),
                                            Projects(id: UUID().uuidString, projectName: "tecnológica", type: .swift, projectImage: "tecnologicaUI", link: "https://github.com/bourdonner/tecnologica"),
                                            
                                            //Graphic Design
                                            Projects(id: UUID().uuidString, projectName: "Algures 13: Interestelar", type: .graphicDesign, projectImage: "imageGD1", link: "https://bourdonner.com.br/interestelar"),
                                            Projects(id: UUID().uuidString, projectName: "Whale", type: .graphicDesign, projectImage: "whaleDG", link: "https://bourdonner.com.br/whale"),
                                            Projects(id: UUID().uuidString, projectName: "Trenzalore", type: .graphicDesign, projectImage: "trenzaloreGD", link: "https://bourdonner.com.br/trenzalore-blog-logo"),
                                            
                                            
                                            //Animation
                                            Projects(id: UUID().uuidString, projectName: "Setembro Amarelo", type: .animated, projectImage: "setembroAN", link: "https://vimeo.com/362885417"),
                                            Projects(id: UUID().uuidString, projectName: "Semana Nacional da Conciliação", type: .animated, projectImage: "semanaMG", link: "https://vimeo.com/363911776"),
                                            Projects(id: UUID().uuidString, projectName: "Entrando em Acordo - Podcast", type: .animated, projectImage: "podcastAN", link: "https://bourdonner.com.br/entrando-em-acordo-podcast"),
                                            
                                            //Video Editing
                                            Projects(id: UUID().uuidString, projectName: "Quando você me apareceu", type: .videoEditing, projectImage: "quandoVE", link: "https://vimeo.com/297394784"),
                                            Projects(id: UUID().uuidString, projectName: "Los Caipiras", type: .videoEditing, projectImage: "losCaipirasVE", link: "https://vimeo.com/241995406")])
}
