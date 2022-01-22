# Flutter Plugin: detect device zoom

A flutter plugin to identify if the device have the **zoom** on or off (the `nativeScale` different).

## Getting Started

In your `pubspec.yml` add the following line:


	dependencies:
	  flutter:
	    sdk: flutter
	
	  [...]
	  plugin_zoomed:
	    git:
	      url: https://github.com/elpsk/audio_wave
	      ref: main
	
	  [...]
	  
## How to use

Import your new plugin:

	import 'package:plugin_zoomed/plugin_zoomed.dart';

and use it in a `Future` way:

    PluginZoomed.isScreenZoomed.then((value) => 
      setState(() {
        print( "Do something with boolean ${value}");
      })
    );

---

Feel free to do merge request and improve this part, also on Android.
