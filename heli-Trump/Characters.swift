//
//  Characters.swift
//  heli-Trump
//
//  Created by Charlie Morris on 22/11/2015.
//  Copyright © 2015 chtmorris. All rights reserved.
//

import Foundation
import UIKit

enum Characters:Int {
    case Trump = 0, Ben, Hilary
    
    var title:String {
        switch self {
        case .Trump:
            return "Trump"
        case .Ben:
            return "Ben"
        case .Hilary:
            return "Hilary"
        }
    }
    
    var sideOnPic:String {
        switch self {
        case .Trump:
            return "DonSideOn"
        case .Ben:
            return "BenSideOn"
        case .Hilary:
            return "HilSideOn"
        }
    }
    
    var background:UIImage {
        switch self {
        case .Trump:
            return UIImage(named: "TrumpBackground")!
        case .Ben:
            return UIImage(named: "BenBackground")!
        case .Hilary:
            return UIImage(named: "HillaryBackground")!
        }
    }
    
    var obstacle:UIImage {
        switch self {
        case .Trump:
            return UIImage(named: "TrumpObstacle")!
        case .Ben:
            return UIImage(named: "BenObstacle")!
        case .Hilary:
            return UIImage(named: "HillaryObstacle")!
        }
    }
    
    var quote:[String] {
        switch self {
        case .Trump:
            return [
                "\"You know, it really doesn’t matter what the media write as long as you’ve got a young and beautiful piece of ass.\"",
                "\"The concept of global warming was created by and for the Chinese in order to make U.S. manufacturing non-competitive.\"",
                "\"On exporting goods to China: 'Listen you m-----f------, we're going to tax you 25 percent!'\"",
                "\"When was the last time anybody saw us beating, let's say, China in a trade deal? They kill us. I beat China all the time. All the time.\"",
                "\"The U.S. will invite El Chapo, the Mexican drug lord who just escaped prison, to become a U.S. citizen because our 'leaders' can't say no!\"",
                "\"I will build a great wall — and nobody builds walls better than me, believe me —and I’ll build them very inexpensively. I will build a great, great wall on our southern border, and I will make Mexico pay for that wall. Mark my words.\"",
                "\"When Mexico sends its people, they're not sending the best... They’re bringing drugs. They’re bringing crime. They’re rapists. ... And some, I assume, are good people.\"",
                "\"The wall will go up and Mexico will start behaving.\"",
                "\"Our great African American President hasn't exactly had a positive impact on the thugs who are so happily and openly destroying Baltimore!\"",
                "\"The only kind of people I want counting my money are little short guys that wear yamakas every day.\"",
                "\"If I were running 'The View,' I'd fire Rosie [O'Donnell]. I mean, I'd look her right in that fat, ugly face of hers, I'd say, 'Rosie, you're fired.\"",
                "\"Rosie O’Donnell’s disgusting both inside and out. You take a look at her, she’s a slob. She talks like a truck driver, she doesn’t have her facts, she’ll say anything that comes to her mind.\"",
                "\".@ariannahuff is unattractive both inside and out. I fully understand why her former husband left her for a man- he made a good decision.\"",
                "\"Hillary Clinton was the worst Secretary of State in the history of the United States. There's never been a Secretary of State so bad as Hillary. The world blew up around us. We lost everything, including all relationships.\"",
                "\"If you can’t get rich dealing with politicians, there’s something wrong with you.\"",
                "\"We build a school, we build a road, they blow up the school, we build another school, we build another road they blow them up, we build again, in the meantime we can't get a f------ school in Brooklyn.\"",
                "\"A certificate of live birth is not the same thing by any stretch of the imagination as a birth certificate.\"",
                "\"Free trade is terrible. Free trade can be wonderful if you have smart people. But we have stupid people [in office].\"",
                "\"He's not a war hero. He's a war hero because he was captured. I like people that weren't captured, OK, I hate to tell you.\"",
                "\"I saw a report yesterday. There’s so much oil, all over the world, they don’t know where to dump it. And Saudi Arabia says, ‘Oh, there’s too much oil.’ Do you think they’re our friends? They’re not our friends.\"",
                "\"All the women on The Apprentice flirted with me — consciously or unconsciously. That’s to be expected.\"",
                "\"One of the key problems today is that politics is such a disgrace. Good people don’t go into government.\""
            ]
        case .Ben:
            return ["\"A lot of people who go into prison go into prison straight and when they come out, they're gay. So, did something happen while they were in there?\"",
                "\"You know Obamacare is really, I think, the worst thing that has happened in this nation since slavery.\"",
                "\"I think most people, when they finish that course [AP US history curriculum], they'd be ready to go sign up for IS­IS.\"",
                "\"I think the likelihood of Hitler being able to accomplish his goals would have been greatly diminished if the people had been armed.\"",
                "\"If you're gonna have rules for war, you should just have a rule that says no war. Other than that, we have to win.\"",
                "\"There may be a war on what's inside of women, but there is no war on women in this country.\"",
                "\"I would not advocate that we put a Muslim in charge of this nation. I absolutely would not agree with that.\"",
                "\"I mean, [our so­ci­ety is] very much like Nazi Ger­many. And I know you're not sup­posed to say 'Nazi Ger­many,' but I don't care about polit­ic­al cor­rect­ness.\"",
                "\"The No. 1 cause of death for black people is abortion.\"",
                "\"Selfies are dangerous — to animals, sports spectators, artwork and the rest of us.\""
            ]
        case .Hilary:
            return ["\"In the Bible it says they asked Jesus how many times you should forgive, and he said 70 times 7. Well, I want you all to know that I'm keeping a chart.\"",
                "\"If I want to knock a story off the front page, I just change my hairstyle.\"",
                "\"I'm not going to have some reporters pawing through our papers. We are the president.\"",
                "\"In my White House, we will know who wears the pantsuits.\"",
                "\"It did take a Clinton to clean up after the first Bush, and I think it might take another one to clean up after the second Bush.\"",
                "\"Good afternoon ladies and gentlemen, and welcome aboard the maiden flight of Hill-Force One.\"",
                "\"I'm undaunted in my quest to amuse myself by constantly changing my hair.\"",
                "\"I have to confess that it's crossed my mind that you could not be a Republican and a Christian.\"",
                "\"We have a lot of kids who don't know what work means. They think work is a four-letter word.\"",
                "\"I have said that I'm not running and I'm having a great time being pres — being a first-term senator.\"",
                "\"Don’t let anybody tell you that it’s corporations and businesses that create jobs.\""
            ]
        }
    }
    
//    var image {
//        switch self {
//        case .Trump:
//            return TrumpCartoonView
//        case .Ben:
//            return BenHeliView
//        case .Hilary:
//            return HeliHillyView
//        }
//    }
    
}
