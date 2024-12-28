// Generated using Sourcery 2.2.5 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable all

import Foundation
import MockingUtils


final class SampleMock: SampleProtocol {
    @MockedProperty var digit: Int
    @MockedProperty var string: String


    private(set) lazy var commonVoidFuncMockedMethod = commonVoidFuncMockedMethodInteractor.mockedMethod
    private let commonVoidFuncMockedMethodInteractor = MockedMethodInteractor<(), ()>()
    func commonVoidFunc() {
        commonVoidFuncMockedMethodInteractor.call(with: ())
    }

    private(set) lazy var commonVoidFuncWithArgumentMockedMethod = commonVoidFuncWithArgumentMockedMethodInteractor.mockedMethod
    private let commonVoidFuncWithArgumentMockedMethodInteractor = MockedMethodInteractor<Int, ()>()
    func commonVoidFuncWithArgument(value: Int) {
        commonVoidFuncWithArgumentMockedMethodInteractor.call(with: (value))
    }

    typealias CommonVoidFuncWithArgumentsInput = (
        value: Int,
        name: String,
        age: Int
    )
    private(set) lazy var commonVoidFuncWithArgumentsMockedMethod = commonVoidFuncWithArgumentsMockedMethodInteractor.mockedMethod
    private let commonVoidFuncWithArgumentsMockedMethodInteractor = MockedMethodInteractor<CommonVoidFuncWithArgumentsInput, ()>()
    func commonVoidFuncWithArguments(value: Int, name: String, age: Int) {
        commonVoidFuncWithArgumentsMockedMethodInteractor.call(with: (value, name, age))
    }

    private(set) lazy var commonOverloadedFuncMockedMethod = commonOverloadedFuncMockedMethodInteractor.mockedMethod
    private let commonOverloadedFuncMockedMethodInteractor = MockedMethodInteractor<(), ()>()
    func commonOverloadedFunc() {
        commonOverloadedFuncMockedMethodInteractor.call(with: ())
    }

    private(set) lazy var commonOverloadedFuncWithValueMockedMethod = commonOverloadedFuncWithValueMockedMethodInteractor.mockedMethod
    private let commonOverloadedFuncWithValueMockedMethodInteractor = MockedMethodInteractor<Int, ()>()
    func commonOverloadedFunc(value: Int) {
        commonOverloadedFuncWithValueMockedMethodInteractor.call(with: (value))
    }

    private(set) lazy var commonThrowingVoidFuncMockedMethod = commonThrowingVoidFuncMockedMethodInteractor.mockedMethod
    private let commonThrowingVoidFuncMockedMethodInteractor = MockedMethodInteractor<(), ()>()
    func commonThrowingVoidFunc() throws {
        try commonThrowingVoidFuncMockedMethodInteractor.callThrowable(with: ())
    }

    private(set) lazy var commonAsyncThrowingVoidFuncMockedMethod = commonAsyncThrowingVoidFuncMockedMethodInteractor.mockedMethod
    private let commonAsyncThrowingVoidFuncMockedMethodInteractor = MockedMethodInteractor<(), ()>()
    func commonAsyncThrowingVoidFunc() async throws {
        try commonAsyncThrowingVoidFuncMockedMethodInteractor.callThrowable(with: ())
    }

    private(set) lazy var commonFuncWithReturnMethodMockedMethod = commonFuncWithReturnMethodMockedMethodInteractor.mockedMethod
    private let commonFuncWithReturnMethodMockedMethodInteractor = MockedMethodInteractor<(), Int>()
    func commonFuncWithReturnMethod() -> Int {
        commonFuncWithReturnMethodMockedMethodInteractor.callAndReturn(())
    }

    private(set) lazy var commonThrowingFuncWithReturnMethodMockedMethod = commonThrowingFuncWithReturnMethodMockedMethodInteractor.mockedMethod
    private let commonThrowingFuncWithReturnMethodMockedMethodInteractor = MockedMethodInteractor<(), Int>()
    func commonThrowingFuncWithReturnMethod() throws -> Int {
        try commonThrowingFuncWithReturnMethodMockedMethodInteractor.callAndReturnThrowable(())
    }

