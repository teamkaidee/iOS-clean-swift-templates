# Change Log

All notable changes to this project will be documented in this file

## 3.1.1

- Hotfix: rollback setup, use force unwrap instead.

## 3.1.0

- Reduce setup steps. By always initial at variables
- Remove optional when it no need
- Remove `import UIKit` from worker, it should not use
- Remove `import UIKit` from the view model, it may not use
- Remove `MARK: Use cases` from the view model
- Remove router part from view controller. We do not prefer to use segue
- `MARK: Do something` to `MARK: - Actions`
- Remove `MARK: Do something` in the presenter
- `MARK: Setup` to `MARK: - Setup` and move to the above view controller constructor. It should not belong in the constructor function
- Move `IBOutlet` above everything, we are following the below order.
  1. Interface
  1. Outlets
  1. Local variables
  1. Initializations
  1. Object lift cycles
  1. Actions
- Remove white space in empty line
- Remove `tearDown()` from tests
- Remove `UIWindow` from tests, just call `_ = sut.view` is faster like a thousand times in unit testing. Except we want to working on some UI interaction.
- Remove NSObjectProtocol, @objc, NSObject, since it no use with Objective-C and Segue
- Separate presentation logic spy to file
- Separate business logic spy to file
- Separate display logic spy to file
- Pull request [#2](https://github.com/teamkaidee/iOS-clean-swift-templates/pull/2)

## 3.0.3

- No comment in the head of the file

## 3.0.2

- Fixed @testable import for project names containing spaces

## 3.0.1

- Added example unit tests for the sample use case in:
  - View controller
  - Interactor
  - Presenter

## 3.0.0

- Updated for the latest Xcode 8.3.3 and Xcode 9.0 beta
- Updated to work with Swift 3 and Swift 4
- Improved routing whether you use segues or not
- Improved data passing using the all new data store protocol
- Separated the routing process into two phases: navigation and data passing, with a clean interface
- Removed the need for configurator in favor of cleaner setup
- Combined input and output protocols to remove duplication
- Renamed protocols with better names
- Swiftier models with nested enums and structs
- Use optionals to prevent crash in the VIP cycle when the scene is no longer in memory
- Works whether you use storyboards to build your UI or not
- View controller class names are now recognized when specifying class names in storyboards

## 2.0.1

- Updated unit tests for Swift 3

## 2.0.0

- Nest model structs instead of using underscore
- Swift 3 compatible

## 1.1.2

- Added @testable import to unit test files
- Fixed bug to get main bundle in view controller unit test setup

## 1.1.1

- Added missing router input protocol conformance to router template

## 1.1.0

- Added Unit Tests template to generate XCTest unit test files for:
  - View controller
  - Interactor
  - Presenter
  - Worker

## 1.0.0

- Added the Scene template to generate the following Clean Swift components:
  - View Controller
  - Interactor
  - Presenter
  - Router
  - Worker
  - Models
  - Configurator
- These components can also be generated individually
