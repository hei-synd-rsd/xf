#include <config/xf-config.h>

#if (USE_XF_PORT_ZEPHYR_MUTEX_CLASS != 0)

#include <cassert>
#include "critical/critical.h"
#include "mutex.h"

/**
 * @brief Implementation of interface::XFMutex::create method.
 */
interface::XFMutex * interface::XFMutex::create()
{
    return new ::XFMutex;
}

// TODO: Implement code for XFMutex class

#endif // USE_XF_PORT_ZEPHYR_MUTEX_CLASS
