import 'dart:async';

import 'package:stamp_collector/count.dart';
class Bloc{

  int counter=0;
 StreamController<int> _streamController = StreamController<int>();

  StreamController<Count> _controller = StreamController<Count>();

  final _incStreamController = StreamController<int>();

  final _decStreamController = StreamController<int>();


  Stream<int> get streamout => _streamController.stream;

  StreamSink<int> get sinkin => _streamController.sink;

  StreamSink<int> get inc => _incStreamController.sink;

  StreamSink<int> get dec => _decStreamController.sink;

  StreamSink<Count> get events => _controller.sink;

  Bloc()
  {
      _controller.stream.listen(onData);
  }
 void onData(Count count){
   if(count is Increment)
   {
     counter++;
   }
   else{
     counter--;
   }
   sinkin.add(counter);
 }
 void dispose()
 {
   _streamController.close();
   _incStreamController.close();
   _decStreamController.close();
   _controller.close();
 }
}

