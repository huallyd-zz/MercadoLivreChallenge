//
//  String+Substring.swift
//  MercadoLivreChallenge
//
//  Created by Huallyd Smadi on 09/05/19.
//  Copyright © 2019 Huallyd Smadi. All rights reserved.
//

import UIKit

extension String {
    func substring(fromIndex: Int) -> String {
        return self[min(fromIndex, count) ..< count]
    }

    func substring(toIndex: Int) -> String {
        return self[0 ..< max(0, toIndex)]
    }

    subscript(r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(count, r.lowerBound)),
                                            upper: min(count, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)

        return String(self[start ..< end])
    }

}
