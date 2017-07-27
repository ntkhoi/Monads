//MARK: - Definition

// sourcery: concrete = "Deferred"
// sourcery: flatMap
public protocol DeferredType: PureConstructible {
	init(completion: (@escaping (ElementType) -> ()) -> ())
	func run(_ callback: @escaping (ElementType) -> ())
}

//MARK: - Concrete

public final class Deferred<T>: DeferredType {
	public typealias ElementType = T

	var callbacks: [(T) -> ()] = []

	var value: T?
	public init(value: T?) {
		self.value = value
	}

	public convenience init(completion: (@escaping (T) -> ()) -> ()) {
		self.init(value: nil)
		completion { value in
			self.value = value
			self.callbacks.forEach { $0(value) }
		}
	}

	public convenience init(_ value: T) {
		self.init(value: value)
	}

	public func run(_ callback: @escaping (T) -> ()) {
		if let value = value {
			callback(value)
		} else {
			callbacks.append(callback)
		}
	}
}

extension Deferred where T: Equatable {
	public static func == (left: Deferred, right: Deferred) -> Bool {
		return left.value == right.value
	}
}

//MARK: - Functor

extension DeferredType {
	public func map <A> (_ transform: @escaping (ElementType) -> A) -> Deferred<A> {
		return Deferred<A>.init { done in
			self.run { done(transform($0)) }
		}
	}
}

//MARK: - Joined

extension DeferredType where ElementType: DeferredType {
	public var joined: Deferred<ElementType.ElementType> {
		return Deferred<ElementType.ElementType>.init { done in
			self.run { $0.run(done) }
		}
	}
}

// MARK: -  CustomZip (parallel computation)
