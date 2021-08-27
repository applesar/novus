//
//  Global.swift
//  novus
//
//  Created by admin on 2021-08-28.
//

import Foundation

public var language="PH"
public var test="test"
public var chain=[Int]()
public var anonymous=0

struct Response: Decodable {
    let id: Int
    let from_id: Int
    let keyword: String
    let keyword2: String
    let response: String
    let response2: String
    let response3: String
    let comment: String
}


