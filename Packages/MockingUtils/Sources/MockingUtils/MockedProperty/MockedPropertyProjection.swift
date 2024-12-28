//
//  MockedPropertyProjection.swift
//  MockingUtils
//
//  Created by Yaroslav Stanislavyk on 28.12.2024.
//

/// A projection used to manage and inspect a mocked property's state from your tests.
///
/// Access the projection via the `$propertyName` syntax on a `MockedProperty`.
/// For instance, you can use `$propertyName.returns(_:)` to set the return value
/// without modifying `wrappedValue` directly, or check the call count with
/// `$propertyName.callsCount`.
public final class MockedPropertyProjection<T> {

    /// Indicates how many times the property's getter was called.
    public var callsCount: Int {
        interactor.callsCount
    }

    /// Indicates whether the property's getter was called exactly once.
    public var calledOnce: Bool {
        interactor.calledOnce
    }

    private let interactor: MockedPropertyInteractor<T>

    init(interactor: MockedPropertyInteractor<T>) {
        self.interactor = interactor
    }

    /// Sets the return value for the mocked property. Subsequent reads of the property
    /// will return this value unless changed again.
    ///
    /// - Parameter value: The value to return when the property is read.
    public func returns(_ value: T) {
        interactor.set(value)
    }
}
