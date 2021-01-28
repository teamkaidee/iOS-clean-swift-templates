@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___InteractorTests: XCTestCase {
  var sut: ___VARIABLE_sceneName___Interactor!

  override func setUp() {
    super.setUp()
    sut = ___VARIABLE_sceneName___Interactor()
  }

  func testdoSomething() {
    let spy = ___VARIABLE_sceneName___PresentationLogicSpy()
    sut.presenter = spy
    let request = ___VARIABLE_sceneName___.Something.Request()

    sut.doSomething(request: request)

    XCTAssertTrue(spy.presentSomethingCalled, "doSomething(request:) should ask the presenter to format the result")
  }
}
