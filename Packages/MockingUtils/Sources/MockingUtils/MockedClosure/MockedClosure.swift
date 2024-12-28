//
//  MockedClosure.swift
//  MockingUtils
//
//  Created by Yaroslav Stanislavyk on 28.12.2024.
//

/// A utility class that captures and tracks values passed into its closure, offering the ability to
/// inspect how many times it was called, and retrieve the last value passed.
///
/// `MockedClosure` is particularly helpful in unit tests when you need to:
/// 1. Capture parameter values passed to a closure.
/// 2. Validate how many times a closure was invoked.
/// 3. Confirm the last or all values received.
///
/// - Note: `T` can be any type, including `Void`.
public final class MockedClosure<T> {
    /// The most recently captured value, or `nil` if nothing has been captured yet.
    ///
    /// - Returns: The last passed value of type `T`, if any.
    public var lastValue: T? {
        values.last.flatMap { $0 }
    }

    /// A Boolean value indicating whether the closure was called exactly once.
    ///
    /// - Returns: `true` if the closure was called once, otherwise `false`.
    public var calledOnce: Bool {
        callsCount == 1
    }

    /// A closure that can be invoked with a value of type `T`.
    ///
    /// Each time this closure is invoked, it:
    /// 1. Increments the call count.
    /// 2. Stores the passed-in value in `values`.
    ///
    /// - Returns: A closure that, when called with a value of type `T`, updates this `MockedClosure`.
    public var closure: (T) -> Void {
        { [weak self] value in
            self?.callsCount += 1
            self?.values.append(value)
        }
    }

    /// An array of all values captured by the closure so far.
    /// This is settable only within this class, and read-only externally.
    public private(set) var values: [T?] = []

    /// The total number of times the closure was called.
    /// This is settable only within this class, and read-only externally.
    public private(set) var callsCount = 0

    /// Creates a new `MockedClosure` instance that can track values of type `T`.
    public init() {}

    /// Creates a new `MockedClosure` instance specifically for when `T` is `Void`.
    ///
    /// This initializer is mainly for convenience when your closure doesn't need to capture any values.
    public init() where T == Void {}
}

public extension MockedClosure where T == Void {
    /// A closure that can be invoked with no parameters (i.e., `Void`).
    ///
    /// Each time this closure is invoked, it is effectively the same as calling the main
    /// `closure(T)` with a `Void` value, thus incrementing the call count and logging
    /// the call for verification.
    ///
    /// - Returns: A closure that, when called, tracks an invocation with `T == Void`.
    var closure: () -> Void {
        { [weak self] in
            self?.closure(())
        }
    }
}
