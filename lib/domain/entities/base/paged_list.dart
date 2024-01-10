import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/ui/ui_constants.dart';

part 'paged_list.freezed.dart';

@freezed
class PagedList<T> with _$PagedList<T> {
  const PagedList._();

  const factory PagedList({
    required List<T> items,
    required int page,
    required int pageSize,
    @Default(false) bool isLastPage,
  }) = _PagedList<T>;

  factory PagedList.initial() => PagedList<T>(
        items: <T>[],
        page: PagingConstants.initialPage,
        pageSize: PagingConstants.defaultPageSize,
      );

  bool get hasNext => !isLastPage;

  PagedList<T> hasReachedLastPage() {
    return copyWith(isLastPage: true);
  }

  PagedList<T> nextPage() {
    return copyWith(page: page + 1);
  }

  PagedList<T> removeItem(T item) {
    final newItems = items.where((element) => element != item).toList();

    return copyWith(items: newItems);
  }

  PagedList<T> addItem(T item) {
    final newItems = [item, ...items];

    return copyWith(items: newItems);
  }

  PagedList<T> replaceItem(T oldItem, T newItem) {
    final newItems = items.map((e) => e == oldItem ? newItem : e).toList();

    return copyWith(items: newItems);
  }

  PagedList<T> replaceAll(List<T> newItems) {
    return copyWith(items: newItems);
  }
}
