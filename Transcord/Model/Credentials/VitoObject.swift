//
//  VitoObject.swift
//  Transcord
//
//  Created by jinwoong Kim on 12/7/23.
//

import Foundation
import PWApiWorker

struct VitoObject: UserAuthentication {
    var userId: String {
        guard let id = Bundle.main.object(forInfoDictionaryKey: "VITO_CLIENT_ID") as? String else {
            fatalError("‼️ No client id was found.")
        }
        return id
    }
    var userSecret: String {
        guard let secret = Bundle.main.object(forInfoDictionaryKey: "VITO_CLIENT_SECRET") as? String else {
            fatalError("‼️ No client secret was found.")
        }
        return secret
    }
}
