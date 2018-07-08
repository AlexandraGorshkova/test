//
//  Event.swift
//  Test
//
//  Created by Alexandra Gorshkova on 08.07.2018.
//  Copyright © 2018 Alexandra Gorshkova. All rights reserved.
//

import Foundation
class Event {
var name: String? = nil
var start: Int? = nil
var finish: Int? = nil
    
    func isEmpty() -> Bool {
        if name == nil || start == nil || finish == nil {
            return true
        } else {
            return false
        }
    }
}
