//
//  MockedPropertyInteractor.swift
//  MockingUtils
//
//  Created by Yaroslav Stanislavyk on 28.12.2024.
//

/// A helper class used internally by `MockedProperty` to manage the stored value and track read calls.
///
/// `MockedPropertyInteractor` stores a single value and increments its `callsCount` each time
/// the value is retrieved. It also provides a projection for further configuration.
final class MockedPropertyInteractor<T> {

    /// A projection that offers additional ways to manipulate and inspect the mock.
    ///
    /// This property is intended for use by `MockedProperty` and generally not used directly.
    var projection: MockedPropertyProjection<T> {
        MockedPropertyProjection(interactor: self)
    }

    /// A Boolean value indicating whether the property was read exactly once.
    ///
    /// This can be helpful when you need to verify that the property’s getter is used only once.
    var calledOnce: Bool {
        callsCount == 1
    }

    /// The total number of times this mocked property was read.
    ///
    /// Every time the `return()` method is called, `callsCount` is incremented.
    private(set) var callsCount: Int = 0

    /// Stores the current return value for this property. If this is `nil` when `return()` is called,
    /// a runtime assertion will be raised.
    private var returnValue: T?

    /// Sets a new value for this property without incrementing any counters.
    ///
    /// - Parameter value: The value to be returned on subsequent reads of this property.
    func `set`(_ value: T) {
        returnValue = value
    }

    /// Returns the stored value and increments the number of times this property has been read.
    ///
    /// - Returns: The value previously set by `set(_:)`.
    /// - Warning: If the value was never set, this will trigger a runtime assertion.
    func `return`() -> T {
        callsCount += 1
        assert(returnValue != nil, "Return value is not set")
        return returnValue!
    }
}
