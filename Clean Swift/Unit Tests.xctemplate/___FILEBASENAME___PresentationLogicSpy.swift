@testable import ___PROJECTNAMEASIDENTIFIER___

class ___VARIABLE_sceneName___PresentationLogicSpy: ___VARIABLE_sceneName___PresentationLogic {
  var presentSomethingCalled = false

  func presentSomething(response: ___VARIABLE_sceneName___.Something.Response) {
    presentSomethingCalled = true
  }
}
