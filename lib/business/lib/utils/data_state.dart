import 'package:equatable/equatable.dart';

class DataState<T> extends Equatable {
  final T data;
  final dynamic error;

  DataState({
    this.data,
    this.error,
  });

  @override
  List<Object> get props => [data, error];

  @override
  bool get stringify => true;
}
