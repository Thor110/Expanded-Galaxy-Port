#include "k_inc_man"
#include "k_inc_debug"
void main()
{
    Db_PostString("Delay Trial Firing");
    //UT_StoreParty();
    //P.W.(June 7) - No Clicks
    NoClicksFor(0.7);
    //P.W.(June 3) - Put a delay on the signal of this event to keep it from interfering with Dialogue.
    DelayCommand(0.5, SignalEvent(GetArea(OBJECT_SELF),EventUserDefined(110)));
    SetGlobalFadeOut();
    DelayCommand(2.0,SetGlobalFadeIn(0.0,1.0));
}
