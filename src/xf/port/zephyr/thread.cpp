#include <config/xf-config.h>

#if (USE_XF_PORT_ZEPHYR_THREAD_CLASS != 0)

#include <cassert>
#include <string.h>
#include "thread.h"

#if !defined(XFTHREAD_ZEPHYR_STACK_SIZE)
    #define XFTHREAD_ZEPHYR_STACK_SIZE 2048
#endif

/**
 * @brief Implementation of interface::XFThread::create method.
 */
interface::XFThread * interface::XFThread::create(interface::XFThreadEntryPointProvider * pProvider,
                                                  interface::XFThread::EntryMethodBody entryMethod,
                                                  const char * threadName,
                                                  const uint32_t stackSize /* = 0 */)
{
    return new ::XFThread(pProvider, entryMethod, threadName, stackSize);
}

int XFThread::initialPriority = 1;

// TODO: Implement code for XFThread class

#endif // USE_XF_PORT_ZEPHYR_THREAD_CLASS
