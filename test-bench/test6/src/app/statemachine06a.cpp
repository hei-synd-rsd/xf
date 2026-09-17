#include <cstdio>
#include "trace/trace.h"
#include "board/ledcontroller.h"
#include "xf/defaulttransition.h"
#include "statemachine06a.h"

/**
 * Constructor
 *
 * \param text Text to display by the state machine.
 */
StateMachine06a::StateMachine06a(std::string text):
    currentState_(STATE_UNKNOWN),
    delayedEventHandle(nullptr),
    text_(text)
{
    currentState_ = STATE_INITIAL;
}

StateMachine06a::~StateMachine06a()
{

}

XFEventStatus StateMachine06a::processEvent()
{
    eEventStatus eventStatus = XFEventStatus::Unknown;

    switch (currentState_)
    {
    case STATE_INITIAL:
        {
            if (getCurrentEvent()->getEventType() == XFEvent::Initial)
            {
                GEN(XFDefaultTransition);

                currentState_ = STATE_SAY_TEXT;

                eventStatus = XFEventStatus::Consumed;
            }
        }
        break;
    case STATE_SAY_TEXT:
        {
            if (getCurrentEvent()->getEventType() == XFEvent::DefaultTransition ||
                (getCurrentEvent() == delayedEventHandle &&
                 getCurrentEvent()->getId() == Timeout_SAY_HELLO_id))
            {
                {
                    static bool flip = true;

                    LedController::getInstance().setLed(1, flip = !flip);
                    Trace::out(getText());
                }

                if (delayedEventHandle) delayedEventHandle = nullptr;	// Delayed event (timeout) consumed

                delayedEventHandle = pushEvent(Timeout_SAY_HELLO_id, 500);

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
