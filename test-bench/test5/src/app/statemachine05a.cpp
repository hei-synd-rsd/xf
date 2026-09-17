#include <stdio.h>
#include "trace/trace.h"
#include "statemachine05a.h"

/**
 * Constructor
 *
 * \param text Text to display by the state machine.
 */
StateMachine05a::StateMachine05a(string text, bool active /* = false */):
	XFBehavior(active),
	delayedEventHandle(nullptr),
    text_(text)
{
	currentState_ = STATE_INITIAL;
}

StateMachine05a::~StateMachine05a()
{

}

XFEventStatus StateMachine05a::processEvent()
{
	eEventStatus eventStatus = XFEventStatus::Unknown;

	switch (currentState_)
	{
	case STATE_INITIAL:
		{
			if (getCurrentEvent()->getEventType() == XFEvent::Initial)
			{
				GEN(XFDefaultTransition());

				currentState_ = STATE_SAY_TEXT;

				eventStatus = XFEventStatus::Consumed;
			}
		}
		break;
	case STATE_SAY_TEXT:
		{
			if (getCurrentEvent()->getEventType() == XFEvent::DefaultTransition ||
				(getCurrentEvent() == delayedEventHandle && getCurrentEvent()->getId() == Timeout_SAY_HELLO_id))
			{
				if (delayedEventHandle) delayedEventHandle = nullptr;	// Delayed event (timeout) consumed

                delayedEventHandle = pushEvent(Timeout_SAY_HELLO_id, 500);

				{
					Trace::out(getText());
				}

				currentState_ = STATE_SAY_TEXT;

				eventStatus = XFEventStatus::Consumed;
			}
		}
		break;
	default:
		break;
	}

	return eventStatus;
}
