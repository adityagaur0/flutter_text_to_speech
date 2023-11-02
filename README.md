# text_to_speech
***Implement the flutter text to speech (TTS) library and create this awesome conversion.***


<img src="https://github.com/adityagaur0/text_to_speech/assets/112656570/27d2d260-8c3c-4d3e-bf99-31a50b711a0d" width="300" height="600">

## How to run it:
1. First, add flutter_tts to your project by adding the following lines in pubspec.yaml file:
   ```yaml
   dependencies:
    flutter:
      sdk: flutter
    flutter_tts:
2. Change the minimum Android sdk version to 21 (or higher) in your android/app/build.gradle file.
   
   To change it refer to Repo: 
4. add **TextToSpeech.Engine.INTENT_ACTION_TTS_SERVICE** in the queries elements at AndroidManifest.xml file:
   ```xml
   <queries>
      <intent>
       <action android:name="android.intent.action.TTS_SERVICE" />
      </intent>
   </queries>

For example:

<img src="https://github.com/adityagaur0/text_to_speech/assets/112656570/a422357d-1fde-457d-b638-41ae5b40ceba" width="500">

4. Import it:

   
   `import 'package:flutter_tts/flutter_tts.dart';`

5. Run main.dart: 
   https://github.com/adityagaur0/text_to_speech/blob/fc7fd0fc942c66143fd987a01d8a857fb18f813b/lib/main.dart
   


   


