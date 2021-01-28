protocol ___VARIABLE_sceneName___BusinessLogic {
  func doSomething(request: ___VARIABLE_sceneName___.Something.Request)
}

protocol ___VARIABLE_sceneName___DataStore {
  //var name: String { get set }
}

class ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___BusinessLogic, ___VARIABLE_sceneName___DataStore {
  var presenter: ___VARIABLE_sceneName___PresentationLogic = ___VARIABLE_sceneName___Presenter()
  var worker: ___VARIABLE_sceneName___Worker = ___VARIABLE_sceneName___Worker()
  //var name = ""

  func doSomething(request: ___VARIABLE_sceneName___.Something.Request) {
    worker.doSomeWork()

    let response = ___VARIABLE_sceneName___.Something.Response()
    presenter.presentSomething(response: response)
  }
}
