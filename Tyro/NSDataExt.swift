//
//  NSDataExt.swift
//  Tyro
//
//  Created by Matthew Purland on 11/17/15.
//  Copyright © 2015 TypeLift. All rights reserved.
//

import Foundation
import Swiftz

extension NSData {
    internal func toUTF8String() -> String? {
        return String(data : self, encoding : NSUTF8StringEncoding)
    }
}

extension String {
    public var toJSONEither : Either<JSONError, JSONValue>? {
        return JSONValue.decodeEither <^> self
    }
    
    public var toJSON : JSONValue? {
        return toJSONEither?.right
    }
}
