//
//  SampleModel.swift
//  MockingUtils
//
//  Created by Yaroslav Stanislavyk on 28.12.2024.
//

import Foundation

// sourcery: AutoSample
struct SampleModel {
    let name: String
    let age: Int
    let isReady: Bool
    let details: Details
    let optionalDetails: Details?
    let array: [Int]
    let optionaltest: [String]?
    let detailsArray: [Details]
    let detailsDictionary: [String: Details]
    let optionalDetailsDictionary: [String: Details]?
    let detailsOptionalArray: [Details]?
    let setContainer: Set<Int>
    let url: URL
    let data: Data
    let date: Date
    let id: UUID
    let timeInterval: TimeInterval

    // sourcery: sampleDefaultValue="[.sample(), .sample()]"
    let optionalArrayWithDefaultValue: [Details]?

    // sourcery: AutoSample
    struct Details {
        let count: Int
        let value: Value

        // sourcery: AutoSample
        struct Value {
            let error: Int
        }
    }
}
