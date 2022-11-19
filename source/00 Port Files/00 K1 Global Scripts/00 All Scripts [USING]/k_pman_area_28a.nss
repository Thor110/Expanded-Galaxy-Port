#include "k_inc_man"
void main()
{
  //  if(UT_GetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01))
  //  {
     //   UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01,FALSE);
        if(GetGlobalBoolean("MAN_PRESS_ON") &&
           GetIsConversationActive() == FALSE)
        {
            int nIdx;
            object oPC = GetFirstPC();
            int nState = GetGlobalNumber("MAN_PRESS_STATE") + 1;
            effect eEffect = EffectChoke();

            if(nState >= 11)
            {
                eEffect = EffectDeath(TRUE);
            }

            if(nState == 1 || nState == 10 || nState == 11 )
            {
                AurPostString("trying to choke",5,5,5.0);
                ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eEffect,oPC,6.0f);
            }
            SetGlobalNumber("MAN_PRESS_STATE",nState);
            SetCustomToken( 51,IntToString( 60-(nState*6) ) );
            if (nState <= 10)
            {
                //AurPostString("Woof",5,5,5.0);
                BarkString(OBJECT_INVALID,32346 + nState);
            }
        }
 //  }
  /*  else
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01,TRUE);
    }*/
}
