@testable import ___PROJECTNAMEASIDENTIFIER___

class ___VARIABLE_sceneName___DisplayLogicSpy: ___VARIABLE_sceneName___DisplayLogic {
  var displaySomethingCalled = false

  func displaySomething(viewModel: ___VARIABLE_sceneName___.Something.ViewModel) {
    displaySomethingCalled = true
  }
}