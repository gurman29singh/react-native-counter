package com.raectnativecounterusingfabric

import android.graphics.Color
import com.facebook.react.module.annotations.ReactModule
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.ThemedReactContext
import com.facebook.react.uimanager.annotations.ReactProp

@ReactModule(name = RaectNativeCounterUsingFabricViewManager.NAME)
class RaectNativeCounterUsingFabricViewManager :
  RaectNativeCounterUsingFabricViewManagerSpec<RaectNativeCounterUsingFabricView>() {
  override fun getName(): String {
    return NAME
  }

  public override fun createViewInstance(context: ThemedReactContext): RaectNativeCounterUsingFabricView {
    return RaectNativeCounterUsingFabricView(context)
  }

  @ReactProp(name = "color")
  override fun setColor(view: RaectNativeCounterUsingFabricView?, color: String?) {
    view?.setBackgroundColor(Color.parseColor(color))
  }

  companion object {
    const val NAME = "RaectNativeCounterUsingFabricView"
  }
}
