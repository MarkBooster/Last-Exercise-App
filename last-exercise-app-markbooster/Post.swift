//
//  Post.swift
//  last-exercise-app-markbooster
//
//  Created by Mark Booster on 29-05-16.
//  Copyright © 2016 Mark Booster. All rights reserved.
//

import Foundation

class Post {
    private var _postDescription: String!
    private var _imageUrl: String?
    private var _likes: Int!
    private var _username: String!
    private var _postKey: String!
    
    var postDescription: String {
        return _postDescription
    }
    
    var imageUrl: String? {
        return _imageUrl
    }
    
    var likes: Int {
        return _likes
    }
    
    var username: String {
        return _username
    }
    
    var postKey: String {
        return _postKey
    }
}

