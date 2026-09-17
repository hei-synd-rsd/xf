#include <config/xf-config.h>

#if (USE_XF_PORT_ZEPHYR_EVENT_CLASS != 0)

#include <cassert>
#include <zephyr/kernel.h>
#include "xf/interface/behavior.h"
#include "xf/event.h"

uint32_t XFEvent::startTimer(int32_t timeoutInMilliseconds)
{
    // TODO: Create and start a Zephyr timer:
    //       - Use 'k_malloc' to dynamically allocate the k_timer structure: https://docs.zephyrproject.org/latest/kernel/memory_management/heap.html
    //       - Learn how to create and start a Zephyr timer: https://docs.zephyrproject.org/latest/kernel/services/timing/timers.html
    //       - Use 'timeoutHandle' attribute to keep a reference to the created timer
    //       - Initialize timer and use the callback methods 'XFEvent::onTimerTimeout' and 'XFEvent::onTimerCanceled'
    //       - Use 'k_timer_user_data_set' to keep a reference to the current event (used afterwards in callback methods)
    //       - Return 'timeoutHandle' attribute to provide the caller a handle to the timer

    return timeoutHandle;
}

// TODO: Implement code for XFEvent class

#endif // USE_XF_PORT_ZEPHYR_EVENT_CLASS
