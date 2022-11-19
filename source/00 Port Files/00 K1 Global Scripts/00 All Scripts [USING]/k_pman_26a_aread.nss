#include "k_inc_man"
void PlaceTrialNPC(string sTag)
{
    object oTrialNPC = GetObjectByTag(sTag);
    object oTarget = GetObjectByTag("trial_" + sTag);
    if(GetIsObjectValid(oTrialNPC))
    {
        AssignCommand(oTrialNPC,JumpToObject(oTarget));
    }
    else
    {
        CreateObject(OBJECT_TYPE_CREATURE,sTag,GetLocation(oTarget));
    }
}

void main()
{
    object oSunry = GetObjectByTag("man26_sunry");
    object oElora = GetObjectByTag("man26_elora");
    object oGuard = GetObjectByTag("man26_selguard");
    object oWP1 = GetObjectByTag("man26a_eloraleave");
    object oWP2 = GetObjectByTag("man26a_sunryleave");
    int nEvent = GetUserDefinedEventNumber();
    switch (nEvent)
    {
        case 100:
        {
            DestroyObject(GetObjectByTag("man26_repac"));
            PlaceTrialNPC("man26_ignus");
            PlaceTrialNPC("man26_firith");
            PlaceTrialNPC("man26_gluupor");
            PlaceTrialNPC("man26_sithac");
            PlaceTrialNPC("man26_elora");
            PlaceTrialNPC("man26_sunry");
            PlaceTrialNPC("man26_selguard");
            //CreateObject(OBJECT_TYPE_PLACEABLE,
              //           "man26aa_cage",
                //         GetLocation(GetObjectByTag("trial_man26_cage")));

        }

        break;
        case 110:
        {
            object oJudge = GetObjectByTag("man26_trialobj");
            if(GetFirstPC() != GetPartyMemberByIndex(0))
            {
                SetPartyLeader(NPC_PLAYER);
            }
            object oNPC1 = GetPartyMemberByIndex(1);
            object oNPC2 = GetPartyMemberByIndex(2);
            ExecuteScript("k_pman_npcstop",oNPC1);
            ExecuteScript("k_pman_npcstop",oNPC2);
            AssignCommand(GetFirstPC(),JumpToObject(GetObjectByTag("trial_pc")));
            AssignCommand(oNPC1,JumpToObject(GetObjectByTag("trial_npc1")));
            AssignCommand(oNPC2,JumpToObject(GetObjectByTag("trial_npc2")));
            //P.W. (June 7) - No clicks added.
            NoClicksFor(0.3);
            DelayCommand(0.1f,SignalEvent(oJudge,EventUserDefined(10)));//signals the conversation
        }
        break;
        //sunry found innocent
        case 120:
        {
            AssignCommand(oSunry,ActionForceMoveToObject(oWP2));
            AssignCommand(oElora,ActionForceMoveToObject(oWP1));
        }
        break;
        //sunry found guilty
        case 130:
        {
            DestroyObject(GetObjectByTag("man26_ignus"));
            DestroyObject(GetObjectByTag("man26_firith"));
            DestroyObject(GetObjectByTag("man26_gluupor"));
            DestroyObject(GetObjectByTag("man26_sithac"));
            DestroyObject(GetObjectByTag("man26_elora"));
            DestroyObject(GetObjectByTag("man26_sunry"));
            DestroyObject(GetObjectByTag("POST_man26_selguard"));
            //AssignCommand(oGuard,JumpToObject(GetObjectByTag("POST_man26_selguard")));
            SetLocked(GetObjectByTag("man26aa_door02"),TRUE);
            SetGlobalFadeOut();
            DelayCommand(3.0f,SetGlobalFadeIn(0.0f,4.0f));
        }
        break;
    }
}

