//
//  SampleSendableProtocol.swift
//  MockingUtils
//
//  Created by Yaroslav Stanislavyk on 28.12.2024.
//

// sourcery: AutoMockable
protocol SampleSendableProtocol: AnyObject, Sendable {
    var digit: Int { get }
    var string: String { get set }

    func commonVoidFunc()
    func commonVoidFuncWithArgument(value: Int)
    func commonVoidFuncWithArguments(value: Int, name: String, age: Int)
    func commonOverloadedFunc()
    // sourcery: mockFuncName=commonOverloadedFuncWithValue
    func commonOverloadedFunc(value: Int)
    func commonThrowingVoidFunc() throws
    func commonAsyncThrowingVoidFunc() async throws
    func commonFuncWithReturnMethod() -> Int
    func commonThrowingFuncWithReturnMethod() throws -> Int
    func commonAsyncThrowingFuncWithReturnMethod() async throws -> Int
    func commonFuncWithClosure(completion: @escaping () -> Void)
    func commonFuncWithMultipleClosures(action: @escaping () -> Void, completion: @escaping () -> Void)
    func commonFuncReturningClosure() -> (() -> Void)
}
