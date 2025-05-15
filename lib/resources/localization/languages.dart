import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_us': {
          'email_hint': 'Enter your email',
          'internet_exception':
              'We\'re unable to show results. Please make sure that your internet is on.',
          'general_exception':
              'We\'re unable to show results. Please make sure that your internet is on.',
          'welcome_back': 'Welcome\nback',
          'login': 'L o g i n',
          'password_hint': 'Enter your password',
          'login_failed':'Login Failed',
          'login_successfully':'Login Successfully',
        },
        'urd_pk': {
          'email': 'Apni email darj krain',
        }
      };
}
