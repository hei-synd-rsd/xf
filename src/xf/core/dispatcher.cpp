#include <config/xf-config.h>

#if (USE_XF_CORE_DISPATCHER_CLASS != 0)

#include <cassert>
#if defined(XF_TRACE_EVENT_PUSH_POP) && (XF_TRACE_EVENT_PUSH_POP != 0)
#include "trace/trace.h"
#endif // XF_TRACE_EVENT_PUSH_POP
#include "xf/interface/behavior.h"
#include "xf/dispatcher.h"

//static
interface::XFDispatcher * interface::XFDispatcher::getDefaultInstance(bool isActive /* = true */)
{
    static ::XFDispatcher defaultDispatcher(/* isActive = */ isActive, "DefaultDispatcher");
    return &defaultDispatcher;
}

//static
interface::XFDispatcher * interface::XFDispatcher::create(const char * threadName /* = nullptr */)
{
    return new ::XFDispatcher(/* isActive = */ true, threadName);
}

// TODO: Implement code for XFDispatcher class

#endif // USE_XF_CORE_DISPATCHER_CLASS
