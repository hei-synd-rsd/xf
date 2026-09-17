#include "xf/dispatcher.h"
#include "defaultdispatcherlauncher.h"

DefaultDispatcherLauncher::DefaultDispatcherLauncher(bool isActive /* = true */)
{
    interface::XFDispatcher::getDefaultInstance(isActive);
}
