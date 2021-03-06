// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `transformer` definitions for `OptionalType`; requires `map`, `joined`, `concrete`




// MARK: - Level 1 Transformer

extension ArrayType where ElementType: OptionalType {
	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Array<Optional<A>>) -> Array<Optional<A>> {
		return flatMap { $0.run(
			ifSome: { transform($0) },
			ifNone: { Array.pure(Optional<A>.none) })
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Array<Optional<A>>) -> Array<Optional<A>> where T: ArrayType, T.ElementType: OptionalType {
	return object.flatMapT(transform)
}

extension DeferredType where ElementType: OptionalType {
	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Deferred<Optional<A>>) -> Deferred<Optional<A>> {
		return flatMap { $0.run(
			ifSome: { transform($0) },
			ifNone: { Deferred.pure(Optional<A>.none) })
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Deferred<Optional<A>>) -> Deferred<Optional<A>> where T: DeferredType, T.ElementType: OptionalType {
	return object.flatMapT(transform)
}

extension EffectType where ElementType: OptionalType {
	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Effect<Optional<A>>) -> Effect<Optional<A>> {
		return flatMap { $0.run(
			ifSome: { transform($0) },
			ifNone: { Effect.pure(Optional<A>.none) })
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Effect<Optional<A>>) -> Effect<Optional<A>> where T: EffectType, T.ElementType: OptionalType {
	return object.flatMapT(transform)
}

extension OptionalType where ElementType: OptionalType {
	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Optional<Optional<A>>) -> Optional<Optional<A>> {
		return flatMap { $0.run(
			ifSome: { transform($0) },
			ifNone: { Optional.pure(Optional<A>.none) })
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Optional<Optional<A>>) -> Optional<Optional<A>> where T: OptionalType, T.ElementType: OptionalType {
	return object.flatMapT(transform)
}

extension ReaderType where ElementType: OptionalType {
	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Reader<Optional<A>,EnvironmentType>) -> Reader<Optional<A>,EnvironmentType> {
		return flatMap { $0.run(
			ifSome: { transform($0) },
			ifNone: { Reader.pure(Optional<A>.none) })
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Reader<Optional<A>,T.EnvironmentType>) -> Reader<Optional<A>,T.EnvironmentType> where T: ReaderType, T.ElementType: OptionalType {
	return object.flatMapT(transform)
}

extension ResultType where ElementType: OptionalType {
	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Result<Optional<A>,ErrorType>) -> Result<Optional<A>,ErrorType> {
		return flatMap { $0.run(
			ifSome: { transform($0) },
			ifNone: { Result.pure(Optional<A>.none) })
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Result<Optional<A>,T.ErrorType>) -> Result<Optional<A>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType {
	return object.flatMapT(transform)
}

extension WriterType where ElementType: OptionalType {
	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Writer<Optional<A>,LogType>) -> Writer<Optional<A>,LogType> {
		return flatMap { $0.run(
			ifSome: { transform($0) },
			ifNone: { Writer.pure(Optional<A>.none) })
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Writer<Optional<A>,T.LogType>) -> Writer<Optional<A>,T.LogType> where T: WriterType, T.ElementType: OptionalType {
	return object.flatMapT(transform)
}

// MARK: - Level 2 Transformer

extension ArrayType where ElementType: EffectType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Array<Effect<Optional<A>>>) -> Array<Effect<Optional<A>>> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Array.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Array<Effect<Optional<A>>>) -> Array<Effect<Optional<A>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Array<Optional<Optional<A>>>) -> Array<Optional<Optional<A>>> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Array.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Array<Optional<Optional<A>>>) -> Array<Optional<Optional<A>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Array<Result<Optional<A>,ElementType.ErrorType>>) -> Array<Result<Optional<A>,ElementType.ErrorType>> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Array.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Array<Result<Optional<A>,T.ElementType.ErrorType>>) -> Array<Result<Optional<A>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Array<Writer<Optional<A>,ElementType.LogType>>) -> Array<Writer<Optional<A>,ElementType.LogType>> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Array.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Array<Writer<Optional<A>,T.ElementType.LogType>>) -> Array<Writer<Optional<A>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Deferred<Effect<Optional<A>>>) -> Deferred<Effect<Optional<A>>> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Deferred.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Deferred<Effect<Optional<A>>>) -> Deferred<Effect<Optional<A>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Deferred<Optional<Optional<A>>>) -> Deferred<Optional<Optional<A>>> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Deferred.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Deferred<Optional<Optional<A>>>) -> Deferred<Optional<Optional<A>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Deferred<Result<Optional<A>,ElementType.ErrorType>>) -> Deferred<Result<Optional<A>,ElementType.ErrorType>> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Deferred.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Deferred<Result<Optional<A>,T.ElementType.ErrorType>>) -> Deferred<Result<Optional<A>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Deferred<Writer<Optional<A>,ElementType.LogType>>) -> Deferred<Writer<Optional<A>,ElementType.LogType>> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Deferred.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Deferred<Writer<Optional<A>,T.ElementType.LogType>>) -> Deferred<Writer<Optional<A>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Effect<Effect<Optional<A>>>) -> Effect<Effect<Optional<A>>> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Effect.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Effect<Effect<Optional<A>>>) -> Effect<Effect<Optional<A>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Effect<Optional<Optional<A>>>) -> Effect<Optional<Optional<A>>> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Effect.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Effect<Optional<Optional<A>>>) -> Effect<Optional<Optional<A>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Effect<Result<Optional<A>,ElementType.ErrorType>>) -> Effect<Result<Optional<A>,ElementType.ErrorType>> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Effect.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Effect<Result<Optional<A>,T.ElementType.ErrorType>>) -> Effect<Result<Optional<A>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Effect<Writer<Optional<A>,ElementType.LogType>>) -> Effect<Writer<Optional<A>,ElementType.LogType>> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Effect.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Effect<Writer<Optional<A>,T.ElementType.LogType>>) -> Effect<Writer<Optional<A>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Optional<Effect<Optional<A>>>) -> Optional<Effect<Optional<A>>> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Optional.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Optional<Effect<Optional<A>>>) -> Optional<Effect<Optional<A>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Optional<Optional<Optional<A>>>) -> Optional<Optional<Optional<A>>> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Optional.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Optional<Optional<Optional<A>>>) -> Optional<Optional<Optional<A>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Optional<Result<Optional<A>,ElementType.ErrorType>>) -> Optional<Result<Optional<A>,ElementType.ErrorType>> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Optional.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Optional<Result<Optional<A>,T.ElementType.ErrorType>>) -> Optional<Result<Optional<A>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Optional<Writer<Optional<A>,ElementType.LogType>>) -> Optional<Writer<Optional<A>,ElementType.LogType>> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Optional.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Optional<Writer<Optional<A>,T.ElementType.LogType>>) -> Optional<Writer<Optional<A>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension ReaderType where ElementType: EffectType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Reader<Effect<Optional<A>>,EnvironmentType>) -> Reader<Effect<Optional<A>>,EnvironmentType> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Reader.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Reader<Effect<Optional<A>>,T.EnvironmentType>) -> Reader<Effect<Optional<A>>,T.EnvironmentType> where T: ReaderType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension ReaderType where ElementType: OptionalType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Reader<Optional<Optional<A>>,EnvironmentType>) -> Reader<Optional<Optional<A>>,EnvironmentType> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Reader.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Reader<Optional<Optional<A>>,T.EnvironmentType>) -> Reader<Optional<Optional<A>>,T.EnvironmentType> where T: ReaderType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension ReaderType where ElementType: ResultType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Reader<Result<Optional<A>,ElementType.ErrorType>,EnvironmentType>) -> Reader<Result<Optional<A>,ElementType.ErrorType>,EnvironmentType> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Reader.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Reader<Result<Optional<A>,T.ElementType.ErrorType>,T.EnvironmentType>) -> Reader<Result<Optional<A>,T.ElementType.ErrorType>,T.EnvironmentType> where T: ReaderType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension ReaderType where ElementType: WriterType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Reader<Writer<Optional<A>,ElementType.LogType>,EnvironmentType>) -> Reader<Writer<Optional<A>,ElementType.LogType>,EnvironmentType> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Reader.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Reader<Writer<Optional<A>,T.ElementType.LogType>,T.EnvironmentType>) -> Reader<Writer<Optional<A>,T.ElementType.LogType>,T.EnvironmentType> where T: ReaderType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Result<Effect<Optional<A>>,ErrorType>) -> Result<Effect<Optional<A>>,ErrorType> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Result.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Result<Effect<Optional<A>>,T.ErrorType>) -> Result<Effect<Optional<A>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Result<Optional<Optional<A>>,ErrorType>) -> Result<Optional<Optional<A>>,ErrorType> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Result.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Result<Optional<Optional<A>>,T.ErrorType>) -> Result<Optional<Optional<A>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Result<Result<Optional<A>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Optional<A>,ElementType.ErrorType>,ErrorType> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Result.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Result<Result<Optional<A>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Optional<A>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Result<Writer<Optional<A>,ElementType.LogType>,ErrorType>) -> Result<Writer<Optional<A>,ElementType.LogType>,ErrorType> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Result.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Result<Writer<Optional<A>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Optional<A>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Writer<Effect<Optional<A>>,LogType>) -> Writer<Effect<Optional<A>>,LogType> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Writer.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Writer<Effect<Optional<A>>,T.LogType>) -> Writer<Effect<Optional<A>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Writer<Optional<Optional<A>>,LogType>) -> Writer<Optional<Optional<A>>,LogType> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Writer.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Writer<Optional<Optional<A>>,T.LogType>) -> Writer<Optional<Optional<A>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Writer<Result<Optional<A>,ElementType.ErrorType>,LogType>) -> Writer<Result<Optional<A>,ElementType.ErrorType>,LogType> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Writer.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Writer<Result<Optional<A>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Optional<A>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: OptionalType {
	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Writer<Writer<Optional<A>,ElementType.LogType>,LogType>) -> Writer<Writer<Optional<A>,ElementType.LogType>,LogType> {
		return flatMapT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Writer.pure(Optional<A>.none) })
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Writer<Writer<Optional<A>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Optional<A>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType {
	return object.flatMapTT(transform)
}

