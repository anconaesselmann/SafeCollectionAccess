//  Created by Axel Ancona Esselmann on 9/12/18.
//  Copyright © 2019 Axel Ancona Esselmann. All rights reserved.
//

import Foundation

//https://ericasadun.com/2015/06/01/swift-safe-array-indexing-my-favorite-thing-of-the-new-week/
public extension Collection {
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

public extension Array {
    subscript <T>(key: T) -> Element? where T: RawRepresentable, T.RawValue == Int  {
        guard key.rawValue < self.count else {
            return nil
        }
        return self[key.rawValue]
    }
}

public extension Dictionary {
    subscript <T>(key dictinaryKey: T) -> Value? where T: RawRepresentable, T.RawValue == Key {
        return self[dictinaryKey.rawValue]
    }
}
