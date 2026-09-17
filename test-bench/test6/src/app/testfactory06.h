#ifndef TESTFACTORY06_H
#define TESTFACTORY06_H

//
// What is seen only by the C++ compiler
//
#ifdef __cplusplus

#include "defaultdispatcherlauncher.h"
#include "statemachine06a.h"
#include "board/ledcontroller.h"
#include "blinky.h"

/**
 * \ingroup test06
 *
 * Factory creating all objects used in test6.
 *
 */
class TestFactory06
{
public:
    TestFactory06();                                ///< Constructor

    static void initialize();                       ///< Initializes the factory
    static void build();                            ///< Creates components and initializes relations

protected:
    static LedController ledController_;            ///< The single instance of LedController

    static DefaultDispatcherLauncher launcher;      ///< Forces default dispatcher to launch active (with it's own thread)
    static StateMachine06a task01_;                 ///< Instance of StateMachine06a saying 'Tick 500ms'
    static Blinky blinkyWithDefaultDispatcher_;     ///< First blinky instance running with the default dispatcher
    static Blinky blinkyWithOwnDispatcher_;         ///< Second blinky running with its own active dispatcher
};

#endif // __cplusplus

//
// What is seen by the C and C++ compiler
//
#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

void Factory_initialize();
void Factory_build();

#ifdef __cplusplus
}
#endif // __cplusplus
#endif // TESTFACTORY06_H
