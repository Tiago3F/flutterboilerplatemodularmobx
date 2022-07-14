// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProductStore on _ProductStoreBase, Store {
  late final _$listPostFutureAtom =
      Atom(name: '_ProductStoreBase.listPostFuture', context: context);

  @override
  ObservableFuture<List<Post>?> get listPostFuture {
    _$listPostFutureAtom.reportRead();
    return super.listPostFuture;
  }

  @override
  set listPostFuture(ObservableFuture<List<Post>?> value) {
    _$listPostFutureAtom.reportWrite(value, super.listPostFuture, () {
      super.listPostFuture = value;
    });
  }

  late final _$_ProductStoreBaseActionController =
      ActionController(name: '_ProductStoreBase', context: context);

  @override
  Future<dynamic> fetchPostData() {
    final _$actionInfo = _$_ProductStoreBaseActionController.startAction(
        name: '_ProductStoreBase.fetchPostData');
    try {
      return super.fetchPostData();
    } finally {
      _$_ProductStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listPostFuture: ${listPostFuture}
    ''';
  }
}
