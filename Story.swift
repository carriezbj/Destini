//
//  Story.swift
//  Destini
//
//  Created by Bingjie Zhang on 4/5/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Story {
    let storyText : String
    let answer1 : String
    let answer2 : String
    var Story1 : Story?
    var Story2 : Story?
    
    init(storyText: String, answer1: String, answer2: String){
        self.storyText = storyText
        self.answer1 = answer1
        self.answer2 = answer2
        self.Story1 = nil
        self.Story2 = nil
    }
    
    func setStory1(story1 : Story){
        self.Story1 = story1
    }
    
    func setStory2(story2 : Story){
        self.Story2 = story2
    }
    
    func setStroy1Story2(story1: Story, story2: Story){
        self.Story1 = story1
        self.Story2 = story2
    }
    
}
