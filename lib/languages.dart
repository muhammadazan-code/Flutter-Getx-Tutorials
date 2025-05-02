import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_us': {
          'message': "What's your name ?",
          'name': "Azan",
        },
        'ur_pk': {
          'message': 'آپ کا نام کیا ہے؟',
          'name': 'اذان',
        }
      };
}
