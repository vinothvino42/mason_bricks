/// [ChunkList] - It is used for splitting the list items into a chunks of lists
extension ChunkList on List {
  List chunk(int chunkSize) {
    List chunks = [];
    int len = length;
    for (var i = 0; i < len; i += chunkSize) {
      int size = i + chunkSize;
      chunks.add(sublist(i, size > len ? len : size));
    }
    return chunks;
  }
}
