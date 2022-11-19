#include "k_inc_man"
void main()
{
    if(GetGlobalBoolean("MAN_SITHBASE_SEALED") == FALSE && IsObjectPartyMember(GetEnteringObject()))
    {
        CancelCombat(GetFirstPC());
        SetGlobalBoolean("MAN_SITHBASE_SEALED",TRUE);
        UT_NPC_InitConversation("man27_sthlieu");
       // AssignCommand(GetObjectByTag("man27_sthlieu"),
                     // ActionStartConversation(GetFirstPC(),"",FALSE,CONVERSATION_TYPE_CINEMATIC,TRUE));
    }
    if(GetFirstPC() == GetEnteringObject())
    {
        SetStealthXPEnabled(FALSE);
    }
}
