# MockingUtils

**Disclaimer**: This Swift package is *not intended for direct use in external projects* but rather serves as an illustrative example of how to organize, write, and auto-generate mocks for unit testing in Swift. If you find something here useful, feel free to draw inspiration or adapt it for your specific project needs.

---

## Overview

This package showcases a small toolkit of mock utilities designed to simplify unit testing in Swift. It demonstrates:

1. **MockedClosure**
   - A simple class to track invocations of a closure (call count, last value, etc.).
   - Demonstrates how to manage captured values across multiple calls.

2. **MockedMethod**
   - A utility to track method invocation details, specify return values, and optionally throw errors.
   - Shows how to structure method mocks for more sophisticated test setups.

3. **MockedProperty**
   - A property wrapper for creating testable, trackable properties.
   - Illustrates how property wrappers can simplify mock behavior and usage in tests.

4. **Sourcery Integration**
   - Demonstrates how you can use [Sourcery](https://github.com/krzysztofzablocki/Sourcery) to auto-generate mock classes for protocols annotated with `AutoMockable`.
   - Illustrates a typical `.sourcery.yml` configuration and a Stencil template that builds on these helper classes.

---

## Core Components

### 1. `MockedClosure<T>`

- **Tracks closure calls**: Keep count of how many times a closure is called.
- **Captures values**: Retain the last value (or all values) passed to the closure.
- **Handles `Void`**: Specialized handling for closures that take no parameters.

### 2. `MockedMethod<Input, Output>`

- **Tracks method calls**: Focuses on inputs passed, total call count, and whether the method was called at least once or exactly once.
- **Return values or errors**: Provides a mechanism to specify what the mocked method should return or whether it should throw a specific error.

### 3. `MockedProperty<T>`

- **Property wrapper**: Easily mock a stored property.
- **Getter calls tracking**: Count how many times a property’s getter is accessed.
- **Configurable returns**: Specify what value the property should return without needing complicated boilerplate.

### 4. Sourcery & Auto-Generated Mocks

The repository also illustrates how to automate mock generation for your protocols by leveraging Sourcery:
- You annotate your Swift protocols with custom commands (like `// sourcery: AutoMockable`).
- A `.sourcery.yml` file plus one or more `.stencil` templates define how mocks should be generated, referencing the helper classes (`MockedClosure`, `MockedMethod`, etc.).
- Run Sourcery to output `.swift` files containing fully implemented mocks you can drop right into your tests.

---

## Why This Example?

Mocking in Swift can involve a fair amount of boilerplate. By demonstrating a few core mocking patterns, plus how you can offload repetitive tasks via Sourcery, this repository aims to illustrate an efficient, maintainable approach to testing. You can:

- See a real-world example of how to structure Swift mocking utilities.
- Learn how property wrappers, generics, and optional protocols can work together for a clean test environment.
- Understand how to integrate a code generation approach and reduce repetitive mock writing.

---
