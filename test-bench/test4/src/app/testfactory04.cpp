#include "xf/xf.h"
#include "trace/trace.h"
#include "testfactory04.h"

void Factory_initialize()
{
    TestFactory04::initialize();
}

void Factory_build()
{
    TestFactory04::build();
}

StateMachine04a TestFactory04::task01_;
StateMachine04b TestFactory04::task02_;

TestFactory04::TestFactory04()
{
}

// static
void TestFactory04::initialize()
{
}

// static
void TestFactory04::build()
{
	Trace::out("Starting test4...");
	Trace::out("---------------------");

	// Set up association(s)
	task01_.setNeighbour(&task02_);

	// Start state machine(s)
	task01_.startBehavior();
	task02_.startBehavior();
}
