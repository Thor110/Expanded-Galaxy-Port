// sets a boolean to signify the patrol droids have been shut down.
// Shuts down all of rhe patrol droids on the level
#include "k_inc_man"
void main()
{
    UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01,TRUE);
    int nNth = 0;
    object oDroid = GetObjectByTag("man28_pdroid",nNth);
    while (GetIsObjectValid(oDroid))
    {
        //AssignCommand(oDroid,SetIsDestroyable(FALSE));
        //AssignCommand(oDroid,ApplyEffectToObject(DURATION_TYPE_INSTANT,EffectDeath(),oDroid));
        ChangeToStandardFaction(oDroid,STANDARD_FACTION_NEUTRAL);
        AssignCommand(oDroid,ClearAllActions());
        AssignCommand(oDroid,ActionForceMoveToObject(GetObjectByTag("man28_droid_home"),TRUE));
        nNth++;
        oDroid = GetObjectByTag("man28_pdroid",nNth);

    }
}
