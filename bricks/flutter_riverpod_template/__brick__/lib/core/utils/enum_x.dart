/// [ConverToEnumX] - It is used for converting the raw string to generic enum type
extension ConverToEnumX on String {
  T? toEnum<T>(List<T> list) {
    return list
        .firstWhereOrNull((type) => type.toString().split(".").last == this);
  }
}

extension FirstWhereOrNullExtension<E> on Iterable<E> {
  E? firstWhereOrNull(bool Function(E) test) {
    for (E element in this) {
      if (test(element)) return element;
    }
    return null;
  }
}
