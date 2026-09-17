#include <xf/event.h>
#include "board/ledcontroller.h"
#include "blinky.h"

Blinky::Blinky(uint8_t ledIndex, bool active /* = false */):
    XFBehavior(active),
    newState_(STATE_UNKOWN),
    delayedEventHandle(nullptr),
    pLedController_(nullptr)
{
    ledIndex_ = ledIndex;
}

Blinky::~Blinky()
{
}

void Blinky::initialize(LedController & ledController)
{
    pLedController_ = &ledController;
}

LedController & Blinky::getLedController() const
{
    return *pLedController_;
}

XFEventStatus Blinky::processEvent()
{
    const eMainState lastState = newState_;

    // Action on transition switch
    switch (lastState)
    {
    case STATE_UNKOWN:
    case STATE_INITIAL:
        if (getCurrentEvent()->getEventType() == XFEvent::Initial)
        {
            newState_ = STATE_LED_ON;
        }
        break;
    case STATE_LED_ON:
        if (getCurrentEvent() == delayedEventHandle &&
            getCurrentEvent()->getId() == TM_LED_ON_id)
        {
            if (delayedEventHandle) delayedEventHandle = nullptr;	// Delayed event (timeout) consumed
            newState_ = STATE_LED_OFF;
        }
        break;
    case STATE_LED_OFF:
        if (getCurrentEvent() == delayedEventHandle &&
            getCurrentEvent()->getId() == TM_LED_OFF_id)
        {
            if (delayedEventHandle) delayedEventHandle = nullptr;	// Delayed event (timeout) consumed
            newState_ = STATE_LED_ON;
        }
        break;
    }

    if (lastState != newState_)
    {
        // Action on entry switch
        switch (newState_)
        {
        case STATE_LED_ON:
            {
                delayedEventHandle = pushEvent(TM_LED_ON_id, 200);

                doLedOn();
            }
            break;
        case STATE_LED_OFF:
            {
                delayedEventHandle = pushEvent(TM_LED_OFF_id, 800);

                doLedOff();
            }
            break;
        default:
            break;
        }
    }

    return XFEventStatus::Consumed;	// We consume all given events/timeouts
}

void Blinky::doLedOn()
{
    getLedController().setLed(ledIndex_, true);
}

void Blinky::doLedOff()
{
    getLedController().setLed(ledIndex_, false);
}
