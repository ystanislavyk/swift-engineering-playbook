//
//  AutoMockableTests.swift
//  MockingUtils
//
//  Created by Yaroslav Stanislavyk on 28.12.2024.
//

import Testing

@testable import MockingUtils

@Suite("AutoMockable tests") struct AutoMockableTests {
    @Test func whenSampleMockInitialized_ThenTestPassed() throws {
        let sut = SampleMock()
    }

    @Test func whenSampleSendableMockInitialized_ThenTestPassed() throws {
        let sut = SampleSendableMock()
    }
}
