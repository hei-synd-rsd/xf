#include "board/board.h"
#include "xf/xf.h"
#include "app/testfactory06.h"

#ifdef XF_PORT_ZEPHYR
extern "C" int main(void)   /* Zephyr needs its proper prototype */
#else
int main(int argc, char *argv[])
#endif
{
#ifdef XF_PORT_ZEPHYR
    int argc = 0; char * argv[] = {nullptr};
#endif

    XF::initialize(argc, argv);

    TestFactory06 factory;

    factory.initialize();
    factory.build();

    return XF::exec();
}
