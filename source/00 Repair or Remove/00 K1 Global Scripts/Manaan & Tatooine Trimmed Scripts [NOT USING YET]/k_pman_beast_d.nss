#include "k_inc_debug"
void main()
{
    int nEvent = GetUserDefinedEventNumber();
    switch (nEvent)
    {
        case 1003:
        {
            //Db_PostString("Hello",5,5,10.0);
            object oTarget = GetAttackTarget();
            ApplyEffectToObject(DURATION_TYPE_INSTANT,EffectDeath(),oTarget);
        }
        break;
    }
}
