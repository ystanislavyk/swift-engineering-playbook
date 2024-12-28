//
//  MockedProperty.swift
//  MockingUtils
//
//  Created by Yaroslav Stanislavyk on 28.12.2024.
//

/// A property wrapper used to mock a stored property in your tests.
///
/// `MockedProperty` helps in tracking how many times the property's getter is called
/// and allows setting a custom return value, making it easy to assert and control
/// property behavior. When wrapped by `MockedProperty`, the projected value (`$propertyName`)
/// gives you additional functionality to modify and inspect the mock in your tests.
@propertyWrapper
public final class MockedProperty<T> {

    private let interactor = MockedPropertyInteractor<T>()

    /// Provides additional methods to control and inspect this mocked property.
    ///
    /// Access this via the projected value syntax: `$propertyName`.
    public lazy var projectedValue = interactor.projection

    /// The underlying value of this mocked property.
    ///
    /// When accessed, it increments an internal counter. If the property has not been
    /// set beforehand, an assertion will trigger at runtime.
    public var wrappedValue: T {
        get {
            interactor.return()
        }
        set {
            interactor.set(newValue)
        }
    }

    /// Creates a new mocked property with no initial value. If you read this property
    /// before assigning a value, a runtime assertion will occur.
    public init() {}
}
