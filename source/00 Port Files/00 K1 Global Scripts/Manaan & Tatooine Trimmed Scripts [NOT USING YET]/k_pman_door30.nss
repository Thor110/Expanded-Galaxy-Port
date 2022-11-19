#include "k_inc_man"
void main()
{
    object oControl = GetPartyMemberByIndex(0);
    object oPC = GetFirstPC();
    if(oControl == oPC)
    {
        ActionStartConversation(oPC);
    }
    else
    {
        SetGlobalFadeOut();
        SetGlobalFadeIn(2.0, 2.0);
        SetPartyLeader(NPC_PLAYER);

        object oParty1 = GetPartyMemberByIndex(1);
        object oParty2 = GetPartyMemberByIndex(2);

        AssignCommand(oPC, DelayCommand(1.0, JumpToObject(GetObjectByTag("wp_press_pc"))));
        AssignCommand(oParty1, DelayCommand(1.5, JumpToObject(GetObjectByTag("wp_man26ac_party01"))));
        AssignCommand(oParty2, DelayCommand(1.5, JumpToObject(GetObjectByTag("wp_man26ac_party02"))));
        //P.W (June 7) No Clicks Added
        NoClicksFor(1.4);
        DelayCommand(1.2, ActionStartConversation(oPC, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));

    }

        //UT_NPC_InitConversation("man28ac_force01");




}
