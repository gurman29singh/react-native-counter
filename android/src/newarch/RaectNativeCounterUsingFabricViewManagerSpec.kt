package com.raectnativecounterusingfabric

import android.view.View

import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.ViewManagerDelegate
import com.facebook.react.viewmanagers.RaectNativeCounterUsingFabricViewManagerDelegate
import com.facebook.react.viewmanagers.RaectNativeCounterUsingFabricViewManagerInterface

abstract class RaectNativeCounterUsingFabricViewManagerSpec<T : View> : SimpleViewManager<T>(), RaectNativeCounterUsingFabricViewManagerInterface<T> {
  private val mDelegate: ViewManagerDelegate<T>

  init {
    mDelegate = RaectNativeCounterUsingFabricViewManagerDelegate(this)
  }

  override fun getDelegate(): ViewManagerDelegate<T>? {
    return mDelegate
  }
}
