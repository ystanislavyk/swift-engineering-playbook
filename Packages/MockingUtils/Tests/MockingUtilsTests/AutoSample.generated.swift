// Generated using Sourcery 2.2.5 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable all

import Foundation

extension SampleModel {
    static func sample(
        name: String = "name",
        age: Int = 0,
        isReady: Bool = false,
        details: SampleModel.Details = .sample(),
        optionalDetails: SampleModel.Details? = nil,
        array: [Int] = [],
        optionaltest: [String]? = nil,
        detailsArray: [SampleModel.Details] = [],
        detailsDictionary: [String: SampleModel.Details] = [:],
        optionalDetailsDictionary: [String: SampleModel.Details]? = nil,
        detailsOptionalArray: [SampleModel.Details]? = nil,
        setContainer: Set<Int> = [],
        url: URL = URL(string: "swift.org")!,
        data: Data = Data(),
        date: Date = Date(),
        id: UUID = UUID(),
        timeInterval: TimeInterval = 0,
        optionalArrayWithDefaultValue: [SampleModel.Details]? = [.sample(), .sample()]
    ) -> Self {
        Self(
            name: name,
            age: age,
            isReady: isReady,
            details: details,
            optionalDetails: optionalDetails,
            array: array,
            optionaltest: optionaltest,
            detailsArray: detailsArray,
            detailsDictionary: detailsDictionary,
            optionalDetailsDictionary: optionalDetailsDictionary,
            detailsOptionalArray: detailsOptionalArray,
            setContainer: setContainer,
            url: url,
            data: data,
            date: date,
            id: id,
            timeInterval: timeInterval,
            optionalArrayWithDefaultValue: optionalArrayWithDefaultValue
        )
    }
}

extension SampleModel.Details {
    static func sample(
        count: Int = 0,
        value: SampleModel.Details.Value = .sample()
    ) -> Self {
        Self(
            count: count,
            value: value
        )
    }
}

extension SampleModel.Details.Value {
    static func sample(
        error: Int = 0
    ) -> Self {
        Self(
            error: error
        )
    }
}

