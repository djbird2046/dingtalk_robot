import 'dto.dart';

abstract class DingtalkRobotMessageHandler {
  Future<void> onTextMessage(TextMessage message);
  Future<void> onRichTextMessage(RichTextMessage message);
  Future<void> onPictureMessage(PictureMessage message);
  Future<void> onAudioMessage(AudioMessage message);
  Future<void> onVideoMessage(VideoMessage message);
  Future<void> onFileMessage(FileMessage message);
  Future<void> onNotSupportedMessage(BaseMessage message);
}