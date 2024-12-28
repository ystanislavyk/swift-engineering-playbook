//
//  MockedMethod.swift
//  MockingUtils
//
//  Created by Yaroslav Stanislavyk on 28.12.2024.
//

/// A generic wrapper for a mocked method, providing easy access to method state
/// and allowing you to specify return values or errors for testing purposes.
///
/// `MockedMethod` offers properties such as `input`, `callsCount`, `called`, and
/// `calledOnce` to make it easier to assert how many times a method was invoked,
/// as well as `returns(_:)` and `throws(_:)` to simulate desired outcomes.
public final class MockedMethod<Input, Output> {
    private let interactor: MockedMethodInteractor<Input, Output>

    init(interactor: MockedMethodInteractor<Input, Output>) {
        self.interactor = interactor
    }

    public convenience init() {
        self.init(interactor: MockedMethodInteractor<Input, Output>())
    }

    /// The most recent input passed to this mocked method.
    ///
    /// - Warning: Accessing this property when there have been no calls results in a runtime error.
    public var input: Input {
        interactor.input
    }

    /// The total number of times this mocked method was called.
    public var callsCount: Int {
        interactor.callsCount
    }

    /// A Boolean value indicating whether this mocked method was called at least once.
    public var called: Bool {
        interactor.called
    }

    /// A Boolean value indicating whether this mocked method was called exactly once.
    public var calledOnce: Bool {
        interactor.calledOnce
    }

    /// Specifies the return value for this mocked method.
    ///
    /// - Parameter output: The output value to return when the method is called.
    public func returns(_ output: Output) {
        interactor.returns(output)
    }

    public func returnsConditionally(_ closure: @escaping (Input) -> Output) {
        interactor.returnsConditionally(closure)
    }

    /// Specifies an error to throw when this mocked method is called.
    ///
    /// - Parameter error: The error to throw during method invocation.
    public func `throws`(_ error: Error) {
        interactor.throws(error)
    }
}
