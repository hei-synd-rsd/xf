#ifndef BLINKY_H
#define BLINKY_H

#include "xf/behavior.h"

class LedController;

/**
 * \ingroup test06
 *
 * @brief A simple LED blinker
 *
 * Blinky lets blink a LED in a second interval.
 *
 * The Blinky state machine looks as follows:
 * \image html smd-blinky.png "Blinky State Machine"
 */
class Blinky : public XFBehavior
{
public:
    Blinky(uint8_t ledIndex, bool active = false);      ///< Constructor
    ~Blinky() override;

    void initialize(LedController & ledController);     ///< Initializes the object.

protected:
    LedController & getLedController() const;           ///< Internal access to LedController.

    // XFReactive implementation
protected:
    XFEventStatus processEvent() override;              ///< Blinky state machine implemenentation.

protected:	// State machine stuff
    /**
     * Timeout identifier(s) for this state machine
     */
    typedef enum
    {
        TM_LED_ON_id =  100,		///< LED on timeout id
        TM_LED_OFF_id = 101			///< LED off timeout id
    } eTimeoutId;                   ///< State machine timeout identifiers.

    /**
     * Enumeration used to have a unique identifier for every
     * state in the state machine.
     */
    typedef enum
    {
        STATE_UNKOWN = 0,			///< Unknown state
        STATE_INITIAL = 1,			///< Initial state
        STATE_LED_ON = 2,			///< LED on state
        STATE_LED_OFF = 3			///< LED off state
    } eMainState;                   ///< State machine states.

    eMainState newState_;                   ///< Attribute indicating currently active state
    XFEventHandle delayedEventHandle;       ///< Handle to delayed event.

protected:	// Action methods (called in states of state machine)
    void doLedOn();             ///< Enabled LED
    void doLedOff();            ///< Disale LED

private:
    LedController * pLedController_;    ///< Pointer to LED controller.

    uint8_t ledIndex_;                  ///< Index of LED to be used in state machine.
};

#endif // BLINKY_H
