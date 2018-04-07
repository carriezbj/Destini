//
//  StoryBoard.swift
//  Destini
//
//  Created by Bingjie Zhang on 4/5/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class MyStoryBoard{
    var head : Story
    init(){
        let story1 = Story(storyText: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat and soulless eyes opens the passenger door for you and says: \"Need a ride, boy?\".", answer1: "I\'ll hop in. Thanks for the help!", answer2: "Well, I don\'t have many options. Better ask him if he\'s a murderer.")
        let story2 = Story(storyText: "He nods slowly, unphased by the question.", answer1: "At least he\'s honest. I\'ll climb in.", answer2: "Wait, I know how to change a tire.")
        
        let story3 = Story(storyText: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glove box. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.", answer1: "I love Elton John! Hand him the cassette tape.", answer2: "It’s him or me. Take the knife and stab him.")
        
        let story4 = Story(storyText: "What? Such a cop out! Did you know accidental traffic accidents are the second leading cause of accidental death for most adult age groups?", answer1: "", answer2: "")
        
        let story5 = Story(storyText: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.", answer1: "", answer2: "")
        
        let story6 = Story(storyText: "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply:\"Try the pier.\"", answer1: "", answer2: "")
        
        story1.setStroy1Story2(story1: story3, story2: story2)
        story3.setStroy1Story2(story1: story6, story2: story5)
        story2.setStroy1Story2(story1: story3, story2: story4)
        self.head = story1
    }
}
