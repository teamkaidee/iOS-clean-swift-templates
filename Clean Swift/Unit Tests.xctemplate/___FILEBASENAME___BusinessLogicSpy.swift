@testable import ___PROJECTNAMEASIDENTIFIER___

class ___VARIABLE_sceneName___BusinessLogicSpy: ___VARIABLE_sceneName___BusinessLogic {
  var actionCalled = false
  func doSomething(request: ___VARIABLE_sceneName___.Something.Request) {
    actionCalled = true
  }
}
