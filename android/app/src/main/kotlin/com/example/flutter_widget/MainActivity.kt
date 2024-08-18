package com.example.flutter_widget

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {

    private val methodChannel: String = "userName";

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor, methodChannel).setMethodCallHandler { call,
                                                                                        result ->
            if (call.method.equals("getUserName")) {
                println(
                    call.arguments<String>()
                )
                result.success(" shish")
            }
        }
    }

}