    private(set) lazy var commonAsyncThrowingFuncWithReturnMethodMockedMethod = commonAsyncThrowingFuncWithReturnMethodMockedMethodInteractor.mockedMethod
    private let commonAsyncThrowingFuncWithReturnMethodMockedMethodInteractor = MockedMethodInteractor<(), Int>()
    func commonAsyncThrowingFuncWithReturnMethod() async throws -> Int {
        try commonAsyncThrowingFuncWithReturnMethodMockedMethodInteractor.callAndReturnThrowable(())
    }

    private(set) lazy var commonFuncWithClosureMockedMethod = commonFuncWithClosureMockedMethodInteractor.mockedMethod
    private let commonFuncWithClosureMockedMethodInteractor = MockedMethodInteractor<() -> Void, ()>()
    func commonFuncWithClosure(completion: @escaping () -> Void) {
        commonFuncWithClosureMockedMethodInteractor.call(with: (completion))
    }

    typealias CommonFuncWithMultipleClosuresInput = (
        action: () -> Void,
        completion: () -> Void
    )
    private(set) lazy var commonFuncWithMultipleClosuresMockedMethod = commonFuncWithMultipleClosuresMockedMethodInteractor.mockedMethod
    private let commonFuncWithMultipleClosuresMockedMethodInteractor = MockedMethodInteractor<CommonFuncWithMultipleClosuresInput, ()>()
    func commonFuncWithMultipleClosures(action: @escaping () -> Void, completion: @escaping () -> Void) {
        commonFuncWithMultipleClosuresMockedMethodInteractor.call(with: (action, completion))
    }

    private(set) lazy var commonFuncReturningClosureMockedMethod = commonFuncReturningClosureMockedMethodInteractor.mockedMethod
    private let commonFuncReturningClosureMockedMethodInteractor = MockedMethodInteractor<(), () -> Void>()
    func commonFuncReturningClosure() -> () -> Void {
        commonFuncReturningClosureMockedMethodInteractor.callAndReturn(())
    }
}

final class SampleSendableMock: SampleSendableProtocol, @unchecked Sendable {
    @MockedProperty var digit: Int
    @MockedProperty var string: String


    private(set) lazy var commonVoidFuncMockedMethod = commonVoidFuncMockedMethodInteractor.mockedMethod
    private let commonVoidFuncMockedMethodInteractor = MockedMethodInteractor<(), ()>()
    func commonVoidFunc() {
        commonVoidFuncMockedMethodInteractor.call(with: ())
    }

    private(set) lazy var commonVoidFuncWithArgumentMockedMethod = commonVoidFuncWithArgumentMockedMethodInteractor.mockedMethod
    private let commonVoidFuncWithArgumentMockedMethodInteractor = MockedMethodInteractor<Int, ()>()
    func commonVoidFuncWithArgument(value: Int) {
        commonVoidFuncWithArgumentMockedMethodInteractor.call(with: (value))
    }

    typealias CommonVoidFuncWithArgumentsInput = (
        value: Int,
        name: String,
        age: Int
    )
    private(set) lazy var commonVoidFuncWithArgumentsMockedMethod = commonVoidFuncWithArgumentsMockedMethodInteractor.mockedMethod
    private let commonVoidFuncWithArgumentsMockedMethodInteractor = MockedMethodInteractor<CommonVoidFuncWithArgumentsInput, ()>()
    func commonVoidFuncWithArguments(value: Int, name: String, age: Int) {
        commonVoidFuncWithArgumentsMockedMethodInteractor.call(with: (value, name, age))
    }

    private(set) lazy var commonOverloadedFuncMockedMethod = commonOverloadedFuncMockedMethodInteractor.mockedMethod
    private let commonOverloadedFuncMockedMethodInteractor = MockedMethodInteractor<(), ()>()
    func commonOverloadedFunc() {
        commonOverloadedFuncMockedMethodInteractor.call(with: ())
    }

