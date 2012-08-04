#include <stdio.h>
#include <X11/extensions/scrnsaver.h>

main() {
  XScreenSaverInfo *info = XScreenSaverAllocInfo();
  Display *display = XOpenDisplay(0);

  XScreenSaverQueryInfo(display, DefaultRootWindow(display), info);
  printf("%u ms\n", info->idle);
}
