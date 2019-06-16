//
//  SomeModel.swift
//  APIKit
//
//  Created by Jeevan Thandi on 16/06/2019.
//  Copyright © 2019 Airla Tech Ltd. All rights reserved.
//

import Foundation

struct SomeModel: APIModel {

    let string: String
}

struct SomeResponse: APIModel {
    let data: Int
}
