import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

// BaseView 'ı sayfalar için kullanıyoruz bu yüzden stateful oalrak extends ettik

class BaseView<T extends Store> extends StatefulWidget {
  final Widget Function(BuildContext context, T value) onPageViewBuilder;
  // dart gelecek olan T type 'ını anlayamıyor o yüzden bu satır var
  final T viewModel;
  final Function(T model) onModelReady;
  final VoidCallback? onDispose;

  const BaseView({
    Key? key,
    required this.onPageViewBuilder,
    required this.viewModel,
    required this.onModelReady,
    this.onDispose,
  }) : super(key: key);

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends Store> extends State<BaseView<T>> {
  late T model;
  @override
  void initState() {
    model = widget.viewModel;
    widget.onModelReady(model);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    if (widget.onDispose != null) widget.onDispose!();
  }

  @override
  Widget build(BuildContext context) {
    return widget.onPageViewBuilder(context, model);
  }
}
