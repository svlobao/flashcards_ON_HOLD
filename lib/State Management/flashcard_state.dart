import 'dart:async';

class FlashcardState {
  final stateStreamController = StreamController<int>();
  StreamSink<int> get indexSink => stateStreamController.sink;
  Stream<int> get indexStream => stateStreamController.stream;
}
