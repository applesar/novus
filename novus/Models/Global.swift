//
//  Global.swift
//  novus
//
//  Created by admin on 2021-08-28.
//

import Foundation

public var lang: Languages = .ph
public var test="test"
public var chain=[Int]()
public var anonymous=0
public enum Languages: Int {
    case ph = 1
    case en = 2
    case gy = 3
}


struct Response: Decodable {
    let id: String?
    let from_id: String?
    let keyword: String?
    let keyword2: String?
    let response: String?
    let response2: String?
    let response3: String?
    let comment: String?
}

struct Responses: Decodable {
    let list: [Response]
}
