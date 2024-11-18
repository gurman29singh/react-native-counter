#ifdef RCT_NEW_ARCH_ENABLED
#import "RaectNativeCounterUsingFabricView.h"

#import "ComponentDescriptors.h"
#import "EventEmitters.h"
#import "Props.h"
#import "RCTComponentViewHelpers.h"

#import "RCTFabricComponentsPlugins.h"
#import "Utils.h"

using namespace facebook::react;

@interface RaectNativeCounterUsingFabricView () <RCTRaectNativeCounterUsingFabricViewViewProtocol>

@end

@implementation RaectNativeCounterUsingFabricView {
    UIView * _view;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<RaectNativeCounterUsingFabricViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const RaectNativeCounterUsingFabricViewProps>();
    _props = defaultProps;

    _view = [[UIView alloc] init];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<RaectNativeCounterUsingFabricViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<RaectNativeCounterUsingFabricViewProps const>(props);

    if (oldViewProps.color != newViewProps.color) {
        NSString * colorToConvert = [[NSString alloc] initWithUTF8String: newViewProps.color.c_str()];
        [_view setBackgroundColor: [Utils hexStringToColor:colorToConvert]];
    }

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> RaectNativeCounterUsingFabricViewCls(void)
{
    return RaectNativeCounterUsingFabricView.class;
}

@end
#endif