// MARK: - Level 3 Transformer

extension ArrayType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Effect<Optional<A>>>>) -> Array<Effect<Effect<Optional<A>>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Array.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Effect<Optional<A>>>>) -> Array<Effect<Effect<Optional<A>>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Optional<Optional<A>>>>) -> Array<Effect<Optional<Optional<A>>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Array.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Optional<Optional<A>>>>) -> Array<Effect<Optional<Optional<A>>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Result<Optional<A>,ElementType.ElementType.ErrorType>>>) -> Array<Effect<Result<Optional<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Array.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>>) -> Array<Effect<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Writer<Optional<A>,ElementType.ElementType.LogType>>>) -> Array<Effect<Writer<Optional<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Array.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Effect<Writer<Optional<A>,T.ElementType.ElementType.LogType>>>) -> Array<Effect<Writer<Optional<A>,T.ElementType.ElementType.LogType>>> where T: ArrayType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Effect<Optional<A>>>>) -> Array<Optional<Effect<Optional<A>>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Array.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Effect<Optional<A>>>>) -> Array<Optional<Effect<Optional<A>>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Optional<Optional<A>>>>) -> Array<Optional<Optional<Optional<A>>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Array.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Optional<Optional<A>>>>) -> Array<Optional<Optional<Optional<A>>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Result<Optional<A>,ElementType.ElementType.ErrorType>>>) -> Array<Optional<Result<Optional<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Array.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>>) -> Array<Optional<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Writer<Optional<A>,ElementType.ElementType.LogType>>>) -> Array<Optional<Writer<Optional<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Array.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Optional<Writer<Optional<A>,T.ElementType.ElementType.LogType>>>) -> Array<Optional<Writer<Optional<A>,T.ElementType.ElementType.LogType>>> where T: ArrayType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Result<Effect<Optional<A>>,ElementType.ErrorType>>) -> Array<Result<Effect<Optional<A>>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Array.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Result<Effect<Optional<A>>,T.ElementType.ErrorType>>) -> Array<Result<Effect<Optional<A>>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Result<Optional<Optional<A>>,ElementType.ErrorType>>) -> Array<Result<Optional<Optional<A>>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Array.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Result<Optional<Optional<A>>,T.ElementType.ErrorType>>) -> Array<Result<Optional<Optional<A>>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Result<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Array<Result<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Array.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Result<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Array<Result<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Result<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Array<Result<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Array.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Result<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Array<Result<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: ArrayType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Effect<Optional<A>>,ElementType.LogType>>) -> Array<Writer<Effect<Optional<A>>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Array.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Effect<Optional<A>>,T.ElementType.LogType>>) -> Array<Writer<Effect<Optional<A>>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Optional<Optional<A>>,ElementType.LogType>>) -> Array<Writer<Optional<Optional<A>>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Array.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Optional<Optional<A>>,T.ElementType.LogType>>) -> Array<Writer<Optional<Optional<A>>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Array<Writer<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Array.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Array<Writer<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ArrayType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Array<Writer<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Array.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Array<Writer<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Array<Writer<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: ArrayType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Effect<Optional<A>>>>) -> Deferred<Effect<Effect<Optional<A>>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Deferred.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Effect<Optional<A>>>>) -> Deferred<Effect<Effect<Optional<A>>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Optional<Optional<A>>>>) -> Deferred<Effect<Optional<Optional<A>>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Deferred.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Optional<Optional<A>>>>) -> Deferred<Effect<Optional<Optional<A>>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Result<Optional<A>,ElementType.ElementType.ErrorType>>>) -> Deferred<Effect<Result<Optional<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Deferred.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>>) -> Deferred<Effect<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Writer<Optional<A>,ElementType.ElementType.LogType>>>) -> Deferred<Effect<Writer<Optional<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Deferred.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Effect<Writer<Optional<A>,T.ElementType.ElementType.LogType>>>) -> Deferred<Effect<Writer<Optional<A>,T.ElementType.ElementType.LogType>>> where T: DeferredType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Effect<Optional<A>>>>) -> Deferred<Optional<Effect<Optional<A>>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Deferred.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Effect<Optional<A>>>>) -> Deferred<Optional<Effect<Optional<A>>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Optional<Optional<A>>>>) -> Deferred<Optional<Optional<Optional<A>>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Deferred.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Optional<Optional<A>>>>) -> Deferred<Optional<Optional<Optional<A>>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Result<Optional<A>,ElementType.ElementType.ErrorType>>>) -> Deferred<Optional<Result<Optional<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Deferred.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>>) -> Deferred<Optional<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Writer<Optional<A>,ElementType.ElementType.LogType>>>) -> Deferred<Optional<Writer<Optional<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Deferred.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Optional<Writer<Optional<A>,T.ElementType.ElementType.LogType>>>) -> Deferred<Optional<Writer<Optional<A>,T.ElementType.ElementType.LogType>>> where T: DeferredType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Effect<Optional<A>>,ElementType.ErrorType>>) -> Deferred<Result<Effect<Optional<A>>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Deferred.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Effect<Optional<A>>,T.ElementType.ErrorType>>) -> Deferred<Result<Effect<Optional<A>>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Optional<Optional<A>>,ElementType.ErrorType>>) -> Deferred<Result<Optional<Optional<A>>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Deferred.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Optional<Optional<A>>,T.ElementType.ErrorType>>) -> Deferred<Result<Optional<Optional<A>>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Deferred<Result<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Deferred.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Deferred<Result<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Deferred<Result<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Deferred.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Result<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Deferred<Result<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: DeferredType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Effect<Optional<A>>,ElementType.LogType>>) -> Deferred<Writer<Effect<Optional<A>>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Deferred.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Effect<Optional<A>>,T.ElementType.LogType>>) -> Deferred<Writer<Effect<Optional<A>>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Optional<Optional<A>>,ElementType.LogType>>) -> Deferred<Writer<Optional<Optional<A>>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Deferred.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Optional<Optional<A>>,T.ElementType.LogType>>) -> Deferred<Writer<Optional<Optional<A>>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Deferred<Writer<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Deferred.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Deferred<Writer<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension DeferredType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Deferred<Writer<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Deferred.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Deferred<Writer<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Deferred<Writer<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: DeferredType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Effect<Optional<A>>>>) -> Effect<Effect<Effect<Optional<A>>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Effect.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Effect<Optional<A>>>>) -> Effect<Effect<Effect<Optional<A>>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Optional<Optional<A>>>>) -> Effect<Effect<Optional<Optional<A>>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Effect.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Optional<Optional<A>>>>) -> Effect<Effect<Optional<Optional<A>>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Result<Optional<A>,ElementType.ElementType.ErrorType>>>) -> Effect<Effect<Result<Optional<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Effect.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>>) -> Effect<Effect<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Writer<Optional<A>,ElementType.ElementType.LogType>>>) -> Effect<Effect<Writer<Optional<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Effect.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Effect<Writer<Optional<A>,T.ElementType.ElementType.LogType>>>) -> Effect<Effect<Writer<Optional<A>,T.ElementType.ElementType.LogType>>> where T: EffectType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Effect<Optional<A>>>>) -> Effect<Optional<Effect<Optional<A>>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Effect.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Effect<Optional<A>>>>) -> Effect<Optional<Effect<Optional<A>>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Optional<Optional<A>>>>) -> Effect<Optional<Optional<Optional<A>>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Effect.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Optional<Optional<A>>>>) -> Effect<Optional<Optional<Optional<A>>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Result<Optional<A>,ElementType.ElementType.ErrorType>>>) -> Effect<Optional<Result<Optional<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Effect.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>>) -> Effect<Optional<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Writer<Optional<A>,ElementType.ElementType.LogType>>>) -> Effect<Optional<Writer<Optional<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Effect.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Optional<Writer<Optional<A>,T.ElementType.ElementType.LogType>>>) -> Effect<Optional<Writer<Optional<A>,T.ElementType.ElementType.LogType>>> where T: EffectType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Effect<Optional<A>>,ElementType.ErrorType>>) -> Effect<Result<Effect<Optional<A>>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Effect.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Effect<Optional<A>>,T.ElementType.ErrorType>>) -> Effect<Result<Effect<Optional<A>>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Optional<Optional<A>>,ElementType.ErrorType>>) -> Effect<Result<Optional<Optional<A>>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Effect.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Optional<Optional<A>>,T.ElementType.ErrorType>>) -> Effect<Result<Optional<Optional<A>>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Effect<Result<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Effect.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Effect<Result<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Effect<Result<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Effect.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Result<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Effect<Result<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: EffectType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Effect<Optional<A>>,ElementType.LogType>>) -> Effect<Writer<Effect<Optional<A>>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Effect.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Effect<Optional<A>>,T.ElementType.LogType>>) -> Effect<Writer<Effect<Optional<A>>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Optional<Optional<A>>,ElementType.LogType>>) -> Effect<Writer<Optional<Optional<A>>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Effect.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Optional<Optional<A>>,T.ElementType.LogType>>) -> Effect<Writer<Optional<Optional<A>>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Effect<Writer<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Effect.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Effect<Writer<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension EffectType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Effect<Writer<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Effect.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Effect<Writer<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Effect<Writer<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: EffectType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Effect<Optional<A>>>>) -> Optional<Effect<Effect<Optional<A>>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Optional.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Effect<Optional<A>>>>) -> Optional<Effect<Effect<Optional<A>>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Optional<Optional<A>>>>) -> Optional<Effect<Optional<Optional<A>>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Optional.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Optional<Optional<A>>>>) -> Optional<Effect<Optional<Optional<A>>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Result<Optional<A>,ElementType.ElementType.ErrorType>>>) -> Optional<Effect<Result<Optional<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Optional.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>>) -> Optional<Effect<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Writer<Optional<A>,ElementType.ElementType.LogType>>>) -> Optional<Effect<Writer<Optional<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Optional.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Effect<Writer<Optional<A>,T.ElementType.ElementType.LogType>>>) -> Optional<Effect<Writer<Optional<A>,T.ElementType.ElementType.LogType>>> where T: OptionalType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Effect<Optional<A>>>>) -> Optional<Optional<Effect<Optional<A>>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Optional.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Effect<Optional<A>>>>) -> Optional<Optional<Effect<Optional<A>>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Optional<Optional<A>>>>) -> Optional<Optional<Optional<Optional<A>>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Optional.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Optional<Optional<A>>>>) -> Optional<Optional<Optional<Optional<A>>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Result<Optional<A>,ElementType.ElementType.ErrorType>>>) -> Optional<Optional<Result<Optional<A>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Optional.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>>) -> Optional<Optional<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Writer<Optional<A>,ElementType.ElementType.LogType>>>) -> Optional<Optional<Writer<Optional<A>,ElementType.ElementType.LogType>>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Optional.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Writer<Optional<A>,T.ElementType.ElementType.LogType>>>) -> Optional<Optional<Writer<Optional<A>,T.ElementType.ElementType.LogType>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Effect<Optional<A>>,ElementType.ErrorType>>) -> Optional<Result<Effect<Optional<A>>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Optional.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Effect<Optional<A>>,T.ElementType.ErrorType>>) -> Optional<Result<Effect<Optional<A>>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Optional<Optional<A>>,ElementType.ErrorType>>) -> Optional<Result<Optional<Optional<A>>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Optional.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Optional<Optional<A>>,T.ElementType.ErrorType>>) -> Optional<Result<Optional<Optional<A>>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Optional<Result<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Optional.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Optional<Result<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Optional<Result<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Optional.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Optional<Result<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Effect<Optional<A>>,ElementType.LogType>>) -> Optional<Writer<Effect<Optional<A>>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Optional.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Effect<Optional<A>>,T.ElementType.LogType>>) -> Optional<Writer<Effect<Optional<A>>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Optional<Optional<A>>,ElementType.LogType>>) -> Optional<Writer<Optional<Optional<A>>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Optional.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Optional<Optional<A>>,T.ElementType.LogType>>) -> Optional<Writer<Optional<Optional<A>>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Optional<Writer<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Optional.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Optional<Writer<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Optional<Writer<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Optional.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Optional<Writer<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Effect<Optional<A>>>,EnvironmentType>) -> Reader<Effect<Effect<Optional<A>>>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Reader.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Effect<Optional<A>>>,T.EnvironmentType>) -> Reader<Effect<Effect<Optional<A>>>,T.EnvironmentType> where T: ReaderType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Optional<Optional<A>>>,EnvironmentType>) -> Reader<Effect<Optional<Optional<A>>>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Reader.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Optional<Optional<A>>>,T.EnvironmentType>) -> Reader<Effect<Optional<Optional<A>>>,T.EnvironmentType> where T: ReaderType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Result<Optional<A>,ElementType.ElementType.ErrorType>>,EnvironmentType>) -> Reader<Effect<Result<Optional<A>,ElementType.ElementType.ErrorType>>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Reader.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>,T.EnvironmentType>) -> Reader<Effect<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>,T.EnvironmentType> where T: ReaderType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Writer<Optional<A>,ElementType.ElementType.LogType>>,EnvironmentType>) -> Reader<Effect<Writer<Optional<A>,ElementType.ElementType.LogType>>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Reader.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Effect<Writer<Optional<A>,T.ElementType.ElementType.LogType>>,T.EnvironmentType>) -> Reader<Effect<Writer<Optional<A>,T.ElementType.ElementType.LogType>>,T.EnvironmentType> where T: ReaderType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Effect<Optional<A>>>,EnvironmentType>) -> Reader<Optional<Effect<Optional<A>>>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Reader.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Effect<Optional<A>>>,T.EnvironmentType>) -> Reader<Optional<Effect<Optional<A>>>,T.EnvironmentType> where T: ReaderType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Optional<Optional<A>>>,EnvironmentType>) -> Reader<Optional<Optional<Optional<A>>>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Reader.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Optional<Optional<A>>>,T.EnvironmentType>) -> Reader<Optional<Optional<Optional<A>>>,T.EnvironmentType> where T: ReaderType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Result<Optional<A>,ElementType.ElementType.ErrorType>>,EnvironmentType>) -> Reader<Optional<Result<Optional<A>,ElementType.ElementType.ErrorType>>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Reader.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>,T.EnvironmentType>) -> Reader<Optional<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>,T.EnvironmentType> where T: ReaderType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Writer<Optional<A>,ElementType.ElementType.LogType>>,EnvironmentType>) -> Reader<Optional<Writer<Optional<A>,ElementType.ElementType.LogType>>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Reader.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Optional<Writer<Optional<A>,T.ElementType.ElementType.LogType>>,T.EnvironmentType>) -> Reader<Optional<Writer<Optional<A>,T.ElementType.ElementType.LogType>>,T.EnvironmentType> where T: ReaderType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Effect<Optional<A>>,ElementType.ErrorType>,EnvironmentType>) -> Reader<Result<Effect<Optional<A>>,ElementType.ErrorType>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Reader.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Effect<Optional<A>>,T.ElementType.ErrorType>,T.EnvironmentType>) -> Reader<Result<Effect<Optional<A>>,T.ElementType.ErrorType>,T.EnvironmentType> where T: ReaderType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Optional<Optional<A>>,ElementType.ErrorType>,EnvironmentType>) -> Reader<Result<Optional<Optional<A>>,ElementType.ErrorType>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Reader.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Optional<Optional<A>>,T.ElementType.ErrorType>,T.EnvironmentType>) -> Reader<Result<Optional<Optional<A>>,T.ElementType.ErrorType>,T.EnvironmentType> where T: ReaderType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,EnvironmentType>) -> Reader<Result<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Reader.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.EnvironmentType>) -> Reader<Result<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.EnvironmentType> where T: ReaderType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,EnvironmentType>) -> Reader<Result<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Reader.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Result<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.EnvironmentType>) -> Reader<Result<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.EnvironmentType> where T: ReaderType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Effect<Optional<A>>,ElementType.LogType>,EnvironmentType>) -> Reader<Writer<Effect<Optional<A>>,ElementType.LogType>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Reader.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Effect<Optional<A>>,T.ElementType.LogType>,T.EnvironmentType>) -> Reader<Writer<Effect<Optional<A>>,T.ElementType.LogType>,T.EnvironmentType> where T: ReaderType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Optional<Optional<A>>,ElementType.LogType>,EnvironmentType>) -> Reader<Writer<Optional<Optional<A>>,ElementType.LogType>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Reader.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Optional<Optional<A>>,T.ElementType.LogType>,T.EnvironmentType>) -> Reader<Writer<Optional<Optional<A>>,T.ElementType.LogType>,T.EnvironmentType> where T: ReaderType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,EnvironmentType>) -> Reader<Writer<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Reader.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.EnvironmentType>) -> Reader<Writer<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.EnvironmentType> where T: ReaderType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ReaderType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.LogType>,EnvironmentType>) -> Reader<Writer<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.LogType>,EnvironmentType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Reader.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Reader<Writer<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.EnvironmentType>) -> Reader<Writer<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.EnvironmentType> where T: ReaderType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Effect<Optional<A>>>,ErrorType>) -> Result<Effect<Effect<Optional<A>>>,ErrorType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Result.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Effect<Optional<A>>>,T.ErrorType>) -> Result<Effect<Effect<Optional<A>>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Optional<Optional<A>>>,ErrorType>) -> Result<Effect<Optional<Optional<A>>>,ErrorType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Result.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Optional<Optional<A>>>,T.ErrorType>) -> Result<Effect<Optional<Optional<A>>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Result<Optional<A>,ElementType.ElementType.ErrorType>>,ErrorType>) -> Result<Effect<Result<Optional<A>,ElementType.ElementType.ErrorType>>,ErrorType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Result.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>,T.ErrorType>) -> Result<Effect<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Writer<Optional<A>,ElementType.ElementType.LogType>>,ErrorType>) -> Result<Effect<Writer<Optional<A>,ElementType.ElementType.LogType>>,ErrorType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Result.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Effect<Writer<Optional<A>,T.ElementType.ElementType.LogType>>,T.ErrorType>) -> Result<Effect<Writer<Optional<A>,T.ElementType.ElementType.LogType>>,T.ErrorType> where T: ResultType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Effect<Optional<A>>>,ErrorType>) -> Result<Optional<Effect<Optional<A>>>,ErrorType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Result.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Effect<Optional<A>>>,T.ErrorType>) -> Result<Optional<Effect<Optional<A>>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Optional<Optional<A>>>,ErrorType>) -> Result<Optional<Optional<Optional<A>>>,ErrorType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Result.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Optional<Optional<A>>>,T.ErrorType>) -> Result<Optional<Optional<Optional<A>>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Result<Optional<A>,ElementType.ElementType.ErrorType>>,ErrorType>) -> Result<Optional<Result<Optional<A>,ElementType.ElementType.ErrorType>>,ErrorType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Result.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>,T.ErrorType>) -> Result<Optional<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Writer<Optional<A>,ElementType.ElementType.LogType>>,ErrorType>) -> Result<Optional<Writer<Optional<A>,ElementType.ElementType.LogType>>,ErrorType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Result.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Writer<Optional<A>,T.ElementType.ElementType.LogType>>,T.ErrorType>) -> Result<Optional<Writer<Optional<A>,T.ElementType.ElementType.LogType>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Result<Effect<Optional<A>>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Effect<Optional<A>>,ElementType.ErrorType>,ErrorType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Result.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Result<Effect<Optional<A>>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Effect<Optional<A>>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Result<Optional<Optional<A>>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Optional<Optional<A>>,ElementType.ErrorType>,ErrorType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Result.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Result<Optional<Optional<A>>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Optional<Optional<A>>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Result<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Result.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Result<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Result<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Result.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Result<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Effect<Optional<A>>,ElementType.LogType>,ErrorType>) -> Result<Writer<Effect<Optional<A>>,ElementType.LogType>,ErrorType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Result.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Effect<Optional<A>>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Effect<Optional<A>>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Optional<Optional<A>>,ElementType.LogType>,ErrorType>) -> Result<Writer<Optional<Optional<A>>,ElementType.LogType>,ErrorType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Result.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Optional<Optional<A>>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Optional<Optional<A>>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType>) -> Result<Writer<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Result.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType>) -> Result<Writer<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Result.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Effect<Optional<A>>>,LogType>) -> Writer<Effect<Effect<Optional<A>>>,LogType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Writer.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Effect<Optional<A>>>,T.LogType>) -> Writer<Effect<Effect<Optional<A>>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Optional<Optional<A>>>,LogType>) -> Writer<Effect<Optional<Optional<A>>>,LogType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Writer.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Optional<Optional<A>>>,T.LogType>) -> Writer<Effect<Optional<Optional<A>>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Result<Optional<A>,ElementType.ElementType.ErrorType>>,LogType>) -> Writer<Effect<Result<Optional<A>,ElementType.ElementType.ErrorType>>,LogType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Writer.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>,T.LogType>) -> Writer<Effect<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: EffectType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Writer<Optional<A>,ElementType.ElementType.LogType>>,LogType>) -> Writer<Effect<Writer<Optional<A>,ElementType.ElementType.LogType>>,LogType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Writer.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Effect<Writer<Optional<A>,T.ElementType.ElementType.LogType>>,T.LogType>) -> Writer<Effect<Writer<Optional<A>,T.ElementType.ElementType.LogType>>,T.LogType> where T: WriterType, T.ElementType: EffectType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Effect<Optional<A>>>,LogType>) -> Writer<Optional<Effect<Optional<A>>>,LogType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Writer.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Effect<Optional<A>>>,T.LogType>) -> Writer<Optional<Effect<Optional<A>>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Optional<Optional<A>>>,LogType>) -> Writer<Optional<Optional<Optional<A>>>,LogType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Writer.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Optional<Optional<A>>>,T.LogType>) -> Writer<Optional<Optional<Optional<A>>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Result<Optional<A>,ElementType.ElementType.ErrorType>>,LogType>) -> Writer<Optional<Result<Optional<A>,ElementType.ElementType.ErrorType>>,LogType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Writer.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>,T.LogType>) -> Writer<Optional<Result<Optional<A>,T.ElementType.ElementType.ErrorType>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Writer<Optional<A>,ElementType.ElementType.LogType>>,LogType>) -> Writer<Optional<Writer<Optional<A>,ElementType.ElementType.LogType>>,LogType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Writer.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Writer<Optional<A>,T.ElementType.ElementType.LogType>>,T.LogType>) -> Writer<Optional<Writer<Optional<A>,T.ElementType.ElementType.LogType>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Effect<Optional<A>>,ElementType.ErrorType>,LogType>) -> Writer<Result<Effect<Optional<A>>,ElementType.ErrorType>,LogType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Writer.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Effect<Optional<A>>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Effect<Optional<A>>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Optional<Optional<A>>,ElementType.ErrorType>,LogType>) -> Writer<Result<Optional<Optional<A>>,ElementType.ErrorType>,LogType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Writer.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Optional<Optional<A>>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Optional<Optional<A>>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType>) -> Writer<Result<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Writer.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType>) -> Writer<Result<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Writer.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: EffectType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Effect<Optional<A>>,ElementType.LogType>,LogType>) -> Writer<Writer<Effect<Optional<A>>,ElementType.LogType>,LogType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Writer.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Effect<Optional<A>>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Effect<Optional<A>>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: EffectType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Optional<Optional<A>>,ElementType.LogType>,LogType>) -> Writer<Writer<Optional<Optional<A>>,ElementType.LogType>,LogType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Writer.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Optional<Optional<A>>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Optional<Optional<A>>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType>) -> Writer<Writer<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Writer.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Result<Optional<A>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType>) -> Writer<Writer<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> {
		return flatMapTT { $0.run(
			ifSome: { transform($0) },
			ifNone: { Writer.pure(Optional<A>.none) })
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Writer<Optional<A>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: OptionalType {
	return object.flatMapTTT(transform)
}
