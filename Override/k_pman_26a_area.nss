#include "k_inc_man"
void main()
{
   //AddAvailableNPCByTemplate(NPC_JOLEE,"p_jolee");//remove this
    object oEnter = GetEnteringObject();
    if(GetIsPC(oEnter))
    {
        InitiateSitters();
        if(IsAvailableCreature(IsNPCPartyMember(8)) &&
           GetGlobalNumber("MAN_MURDER_PLOT") == 0)
        {
            SetGlobalNumber("MAN_MURDER_PLOT",1);
            PlaceNPC("man26_elora");
        }
        if(GetGlobalBoolean("MAN_TRIAL2_START"))
        {
            SetGlobalBoolean("MAN_TRIAL2_START",FALSE);
            object oLawyer1 = GetObjectByTag("man26_repac");
            object oLawyer2 = GetObjectByTag("man26_sithac");
            object oCut = GetObjectByTag("man26_trialobj2");
            AssignCommand(oLawyer1,JumpToObject(GetObjectByTag("wp_man26_replaw2")));
            AssignCommand(oLawyer2,JumpToObject(GetObjectByTag("wp_man26_sithlaw2")));
            AssignCommand(oCut,ActionStartConversation(GetFirstPC(),"",FALSE,CONVERSATION_TYPE_CINEMATIC,TRUE));
        }
        if(GetGlobalBoolean("MAN_SITHBASE_SEALED") &&
           HasNeverTriggered())
        {
            UT_StoreParty();
            AssignCommand(GetObjectByTag("man26_selarb"),ActionStartConversation(GetFirstPC(),"",FALSE,CONVERSATION_TYPE_CINEMATIC,TRUE));
            //UT_NPC_InitConversation("man26_selarb");
        }
    }
}
