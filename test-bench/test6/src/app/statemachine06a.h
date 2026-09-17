#ifndef STATEMACHINE06A_H
#define STATEMACHINE06A_H


#include <string>
#include "xf/behavior.h"


/**
 * \ingroup test06
 *
 * @brief State machine output some text every 500 milliseconds.
 *
 * Task implementing a little state machine saying something
 * in a predefined time interval. The text to output is passed
 * to the object at construction time. The time interval is fixed
 * to 500 milliseconds.
 *
 * Following you will find the state machine implemented by StateMachine06a:
 * \image html state-machine06a.png "State Machine implemented by StateMachine06a"
 */
class StateMachine06a : public XFBehavior
{
public:
    StateMachine06a(std::string text);
    ~StateMachine06a() override;

protected:
    XFEventStatus processEvent() override;  							///< Remplementation from XFReactive

    inline std::string getText() const { return text_; }				///< Returns text. Accessor for #_text.

protected:
    /**
     * Timeout identifier(s) for this state machine
     */
    typedef enum
    {
        Timeout_SAY_HELLO_id = 100	///< Timeout id for WAIT
    } eTimeoutId;

    /**
     * Enumeration used to have a unique identifier for every
     * state in the state machine.
     */
    typedef enum
    {
        STATE_UNKNOWN = 0,			///< Unknown state
        STATE_INITIAL = 1,			///< Initial state
        STATE_SAY_TEXT = 2			///< Say "text" state
    } eMainState;

    eMainState currentState_;               ///< Attribute indicating currently active state
    XFEventHandle delayedEventHandle;       ///< Handle to delayed event.

    std::string text_;				///< Text to display in state machine state
};

#endif // STATEMACHINE06A_H
