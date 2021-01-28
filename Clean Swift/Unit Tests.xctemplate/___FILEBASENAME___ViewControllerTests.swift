@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___ViewControllerTests: XCTestCase {
  var sut: ___VARIABLE_sceneName___ViewController!

  override func setUp() {
    super.setUp()
    let storyboard = UIStoryboard(name: "Main", bundle: .main)
    sut = storyboard.instantiateViewController(withIdentifier: "___VARIABLE_sceneName___ViewController") as! ___VARIABLE_sceneName___ViewController
  }

  func testShouldactionWhenViewIsLoaded() {
    let spy = ___VARIABLE_sceneName___BusinessLogicSpy()
    sut.interactor = spy

    _ = sut.view
    sut.viewDidLoad()

    XCTAssertTrue(spy.actionCalled, "viewDidLoad() should ask the interactor to do something")
  }

  func testDisplaySomething() {
    let viewModel = ___VARIABLE_sceneName___.Something.ViewModel()

    _ = sut.view
    sut.viewDidLoad()
    sut.displaySomething(viewModel: viewModel)

    //XCTAssertEqual(sut.nameTextField.text, "", "displaySomething(viewModel:) should update the name text field")
  }
}