    private(set) lazy var commonOverloadedFuncWithValueMockedMethod = commonOverloadedFuncWithValueMockedMethodInteractor.mockedMethod
    private let commonOverloadedFuncWithValueMockedMethodInteractor = MockedMethodInteractor<Int, ()>()
    func commonOverloadedFunc(value: Int) {
        commonOverloadedFuncWithValueMockedMethodInteractor.call(with: (value))
    }

    private(set) lazy var commonThrowingVoidFuncMockedMethod = commonThrowingVoidFuncMockedMethodInteractor.mockedMethod
    private let commonThrowingVoidFuncMockedMethodInteractor = MockedMethodInteractor<(), ()>()
    func commonThrowingVoidFunc() throws {
        try commonThrowingVoidFuncMockedMethodInteractor.callThrowable(with: ())
    }

    private(set) lazy var commonAsyncThrowingVoidFuncMockedMethod = commonAsyncThrowingVoidFuncMockedMethodInteractor.mockedMethod
    private let commonAsyncThrowingVoidFuncMockedMethodInteractor = MockedMethodInteractor<(), ()>()
    func commonAsyncThrowingVoidFunc() async throws {
        try commonAsyncThrowingVoidFuncMockedMethodInteractor.callThrowable(with: ())
    }

    private(set) lazy var commonFuncWithReturnMethodMockedMethod = commonFuncWithReturnMethodMockedMethodInteractor.mockedMethod
    private let commonFuncWithReturnMethodMockedMethodInteractor = MockedMethodInteractor<(), Int>()
    func commonFuncWithReturnMethod() -> Int {
        commonFuncWithReturnMethodMockedMethodInteractor.callAndReturn(())
    }

    private(set) lazy var commonThrowingFuncWithReturnMethodMockedMethod = commonThrowingFuncWithReturnMethodMockedMethodInteractor.mockedMethod
    private let commonThrowingFuncWithReturnMethodMockedMethodInteractor = MockedMethodInteractor<(), Int>()
    func commonThrowingFuncWithReturnMethod() throws -> Int {
        try commonThrowingFuncWithReturnMethodMockedMethodInteractor.callAndReturnThrowable(())
    }

    private(set) lazy var commonAsyncThrowingFuncWithReturnMethodMockedMethod = commonAsyncThrowingFuncWithReturnMethodMockedMethodInteractor.mockedMethod
    private let commonAsyncThrowingFuncWithReturnMethodMockedMethodInteractor = MockedMethodInteractor<(), Int>()
    func commonAsyncThrowingFuncWithReturnMethod() async throws -> Int {
        try commonAsyncThrowingFuncWithReturnMethodMockedMethodInteractor.callAndReturnThrowable(())
    }

    private(set) lazy var commonFuncWithClosureMockedMethod = commonFuncWithClosureMockedMethodInteractor.mockedMethod
    private let commonFuncWithClosureMockedMethodInteractor = MockedMethodInteractor<() -> Void, ()>()
    func commonFuncWithClosure(completion: @escaping () -> Void) {
        commonFuncWithClosureMockedMethodInteractor.call(with: (completion))
    }

    typealias CommonFuncWithMultipleClosuresInput = (
        action: () -> Void,
        completion: () -> Void
    )
    private(set) lazy var commonFuncWithMultipleClosuresMockedMethod = commonFuncWithMultipleClosuresMockedMethodInteractor.mockedMethod
    private let commonFuncWithMultipleClosuresMockedMethodInteractor = MockedMethodInteractor<CommonFuncWithMultipleClosuresInput, ()>()
    func commonFuncWithMultipleClosures(action: @escaping () -> Void, completion: @escaping () -> Void) {
        commonFuncWithMultipleClosuresMockedMethodInteractor.call(with: (action, completion))
    }

    private(set) lazy var commonFuncReturningClosureMockedMethod = commonFuncReturningClosureMockedMethodInteractor.mockedMethod
    private let commonFuncReturningClosureMockedMethodInteractor = MockedMethodInteractor<(), () -> Void>()
    func commonFuncReturningClosure() -> () -> Void {
        commonFuncReturningClosureMockedMethodInteractor.callAndReturn(())
    }
}
