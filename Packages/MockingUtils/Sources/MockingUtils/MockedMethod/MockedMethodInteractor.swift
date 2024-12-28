//
//  MockedMethodInteractor.swift
//  MockingUtils
//
//  Created by Yaroslav Stanislavyk on 28.12.2024.
//

/// A generic interactor that handles the logic for a mocked method, including tracking
/// inputs, outputs, errors, and the number of times the method is called.
public final class MockedMethodInteractor<Input, Output> {

    /// A collection of all inputs that have been passed to this interactor.
    private var parameters: [Input] = []

    /// A closure that produces an output (or throws an error) given an input.
    private var result: (Input) -> Output

    /// An optional error that can be thrown during method invocation.
    private var throwableError: Error?

    /// Initializes a new interactor with a custom result closure.
    ///
    /// - Parameter result: A closure that generates an output for each input.
    init(result: @escaping (Input) -> Output) {
        self.result = result
    }

    /// Convenience initializer that triggers a runtime error when a result is requested,
    /// unless a return value is specified via `returns(_:)`.
    ///
    /// - Note: Use `returns(_:)` to set a return value before calling the method.
    public convenience init() {
        self.init(result: { _ in fatalError("Please specify the return value") })
    }

    /// A convenient property that creates a `MockedMethod` wrapper for this interactor.
    public var mockedMethod: MockedMethod<Input, Output> {
        MockedMethod(interactor: self)
    }

    /// The most recent input passed to this interactor.
    ///
    /// - Warning: Accessing this property when there have been no calls results in a runtime error.
    var input: Input {
        parameters.last!
    }

    /// The total number of times this interactor has been called.
    var callsCount: Int {
        parameters.count
    }

    /// A Boolean value indicating whether this interactor was called at least once.
    var called: Bool {
        callsCount > 0
    }

    /// A Boolean value indicating whether this interactor was called exactly once.
    var calledOnce: Bool {
        callsCount == 1
    }

    /// Records an input call to the interactor without producing an output or throwing an error.
    ///
    /// - Parameter input: The input to record.
    public func call(with input: Input) {
        parameters.append(input)
    }

    /// Records an input call and throws an error if one was set via `throws(_:)`.
    ///
    /// - Parameter input: The input to record.
    /// - Throws: The error previously set with `throws(_:)`, if any.
    public func callThrowable(with input: Input) throws {
        call(with: input)

        if let throwableError {
            throw throwableError
        }
    }

    /// Records an input call and returns a value based on the current result closure.
    ///
    /// - Parameter input: The input to record.
    /// - Returns: The output generated by the `result` closure.
    public func callAndReturn(_ input: Input) -> Output {
        call(with: input)
        return result(input)
    }

    /// Records an input call, throws an error if set, and returns a value based on the current result closure.
    ///
    /// - Parameter input: The input to record.
    /// - Throws: The error previously set with `throws(_:)`, if any.
    /// - Returns: The output generated by the `result` closure.
    public func callAndReturnThrowable(_ input: Input) throws -> Output {
        try callThrowable(with: input)
        return result(input)
    }

    /// Changes the `result` closure so that the interactor always returns the specified output.
    /// Clears any previously set throwable error.
    ///
    /// - Parameter output: The output to return for all subsequent calls.
    func returns(_ output: Output) {
        result = { _ in output }
        throwableError = nil
    }

    /// Updates the interactor's result closure to produce an output based on the provided closure.
    /// This also clears any previously set throwable error.
    ///
    /// - Parameter closure: A closure that takes an `Input` and returns an `Output`.
    ///
    /// Use this method when you need to dynamically determine the output depending on the input.
    func returnsConditionally(_ closure: @escaping (Input) -> Output) {
        result = closure
        throwableError = nil
    }

    /// Sets an error to be thrown on the next (and all subsequent) calls.
    ///
    /// - Parameter error: The error to throw during method invocation.
    func `throws`(_ error: Error) {
        throwableError = error
    }
}
