#include "trace/trace.h"
#include "testfactory06.h"

void Factory_initialize()
{
    TestFactory06::initialize();
}

void Factory_build()
{
    TestFactory06::build();
}

DefaultDispatcherLauncher launcher(/* isActive = */ true);      // Attentions: Needs to be created early to force an active default dispatcher!
                                                                //             Needs to be called prior to other state machine requesting a passiv
                                                                //             default dispatcher!
LedController TestFactory06::ledController_;
StateMachine06a TestFactory06::task01_("Tick 500ms");           // Using LED 1
Blinky TestFactory06::blinkyWithDefaultDispatcher_(0, false);   // Using LED 0
Blinky TestFactory06::blinkyWithOwnDispatcher_(2, true);        // Using LED 2

TestFactory06::TestFactory06()
{

}

// static
void TestFactory06::initialize()
{
    Trace::initialize();

    blinkyWithDefaultDispatcher_.initialize(ledController_);
    blinkyWithOwnDispatcher_.initialize(ledController_);
}

// static
void TestFactory06::build()
{
    Trace::out("Starting test6...");
    Trace::out("---------------------");

    // Start state machine(s)
    blinkyWithDefaultDispatcher_.startBehavior();
    blinkyWithOwnDispatcher_.startBehavior();
    task01_.startBehavior();
}
