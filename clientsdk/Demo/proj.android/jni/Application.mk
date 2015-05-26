APP_STL := gnustl_static

APP_CPPFLAGS := -frtti -DCC_ENABLE_CHIPMUNK_INTEGRATION=1 -std=c++11 -fsigned-char
APP_LDFLAGS := -latomic

## step 1
APP_CPPFLAGS += -DACE_HAS_CUSTOM_EXPORT_MACROS=0 -D__ACE_INLINE__ -DACE_AS_STATIC_LIBS  -DTAO_AS_STATIC_LIBS

ifeq ($(NDK_DEBUG),1)
  APP_CPPFLAGS += -DCOCOS2D_DEBUG=1
  APP_OPTIM := debug
else
  APP_CPPFLAGS += -DNDEBUG
  APP_OPTIM := release
endif