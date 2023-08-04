#include "k_inc_man"
void main()
{
    object oEnter = GetEnteringObject();
    if(GetIsPC(oEnter))
    {
        //SetGlobalNumber("MAN_MISSING_PLOT",1); //remove this
        // palces the creature who opens the door to the relivant section of the map for
        // the missing selkath plot
        if(GetGlobalBoolean("MAN_SHALASQ_DONE") &&
           UT_GetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01) == FALSE)
        {
            UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01,TRUE);
            PlaceNPC("man27_seljed5");
        }
        if(HasNeverTriggered())
        {
            //AurPostString("Set",5,5,5.0);
            SetRoomFull("A",TRUE);
            SetRoomFull("D",TRUE);

    /*        int nVent = 1;
            object oVent = GetObjectByTag("man27_steam0" + IntToString(nVent));
            while (GetIsObjectValid(oVent))
            {
//                AurPostString("set " + IntToString(nVent),5,5+(nVent*2),5.0);
                SetVentActive(TRUE,oVent);
                nVent = nVent + 2;
                oVent = GetObjectByTag("man27_steam0" + IntToString(nVent));
            } */

        }
        //SetMaxStealthXP(1000);
    }
}
