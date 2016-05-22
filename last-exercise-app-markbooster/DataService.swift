//
//  DataService.swift
//  last-exercise-app-markbooster
//
//  Created by Mark Booster on 22-05-16.
//  Copyright © 2016 Mark Booster. All rights reserved.
//

import Foundation
import Firebase

class DataService {
    static let ds = DataService()
    
    private var _REF_BASE = Firebase(url: "https://last-exercise-app.firebaseio.com")
    
    var REF_BASE: Firebase {
        return _REF_BASE
    }

}