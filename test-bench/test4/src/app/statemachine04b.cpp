#include <stdio.h>
#include "trace/trace.h"
#include "events/evrestart.h"
#include "statemachine04b.h"


StateMachine04b::StateMachine04b() :
	delayedEventHandle(nullptr)
{
	currentState_ = STATE_INITIAL;
}

StateMachine04b::~StateMachine04b()
{

}

/**
 * Implements state machine behavior.
 */
XFEventStatus StateMachine04b::processEvent()
{
	eEventStatus eventStatus = XFEventStatus::Unknown;

	// Every time receiving an evRestart event, reset state machine
	if (isRestartEvent())
	{
		// Remove delayed event produced in WAIT state
        cancelEvent(delayedEventHandle);
		delayedEventHandle = nullptr;

		currentState_ = STATE_INITIAL;
	}

	switch (currentState_)
	{
	case STATE_INITIAL:
		{
			if (isRestartEvent() ||
				getCurrentEvent()->getEventType() == XFEvent::Initial)
			{
				{
					timeout_ = 0;
				}

				GEN(XFDefaultTransition());

				currentState_ = STATE_WAIT;
				eventStatus = XFEventStatus::Consumed;
			}
		}
		break;
	case STATE_WAIT:
		{
			if (getCurrentEvent()->getEventType() == XFEvent::DefaultTransition ||
				isDelayedEvent(delayedEventHandle))
			{
				if (isDelayedEvent(delayedEventHandle))
				{
					Trace::out("SM04b: Timeout %d", ++timeout_);
				}

                delayedEventHandle = pushEvent(Timeout_WAIT_id, 1000);

				currentState_ = STATE_WAIT;
				eventStatus = XFEventStatus::Consumed;
			}
		}
		break;
	default:
		break;
	}

	return eventStatus;
}

bool StateMachine04b::isDelayedEvent(XFEventHandle delayedEventHandle)
{
	return (this->delayedEventHandle && getCurrentEvent() == delayedEventHandle) ? true : false;
}

bool StateMachine04b::isRestartEvent() const
{
	return (getCurrentEvent()->getEventType() == XFEvent::Event &&
			getCurrentEvent()->getId() == EventId::evRestart);
}
