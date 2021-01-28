@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___PresenterTests: XCTestCase {
  var sut: ___VARIABLE_sceneName___Presenter!

  override func setUp() {
    super.setUp()
    sut = ___VARIABLE_sceneName___Presenter()
  }

  func testPresentSomething() {
    let spy = ___VARIABLE_sceneName___DisplayLogicSpy()
    sut.viewController = spy
    let response = ___VARIABLE_sceneName___.Something.Response()

    sut.presentSomething(response: response)

    XCTAssertTrue(spy.displaySomethingCalled, "presentSomething(response:) should ask the view controller to display the result")
  }
}
