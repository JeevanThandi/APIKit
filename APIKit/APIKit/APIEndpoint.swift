//
//  APIEndpoint.swift
//  APIKit
//
//  Created by Jeevan Thandi on 16/06/2019.
//  Copyright © 2019 Airla Tech Ltd. All rights reserved.
//

import Foundation

public enum APIEndpoint {
    case some

    case custom(path: String, method: HttpMethod)

    var path: String {
        switch self {
        case .custom(let path, _):
            return path
        default:
            return "/\(version)\(relativePath)"
        }
    }

    private var relativePath: String {
        switch self {
        case .some:
            return ""
        case .custom(let path, _):
            return path
        }
    }

    var method: HttpMethod {
        switch self {
        case .some: return .post
        case .custom(_, let method): return method
        }
    }

    private var version: String {
        switch self {
        default: return "v1"
        }
    }
}
