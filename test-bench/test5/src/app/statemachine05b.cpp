#include <stdio.h>
#include "trace/trace.h"
#include "statemachine05b.h"

/**
 * Constructor
 *
 * \param text Text to display by the state machine.
 */
StateMachine05b::StateMachine05b(string text, bool active /* = false */):
	XFBehavior(active),
	delayedEventHandle(nullptr),
    text_(text)
{
	currentState_ = STATE_INITIAL;
}

StateMachine05b::~StateMachine05b()
{

}

XFEventStatus StateMachine05b::processEvent()
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

                delayedEventHandle = pushEvent(Timeout_SAY_HELLO_id, 1000);

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
