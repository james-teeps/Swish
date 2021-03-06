import Argo
import Result

public extension Result {
  static func fromDecoded<T>(decoded: Decoded<T>) -> Result<T, SwishError> {
    switch decoded {
    case let .Success(obj):
      return .Success(obj)
    case let .Failure(error):
      return .Failure(.ArgoError(error))
    }
  }
}
