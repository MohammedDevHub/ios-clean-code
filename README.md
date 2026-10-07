# ios-clean-code

A practical journey to learning **Clean Code, SOLID, Design Patterns, and Software Architecture with Swift**.

This repository documents my learning journey by applying software engineering concepts to a real Swift project step by step.

The goal is not to memorize definitions.

The goal is to understand:

* What problem a concept solves
* Why we use it
* When it makes sense
* How to apply it in real Swift code
* How to test it
* How to refactor it as the project grows

---

## Lessons

### 01 - Clean Code

Topics:

* Clear Naming
* Small Functions
* Encapsulation
* Readability
* Avoiding unnecessary side effects
* Refactoring
* Unit Testing

---

### 02 - SOLID — Single Responsibility Principle

Topics:

* SOLID Principles
* Single Responsibility Principle (SRP)
* One clear responsibility
* Reasons to change
* Separation of responsibilities
* Refactoring responsibilities
* Unit Testing

---

### 03 - Dependency Injection

Topics:

* Dependency Injection
* Constructor Injection
* Dependency Ownership
* Loose Coupling
* Testability
* Mock Dependencies
* Protocol-based Dependencies

---

### 04 - Protocols & Abstraction

Topics:

* Swift Protocols
* Abstraction
* Contracts
* Concrete Implementations
* Programming to an Abstraction
* Protocol-based Design
* Mock Implementations
* Dependency Injection + Abstraction

---

### 05 - Strategy Pattern

Topics:

* Design Patterns
* Strategy Pattern
* Encapsulating Algorithms
* Swapping Behaviors
* Protocol-based Strategies
* Dependency Injection + Strategy
* Strategy Testing
* Open/Closed Principle
* Reducing Conditional Logic

Example:

```text
TaskExporter
      │
      ▼
TaskExportStrategy
      │
      ├── JSONExportStrategy
      │
      └── CSVExportStrategy
```

---

### 06 - MVVM

Planned topics:

* Model
* View
* ViewModel
* Separation of UI and Logic
* UI State
* Binding
* Observable State
* Testable ViewModels

---

### 07 - Clean Architecture

Planned topics:

* Architecture Layers
* Separation of Concerns
* Domain Layer
* Data Layer
* Presentation Layer
* Dependency Direction
* Dependency Rule
* Boundaries

---

### 08 - Repository Pattern

Planned topics:

* Repository Pattern
* Data Abstraction
* Remote Data Source
* Local Data Source
* Mock Repository
* Repository Protocol
* Dependency Injection
* Testability

---

### 09 - Use Cases

Planned topics:

* Use Case Pattern
* Business Logic
* Application Rules
* Single Responsibility
* Use Case Dependencies
* ViewModel → Use Case
* Testing Business Logic

---

### 10 - Coordinator Pattern

Planned topics:

* Navigation Architecture
* Coordinator Pattern
* Navigation Responsibility
* App Router
* Navigation State
* Reducing View Coupling
* Testable Navigation

---

### 11 - Testing

Planned topics:

* Unit Testing
* Mocking
* Dependency Injection
* Test Doubles
* Repository Testing
* ViewModel Testing
* Integration Testing
* UI Testing
* Testable Architecture

---

### 12 - Swift Concurrency

Planned topics:

* async/await
* Task
* Structured Concurrency
* TaskGroup
* async let
* Actors
* AsyncStream
* @MainActor
* Cancellation
* Data Races
* Thread Safety

---

### 13 - Production Architecture

Planned topics:

* Dependency Container
* Networking
* Persistence
* Error Handling
* Offline Support
* Caching
* Notifications
* Analytics
* Security
* Performance
* Memory Management
* Accessibility

---

## Learning Approach

Each lesson follows the same workflow:

```text
Learn
  ↓
Understand the Problem
  ↓
Implement
  ↓
Refactor
  ↓
Test
  ↓
Commit
  ↓
Push to GitHub
  ↓
Document the Lesson
```

The project grows gradually as new concepts are introduced.

---

## Project Structure

The project starts simple and will evolve as the architecture becomes more advanced.

```text
CleanCodeLab
│
├── App
│
├── Domain
│
├── Data
│
├── Features
│
├── UI
│
└── Tests
```

The structure will be updated throughout the learning journey.

---

## Technologies

The project is built with:

* Swift
* SwiftUI
* Xcode
* XCTest
* Swift Concurrency
* Protocol-Oriented Programming
* Object-Oriented Programming
* Git
* GitHub

Native Apple frameworks are preferred whenever possible.

Third-party dependencies are avoided unless there is a strong technical reason to use them.

---

## Main Goals

By the end of this journey, the project should demonstrate practical understanding of:

* Clean Code
* SOLID
* OOP
* POP
* Dependency Injection
* Protocols
* Abstraction
* Design Patterns
* MVVM
* Clean Architecture
* Repository Pattern
* Use Cases
* Coordinator Pattern
* Unit Testing
* UI Testing
* Swift Concurrency
* Production Architecture

---

## Current Progress

| Lesson | Topic                   | Status      |
| ------ | ----------------------- | ----------- |
| 01     | Clean Code              | ✅ Completed |
| 02     | SOLID — SRP             | ✅ Completed |
| 03     | Dependency Injection    | ✅ Completed |
| 04     | Protocols & Abstraction | ✅ Completed |
| 05     | Strategy Pattern        | ✅ Completed |
| 06     | MVVM                    | ⏳ Planned   |
| 07     | Clean Architecture      | ⏳ Planned   |
| 08     | Repository Pattern      | ⏳ Planned   |
| 09     | Use Cases               | ⏳ Planned   |
| 10     | Coordinator Pattern     | ⏳ Planned   |
| 11     | Testing                 | ⏳ Planned   |
| 12     | Swift Concurrency       | ⏳ Planned   |
| 13     | Production Architecture | ⏳ Planned   |

---

## Repository

GitHub:

https://github.com/MohammedDevHub/ios-clean-code.git

---
