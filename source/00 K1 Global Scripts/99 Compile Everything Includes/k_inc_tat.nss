//::///////////////////////////////////////////////
//:: Include
//:: k_inc_tat
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    This is the include file for Tatooine.
*/
//:://////////////////////////////////////////////
//:: Created By: John Winski
//:: Created On: September 3, 2002
//:://////////////////////////////////////////////
#include "k_inc_utility"
#include "k_inc_generic"
// racer constants
int NONE = 0;
int GARM = 1;
int YUKA = 2;
int ZORIIS = 3;

// race time constants
int GARM_TIME = 2600;
int YUKA_TIME = 2470;
int ZORIIS_TIME = 2350;
string RACE_DEFAULT = GetStringByStrRef(32289);

int GetGammoreansDeadGlobal()
{
    return GetGlobalBoolean("tat_GammoreansDead");
}

void SetGammoreansDeadGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_GammoreansDead", bValue);
    }
    return;
}

int GetMetKomadLodgeGlobal()
{
    return GetGlobalBoolean("tat_MetKomadLodge");
}

void SetMetKomadLodgeGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_MetKomadLodge", bValue);
    }
    return;
}

int GetSharinaAccusedGurkeGlobal()
{
    return GetGlobalBoolean("tat_SharinaAccused");
}

void SetSharinaAccusedGurkeGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_SharinaAccused", bValue);
    }
    return;
}

int GetKraytDeadGlobal()
{
    return GetGlobalBoolean("tat_KraytDead");
}

void SetKraytDeadGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_KraytDead", bValue);
    }
    return;
}

int GetKraytFightGlobal()
{
    return GetGlobalBoolean("tat_KraytFight");
}

void SetKraytFightGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_KraytFight", bValue);
    }
    return;
}

int GetTalkedToConserveGlobal()
{
    return GetGlobalBoolean("tat_talkconserve");
}

void SetTalkedToConserveGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_talkconserve", bValue);
    }
    return;
}

int GetUsedChokeOnCzerkaGlobal()
{
    return GetGlobalBoolean("tat_chokedczerka");
}

void SetUsedChokeOnCzerkaGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_chokedczerka", bValue);
    }
    return;
}

int GetTatooineRacerGlobal()
{
    return GetGlobalBoolean("tat_SwoopRacer");
}

void SetTatooineRacerGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_SwoopRacer", bValue);
    }

    return;
}

int GetLostLastRaceGlobal()
{
    return GetGlobalBoolean("tat_LostLastRace");
}

void SetLostLastRaceGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_LostLastRace", bValue);
    }

    return;
}

int GetTanisDeadGlobal()
{
    return GetGlobalBoolean("tat_TanisDead");
}

void SetTanisDeadGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_TanisDead", bValue);
    }

    return;
}

int GetPlayerDestroyedOneGlobal()
{
    return GetGlobalBoolean("tat_OneDroidDead");
}

void SetPlayerDestroyedOneGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_OneDroidDead", bValue);
    }

    return;
}

int GetTanisGiveUpGlobal()
{
    return GetGlobalBoolean("tat_TanisGiveUp");
}

void SetTanisGiveUpGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_TanisGiveUp", bValue);
    }

    return;
}

int GetAskAboutHuntGlobal()
{
    return GetGlobalBoolean("tat_AskAboutHunt");
}

void SetAskAboutHuntGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_AskAboutHunt", bValue);
    }

    return;
}

int GetGammoreanWarningGlobal()
{
    return GetGlobalBoolean("tat_TrustGammNot");
}

void SetGammoreanWarningGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_TrustGammNot", bValue);
    }

    return;
}

int GetGammoreanGoneGlobal()
{
    return GetGlobalBoolean("tat_GammGone");
}

void SetGammoreanGoneGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_GammGone", bValue);
    }

    return;
}

int GetGammoreanBribeGlobal()
{
    return GetGlobalBoolean("tat_GammBribe");
}

void SetGammoreanBribeGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_GammBribe", bValue);
    }

    return;
}

int GetRaceCompleteGlobal()
{
    return GetGlobalNumber("tat_RaceComplete");
}

void SetRaceCompleteGlobal(int bValue)
{
    SetGlobalNumber("tat_RaceComplete", bValue);

    return;
}

int GetSandHistoryStateGlobal()
{
    return GetGlobalNumber("tat_SandHistory");
}

void SetSandHistoryStateGlobal(int bValue)
{
    SetGlobalNumber("tat_SandHistory", bValue);

    return;
}

int GetToldHowToBeWarriorGlobal()
{
    return GetGlobalNumber("tat_SandWarrior");
}

void SetToldHowToBeWarriorGlobal(int bValue)
{
    SetGlobalNumber("tat_SandWarrior", bValue);

    return;
}

int GetRaceWonNotPaidGlobal()
{
    return GetGlobalBoolean("tat_NotPaid");
}

void SetRaceWonNotPaidGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_NotPaid", bValue);
    }

    return;
}

int GetSharinaPaidFullGlobal()
{
    return GetGlobalBoolean("tat_SharinaPaidFull");
}

void SetSharinaPaidFullGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_SharinaPaidFull", bValue);
    }

    return;
}

int GetTalkTanisGlobal()
{
    return GetGlobalBoolean("tat_TalkTanis");
}

void SetTalkTanisGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_TalkTanis", bValue);
    }

    return;
}

int GetMadTanisGlobal()
{
    return GetGlobalBoolean("tat_MadTanis");
}

void SetMadTanisGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_MadTanis", bValue);
    }

    return;
}

int GetTanisSavedGlobal()
{
    return GetGlobalBoolean("tat_TanisSaved");
}

void SetTanisSavedGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_TanisSaved", bValue);
    }

    return;
}

int GetTuskenJobGlobal()
{
    return GetGlobalBoolean("tat_TuskenJob");
}

void SetTuskenJobGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_TuskenJob", bValue);
    }

    return;
}

int GetJawaCaptiveGlobal()
{
    return GetGlobalNumber("tat_JawaCaptive");
}

void SetJawaCaptiveGlobal(int bValue)
{
    SetGlobalNumber("tat_JawaCaptive", bValue);

    return;
}

int GetIzizCaptiveGlobal()
{
    return GetGlobalNumber("tat_IzizCaptive");
}

void SetIzizCaptiveGlobal(int bValue)
{
    SetGlobalNumber("tat_IzizCaptive", bValue);

    return;
}

int GetIzizGotMadGlobal()
{
    return GetGlobalNumber("tat_IzizGotMad");
}

void SetIzizGotMadGlobal(int bValue)
{
    SetGlobalNumber("tat_IzizGotMad", bValue);

    return;
}

int GetGriffCaptiveGlobal()
{
    return GetGlobalNumber("tat_GriffCaptive");
}

void SetGriffCaptiveGlobal(int bValue)
{
    SetGlobalNumber("tat_GriffCaptive", bValue);

    return;
}

int GetMissionCaptiveGlobal()
{
    return GetGlobalNumber("tat_MissCaptive");
}

void SetMissionCaptiveGlobal(int bValue)
{
    SetGlobalNumber("tat_MissCaptive", bValue);

    return;
}

int GetFazzaPazzakStateGlobal()
{
    return GetGlobalNumber("tat_fazzpazzstate");
}

void SetFazzaPazzakStateGlobal(int bValue)
{
    SetGlobalNumber("tat_fazzpazzstate", bValue);

    return;
}

int GetGriffGreetaGlobal()
{
    return GetGlobalBoolean("tat_GriffGreeta");
}

void SetGriffGreetaGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_GriffGreeta", bValue);
    }
    return;
}

int GetGriffPortGlobal()
{
    return GetGlobalBoolean("tat_GriffPort");
}

void SetGriffPortGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_GriffPort", bValue);
    }
    return;
}

int GetDockingPaidLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_01 for the Czerka official in area kas_m17ab.

    return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_01);
}

void SetDockingPaidLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_01 for the Czerka official in area kas_m17ab.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetPlayerWarnedAboutQuestionsLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Sand People Storyteller in area tat_20aa.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetPlayerWarnedAboutQuestionsLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Sand People Storyteller in area tat_20aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetHK47CriticisedOnceLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for Sand People Storyteller in area tat_20aa.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetHK47CriticisedOnceLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for Sand People Storyteller in area tat_20aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetDorakNamedLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Dorak Quinn in area tat_m17ad.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetDorakNamedLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for the Dorak Quinn in area tat_m17ad.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetGurkePissedLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for the area tat_m17ad.

    return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_01);
}

void SetGurkePissedLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for the area tat_m17ad.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetGurkeNamedLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Gurke in area tat_m17ad.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetGurkeNamedLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Gurke in area tat_m17ad.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetJunixTatooineInfoLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Junix Nard in area tat_m17af.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetJunixTatooineInfoLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Junix nard in area tat_m17af.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetJunixSaidSwoopLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for Junix nard in area tat_m17af.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetJunixSaidSwoopLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for Junix nard in area tat_m17af.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetJunixSaidKorribanLocal()
{
    // This uses SW_PLOT_BOOLEAN_03 for Junix nard in area tat_m17af.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03);
}

void SetJunixSaidKorribanLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_03 for Junix nard in area tat_m17afd.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetJunixSaidKoltoLocal()
{
    // This uses SW_PLOT_BOOLEAN_04 for Junix nard in area tat_m17af.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04);
}

void SetJunixSaidKoltoLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_04 for Junix nard in area tat_m17af.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04, bValue);
    }

    return;
}

int GetJunixSaidWookieeLocal()
{
    // This uses SW_PLOT_BOOLEAN_05 for Junix nard in area tat_m17af.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_05);
}

void SetJunixSaidWookieeLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_05 for Junix nard in area tat_m17af.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_05, bValue);
    }

    return;
}

int GetCelisNicoInfoLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for the area tat_m17ae.

    return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_01);
}

void SetCelisNicoInfoLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for the area tat_m17ae.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetBulliedNicoLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for the area tat_m17ae.

    return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_02);
}

void SetBulliedNicoLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for the area tat_m17ae.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetCelisDealLocal()
{
    // This uses SW_PLOT_BOOLEAN_03 for the area tat_m17ae.

    return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_03);
}

void SetCelisDealLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_03 for the area tat_m17ae.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetNicoHappyLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Nico in the area tat_m17ae.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetNicoHappyLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Nico in the area kas_m17ae.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetNicoTalkTimesSubstituteLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for Nico in the area tat_m17ae.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetNicoTalkTimesSubstituteLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for Nico in the area tat_m17ae.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetMottaPaidThePlayerLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for Motta in the area tat_m17ae.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetMottaPaidThePlayerLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for Motta in the area tat_m17ae.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetGarmNamedLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Garm Totryl in the area tat_m17ae.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetGarmNamedLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Garm Totryl in the area tat_m17ae.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetYukarNamedLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Yuka Rill in the area tat_m17ae.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetYukarNamedLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Yuka Rill in the area tat_m17ae.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetYukarMadLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for Yuka Rill in the area tat_m17ae.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetYukarMadLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for Yuka Rill in the area tat_m17ae.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetZoriisNamedLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Zoriis Bafka in the area tat_m17ae.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetZoriisNamedLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Zoriis Bafka in the area tat_m17ae.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetHK47InfoLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Yuka Laka in the area tat_m17ac.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetHK47InfoLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Yuka Laka in the area tat_m17ac.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetHK47SoldLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_02 for Yuka Laka in the area tat_m17ac.

    return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_02);
}

void SetHK47SoldLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_02 for Yuka Laka in the area tat_m17ac.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetYukalPersuadeLocal()
{
    // This uses SW_PLOT_BOOLEAN_03 for Yuka Laka in the area tat_m17ac.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03);
}

void SetYukalPersuadeLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_03 for Yuka Laka in the area tat_m17ac.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetYukaHKFourThousandLocal()
{
    // This uses SW_PLOT_BOOLEAN_04 for Yuka Laka in the area tat_m17ac.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04);
}

void SetYukaHKFourThousandLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_04 for Yuka Laka in the area tat_m17ac.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04, bValue);
    }

    return;
}

int GetYukaHKThreeThousandLocal()
{
    // This uses SW_PLOT_BOOLEAN_05 for Yuka Laka in the area tat_m17ac.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_05);
}

void SetYukaHKThreeThousandLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_05 for Yuka Laka in the area tat_m17ac.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_05, bValue);
    }

    return;
}

int GetYukaHKTwentyFiveHundredLocal()
{
    // This uses SW_PLOT_BOOLEAN_06 for Yuka Laka in the area tat_m17ac.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_06);
}

void SetYukaHKTwentyFiveHundredLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_06 for Yuka Laka in the area tat_m17ac.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_06, bValue);
    }

    return;
}

int GetYukaThreatenedOverPriceLocal()
{
    // This uses SW_PLOT_BOOLEAN_07 for Yuka Laka in the area tat_m17ac.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_07);
}

void SetYukaThreatenedOverPriceLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_07 for Yuka Laka in the area tat_m17ac.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_07, bValue);
    }

    return;
}

int GetYukaSaidSwoopChampionLocal()
{
    // This uses SW_PLOT_BOOLEAN_08 for Yuka Laka in the area tat_m17ac.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_08);
}

void SetYukaSaidSwoopChampionLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_08 for Yuka Laka in the area tat_m17ac.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_08, bValue);
    }

    return;
}

int GetYukaSaidKoltoGoneLocal()
{
    // This uses SW_PLOT_BOOLEAN_09 for Yuka Laka in the area tat_m17ac.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_09);
}

void SetYukaSaidKoltoGoneLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_09 for Yuka Laka in the area tat_m17ac.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_09, bValue);
    }

    return;
}

int GetYukaSaidWookieesRevoltedGlobal()
// set when yuka talks about wookies
{
    return GetGlobalBoolean("tat_YukaWookiees");
}

void SetYukaSaidWookieesRevoltedGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_YukaWookiees", bValue);
    }
    return;
}

int GetYukaSaidPowerStruggleGlobal()
// set when yuka talks about power struggle
{
    return GetGlobalBoolean("tat_YukaStruggle");
}

void SetYukaSaidPowerStruggleGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_YukaStruggle", bValue);
    }
    return;
}

int GetPlayerRacedAtAllGlobal()
// set when yuka talks about power struggle
{
    return GetGlobalBoolean("tat_playerhasraced");
}

void SetPlayerRacedAtAllGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_playerhasraced", bValue);
    }
    return;
}

int GetGandroffMadLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Gandroff in the area tat_m17af.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetGandroffMadLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Gandroff in the area tat_m17af.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetGandroffNameLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for Gandroff in the area tat_m17af.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetGandroffNameLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for Gandroff in the area tat_m17af.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetGandrofForceNoTalkLocal()
{
    // This uses SW_PLOT_BOOLEAN_03 for Gandroff in the area tat_m17af.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03);
}

void SetGandrofForceNoTalkLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_03 for Gandroff in the area tat_m17af.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetPazzakLastGameLostLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Pazzak on Furko Nellis in the area tat_m17af.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetPazzakLastGameLostLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Pazzak on Furko Nellis in the area tat_m17af.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetPazzakGame1WonLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for Pazzak on Furko Nellis in the area tat_m17af.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetPazzakGame1WonLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for Pazzak on Furko Nellis in the area tat_m17af.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetPazzakGame2WonLocal()
{
    // This uses SW_PLOT_BOOLEAN_03 for Pazzak on Furko Nellis in the area tat_m17af.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03);
}

void SetPazzakGame2WonLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_03 for Pazzak on Furko Nellis in the area tat_m17af.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetPazzakGame3WonLocal()
{
    // This uses SW_PLOT_BOOLEAN_04 for Pazzak on Furko Nellis in the area tat_m17af.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04);
}

void SetPazzakGame3WonLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_04 for Pazzak on Furko Nellis in the area tat_m17af.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04, bValue);
    }

    return;
}

int GetPazzakJustPlayedLocal()
{
    // This uses SW_PLOT_BOOLEAN_05 for Pazzak on Furko Nellis in the area tat_m17af.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_05);
}

void SetPazzakJustPlayedLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_05 for Pazzak on Furko Nellis in the area tat_m17af.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_05, bValue);
    }

    return;
}

int GetFazzaPazzakPlayedLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Pazzak on alien player in the area tat_m17ad.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetFazzaPazzakPlayedLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Pazzak on alien player in the area tat_m17ad.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetFazzaLostLastGameLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for Pazzak on alien player in the area tat_m17ad.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetFazzaLostLastGameLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for Pazzak on alien player in the area tat_m17ad.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetToldOfFazzaPazzakLocal()
{
    // This uses SW_PLOT_BOOLEAN_03 for Pazzak on alien player in the area tat_m17ad.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03);
}

void SetToldOfFazzaPazzakLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_03 for Pazzak on alien player in the area tat_m17ad.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetKomadNameLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for komad in the area tat_m17ad.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetKomadNameLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Komad in the area tat_m17ad.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetKomadMadLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for komad in the area tat_m17ad.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetKomadMadLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for Komad in the area tat_m17ad.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetTanisNameLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Tanis in the area tat_m17ad.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetTanisNameLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Tanis in the area tat_m17ad.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetQuestionTanisAboutWifeLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for Tanis in the area tat_m17ad.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetQuestionTanisAboutWifeLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for Tanis in the area tat_m17ad.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetTanisIgnoredLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Tanis in the area tat_m18aa.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetTanisIgnoredLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Tanis in the area tat_m18aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetGammoreanAmbushLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_01 for the ambush droid in the area tat_m18aa.

    return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_01);
}

void SetGammoreanAmbushLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_01 for the ambush droid in the area tat_m18aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetAskedTanisForPaymentLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for Tanis in the area tat_m18aa.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetAskedTanisForPaymentLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for Tanis in the area tat_m18aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetAskedTanisForCreditsLocal()
{
    // This uses SW_PLOT_BOOLEAN_03 for Tanis in the area tat_m18aa.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03);
}

void SetAskedTanisForCreditsLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_03 for Tanis in the area tat_m18aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetAskedTanisToGiveUpLocal()
{
    // This uses SW_PLOT_BOOLEAN_04 for Tanis in the area tat_m18aa.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04);
}

void SetAskedTanisToGiveUpLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_04 for Tanis in the area tat_m18aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04, bValue);
    }

    return;
}

int GetTanisShoutLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_05 for Tanis in the area tat_m18aa.

    return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_05);
}

void SetTanisShoutLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_05 for Tanis in the area tat_m18aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_05, bValue);
    }

    return;
}

int GetDroidExplodeLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_06 for Tanis in the area tat_m18aa.

    return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_06);
}

void SetDroidExplodeLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_06 for Tanis in the area tat_m18aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_06, bValue);
    }

    return;
}

int GetTanisCallLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_07 for Tanis in the area tat_m18aa.

    return UT_GetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_07);
}

void SetTanisCallLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_07 for Tanis in the area tat_m18aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(oTarget, SW_PLOT_BOOLEAN_07, bValue);
    }

    return;
}

int GetOfficeMadLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Czerka officer in the area tat_m17af.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetOfficeMadLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Czerka officer in the area tat_m17af.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetOfficeNamedLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for Czerka officer in the area tat_m17af.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetOfficeNamedLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for Czerka officer in the area tat_m17af.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetVaporatorPriceDroppedLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for greeta holda in the area tat_m17ag.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetVaporatorPriceDroppedLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for greeta holda in the area tat_m17ag.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetVaporatorGivenLocal()
{
    // This uses SW_PLOT_BOOLEAN_03 for greeta holda in the area tat_m17ag.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03);
}

void SetVaporatorGivenLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_03 for greeta holda in the area tat_m17ag.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetGreetaSaidSwoopLocal()
{
    // This uses SW_PLOT_BOOLEAN_04 for greeta holda in the area tat_m17ag.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04);
}

void SetGreetaSaidSwoopLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_04 for greeta holda in the area tat_m17ag.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04, bValue);
    }

    return;
}

int GetGreetaSaidKorribanLocal()
{
    // This uses SW_PLOT_BOOLEAN_05 for greeta holda in the area tat_m17ag.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_05);
}

void SetGreetaSaidKorribanLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_05 for greeta holda in the area tat_m17ag.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_05, bValue);
    }

    return;
}

int GetGreetaSaidKoltoLocal()
{
    // This uses SW_PLOT_BOOLEAN_06 for greeta holda in the area tat_m17ag.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_06);
}

void SetGreetaSaidKoltoLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_06 for greeta holda in the area tat_m17ag.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_06, bValue);
    }

    return;
}

int GetToldOfBountyLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for Czerka protocol officer in the area tat_m17ag.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetToldOfBountyLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for Czerka protocol officer in the area tat_m17ag.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetChieftainStickGivenLocal()
{
    // This uses SW_PLOT_BOOLEAN_03 for Czerka protocol officer in the area tat_m17ag.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03);
}

void SetChieftainStickGivenLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_03 for Czerka protocol officer in the area tat_m17ag.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetAskedIzizStarMapLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for iziz in the area tat_m17aa.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetAskedIzizStarMapLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for iziz in the area tat_m17aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetIzizMadLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for iziz in the area tat_m17aa.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetIzizMadLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for iziz in the area tat_m17aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetIzizRewardedLocal()
{
    // This uses SW_PLOT_BOOLEAN_03 for iziz in the area tat_m17aa.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03);
}

void SetIzizRewardedLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_03 for iziz in the area tat_m17aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetIzizPaidMoreLocal()
{
    // This uses SW_PLOT_BOOLEAN_04 for iziz in the area tat_m17aa.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04);
}

void SetIzizPaidMoreLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_04 for iziz in the area tat_m17aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04, bValue);
    }

    return;
}

int GetMechMadLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for mechanic in the area tat_m17aa.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetMechMadLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for mechanic in the area tat_m17aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetForcedMechanicLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for mechanic in the area tat_m17aa.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetForcedMechanicLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for mechanic in the area tat_m17aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetForcedNoTalkLocal()
{
    // This uses SW_PLOT_BOOLEAN_03 for mechanic in the area tat_m17aa.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03);
}

void SetForcedNoTalkLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_03 for mechanic in the area tat_m17aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetGateGuardMadLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for the gate guard in the area tat_m17aa.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetGateGuardMadLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for the gate guard in the area tat_m17aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetPlayerSaidNoHuntLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Komad in the area tat_m18ac.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetPlayerSaidNoHuntLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Komad in the area tat_m18ac.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetPlayerSaidYesHuntLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for Komad in the area tat_m18ac.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetPlayerSaidYesHuntLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for Komad in the area tat_m18ac.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetTwoSaidSwoopLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for twohead in the area tat_m17ab.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetTwoSaidSwoopLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for twohead in the area tat_m17ab.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetTwoSaidKorribanLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for twohead in the area tat_m17ab.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetTwoSaidKorribanLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for twohead in the area tat_m17ab.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetTwoSaidKoltoLocal()
{
    // This uses SW_PLOT_BOOLEAN_03 for twohead in the area tat_m17ab.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03);
}

void SetTwoSaidKoltoLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_03 for twohead in the area tat_m17ab.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetTwoSaidWookieeLocal()
{
    // This uses SW_PLOT_BOOLEAN_04 for two head in the area tat_m17ab.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04);
}

void SetTwoSaidWookieeLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_04 for two head in the area tat_m17ab.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04, bValue);
    }

    return;
}

int GetTwoAskedAboutSelfLocal()
{
    // This uses SW_PLOT_BOOLEAN_05 for two head in the area tat_m17ab.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_05);
}

void SetTwoAskedAboutSelfLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_05 for two head in the area tat_m17ab.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_05, bValue);
    }

    return;
}

int GetTwoAskedAboutTatooineLocal()
{
    // This uses SW_PLOT_BOOLEAN_06 for two head in the area tat_m17ab.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_06);
}

void SetTwoAskedAboutTatooineLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_06 for two head in the area tat_m17ab.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_06, bValue);
    }

    return;
}

int GetFazzaSaidSwoopLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for Fazza in the area tat_m17ad.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void SetFazzaSaidSwoopLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for Fazza in the area tat_m17ad.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetFazzaSaidKorribanLocal()
{
    // This uses SW_PLOT_BOOLEAN_03 for Fazza in the area tat_m17ad.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03);
}

void SetFazzaSaidKorribanLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_03 for Fazza in the area tat_m17ad.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetFazzaSaidKoltoLocal()
{
    // This uses SW_PLOT_BOOLEAN_04 for Fazza in the area tat_m17ad.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04);
}

void SetFazzaSaidKoltoLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_04 for Fazza in the area tat_m17ad.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_04, bValue);
    }

    return;
}

int GetFazzaSaidWookieeLocal()
{
    // This uses SW_PLOT_BOOLEAN_05 for Fazza in the area tat_m17ad.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_05);
}

void SetFazzaSaidWookieeLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_05 for Fazza in the area tat_m17ad.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_05, bValue);
    }

    return;
}

int GetTalkedToKomadLocal()
{
    // This uses SW_PLOT_BOOLEAN_03 for Komad in the area tat_m18ac.

    return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_03);
}

void SetTalkedToKomadLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_03 for Komad in the area tat_m18ac.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetDragonSpawnLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for the area tat_m18ac.

    return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_01);
}

void SetDragonSpawnLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for the area tat_m18ac.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetDragonPearlLocal()
{
    // This uses SW_PLOT_BOOLEAN_02 for the area tat_m18ac.

    return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_02);
}

void SetDragonPearlLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_02 for the area tat_m18ac.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}

int GetTuskenAmbush2Local()
{
    // This uses SW_PLOT_BOOLEAN_03 for the area tat_m18ac.

    return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_03);
}

void SetTuskenAmbush2Local(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_03 for the area tat_m18ac.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_03, bValue);
    }

    return;
}

int GetHelenaSpawnLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for the area tat_m17af.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetHelenaSpawnLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for the area tat_m17af.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}


int GetTuskenAmbushLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for the area kas_m18aa.

    return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_01);
}

void SetTuskenAmbushLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for the area kas_m18aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetBanthaFollowLocal()
{
    // This uses SW_PLOT_BOOLEAN_04 for the area tat_m18ac.

    return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_04);
}

void SetBanthaFollowLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_04 for the area tat_m18ac.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_04, bValue);
    }

    return;
}

int GetBanthaLuredLocal()
{
    // This uses SW_PLOT_BOOLEAN_05 for the area tat_m18ac.

    return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_05);
}

void SetBanthaLuredLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_05 for the area tat_m18ac.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_05, bValue);
    }

    return;
}

int GetKomadReadyLocal()
{
    // This uses SW_PLOT_BOOLEAN_06 for the area tat_m18ac.

    return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_06);
}

void SetKomadReadyLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_06 for the area tat_m18ac.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_06, bValue);
    }

    return;
}

int GetFailedFixLocal()
{
    // This uses SW_PLOT_BOOLEAN_05 for the area kas_m18aa.

    return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_05);
}

void SetFailedFixLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_05 for the area kas_m18aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_05, bValue);
    }

    return;
}

int GetDroid1RiddleLocal()
{
    // This uses SW_PLOT_BOOLEAN_06 for the area kas_m18aa.

    return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_06);
}

void SetDroid1RiddleLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_06 for the area kas_m18aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_06, bValue);
    }

    return;
}

int GetDroid2RiddleLocal()
{
    // This uses SW_PLOT_BOOLEAN_07 for the area kas_m18aa.

    return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_07);
}

void SetDroid2RiddleLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_07 for the area kas_m18aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_07, bValue);
    }

    return;
}

int GetDroid3RiddleLocal()
{
    // This uses SW_PLOT_BOOLEAN_08 for the area kas_m18aa.

    return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_08);
}

void SetDroid3RiddleLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_08 for the area kas_m18aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_08, bValue);
    }

    return;
}

int GetDroid4RiddleLocal()
{
    // This uses SW_PLOT_BOOLEAN_09 for the area kas_m18aa.

    return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_09);
}

void SetDroid4RiddleLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_09 for the area kas_m18aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_09, bValue);
    }

    return;
}

int GetSharinaWaitLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for the area kas_m17aa.

    return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_01);
}

void SetSharinaWaitLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_01 for the area kas_m17aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetGriffSpawnLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for the area tat_m20aa and tat_m17ag.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetGriffSpawnLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for the area tat_m20aa and tat_m17ag.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetGriffSawMissionLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for Griff in the area kas_m20aa.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetGriffSawMissionLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for Griff in the area kas_m20aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

// sets the current opponent variable
void SetOpponent(int nOpponent)
{
    SetGlobalNumber("TAT_SWOOP_OPP",nOpponent);
}

// retuens the current opponent variable
int GetOpponent()
{
    return GetGlobalNumber("TAT_SWOOP_OPP");
}

// sets the dialouge tokens based on an integer and creates it in the format
// mm:ss:ff
void SetTokenRaceTime(int nToken, int nRacerTime)
{
    // calculate the time components
    int nMinutes = nRacerTime/6000;
    int nSeconds = (nRacerTime - (nMinutes * 6000)) / 100;
    int nFractions =  nRacerTime - ((nMinutes * 6000) + (nSeconds * 100));

    //building the time string
    string sTime = IntToString(nMinutes) + ":";
    if (nSeconds < 10)
    {
        sTime = sTime + "0";
    }
    sTime = sTime + IntToString(nSeconds) + ":";
    if(nFractions < 10)
    {
        sTime = sTime + "0";
    }
    sTime = sTime + IntToString(nFractions);
    SetCustomToken(nToken,sTime);

}

// Checks if SW_PLOT_BOOLEAN_10 has been set. if not returns true and sets the boolean
int HasNeverTriggered()
{
    int bReturn;
    if(UT_GetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_10) == FALSE)
    {
        bReturn = TRUE;
        UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_10,TRUE);
    }
    return bReturn;
}

// Checks if SW_PLOT_BOOLEAN_09 has been set. if not returns true and sets the boolean
int FirstRace()
{
    int bReturn;
    if(UT_GetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_09) == FALSE)
    {
        bReturn = TRUE;
        UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_09,TRUE);
    }
    return bReturn;
}

int GetKomadHuntEndGlobal()
{
    return GetGlobalBoolean("tat_KomadHuntEnd");
}

void SetKomadHuntEndGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_KomadHuntEnd", bValue);
    }

    return;
}

int GetPlayerAttemptedOfficialRaceGlobal()
{
    return GetGlobalBoolean("tat_oneofficialrace");
}

void SetPlayerAttemptedOfficialRaceGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_oneofficialrace", bValue);
    }

    return;
}

int GetPlayerGotFreeRaceGlobal()
{
    return GetGlobalBoolean("tat_freeracegiven");
}

void SetPlayerGotFreeRaceGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_freeracegiven", bValue);
    }

    return;
}

int GetKraytMapGlobal()
{
    return GetGlobalBoolean("tat_KraytMap");
}

void SetKraytMapGlobal(int bValue)
{
    if (bValue == TRUE || bValue == FALSE)
    {
        SetGlobalBoolean("tat_KraytMap", bValue);
    }

    return;
}

int GetKomadHuntingLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for the area tat_m17ad.

    return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void SetKomadHuntingLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for the area tat_m17ad.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

int GetTuskenDoneLocal()
{
    // This uses SW_PLOT_BOOLEAN_01 for the area tat_m18ab.

    return UT_GetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_01);
}

void SetTuskenDoneLocal(int bValue)
{
    // This uses SW_PLOT_BOOLEAN_01 for the area tat_m18ab.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(GetArea(OBJECT_SELF), SW_PLOT_BOOLEAN_01, bValue);
    }

    return;
}

void EquipBasicClothing(object oTarget)
{
    int bFound = FALSE;

    object oParty1 = GetPartyMemberByIndex(0);
    object oParty2 = GetPartyMemberByIndex(1);
    object oParty3 = GetPartyMemberByIndex(2);
    object oItem = GetFirstItemInInventory(oTarget);

    //Issue 1  Make sure the same clothing is not equipped.
    //Issue 2  Make sure that they already have clothing.
    //Issue 3  If they do not have clothing then spawn and equip.
    //Issue 4  If they are wearing basic clothing ignore them.

    /*
    while(GetIsObjectValid(oItem) == TRUE && bFound == FALSE)
    {
        if (//GetBaseItemType(oItem) == BASE_ITEM_JEDI_ROBE &&
           (//GetLevelByClass(CLASS_TYPE_JEDICONSULAR, oTarget) > 0 ||
            //GetLevelByClass(CLASS_TYPE_JEDIGUARDIAN, oTarget) > 0 ||
            //GetLevelByClass(CLASS_TYPE_JEDISENTINEL, oTarget) > 0) &&
            GetItemInSlot(INVENTORY_SLOT_BODY, oParty1) != oItem &&
            GetItemInSlot(INVENTORY_SLOT_BODY, oParty2) != oItem &&
            GetItemInSlot(INVENTORY_SLOT_BODY, oParty3) != oItem)
        {
            AssignCommand(oTarget, ActionEquipItem(oItem, INVENTORY_SLOT_BODY,TRUE));
            bFound = TRUE;
        }
        oItem = GetNextItemInInventory(oTarget);
    }
    */

    oItem = GetFirstItemInInventory(oTarget);

    while(GetIsObjectValid(oItem) == TRUE && bFound == FALSE)
    {
        if (GetBaseItemType(oItem) == BASE_ITEM_BASIC_CLOTHING &&
            GetItemInSlot(INVENTORY_SLOT_BODY, oParty1) != oItem &&
            GetItemInSlot(INVENTORY_SLOT_BODY, oParty2) != oItem &&
            GetItemInSlot(INVENTORY_SLOT_BODY, oParty3) != oItem)
        {
            AssignCommand(oTarget, ActionEquipItem(oItem, INVENTORY_SLOT_BODY, TRUE));
            bFound = TRUE;
        }
        oItem = GetNextItemInInventory(oTarget);
    }

    if (bFound == FALSE)
    {
        oItem = CreateItemOnObject("G_A_CLOTHES01", oTarget);
        AssignCommand(oTarget, ActionEquipItem(oItem, INVENTORY_SLOT_BODY,TRUE));
    }
}


void RemoveSandpeopleDisguise()
{
    object oPC = GetFirstPC();
    object oParty1 = GetPartyMemberByIndex(0);
    object oParty2 = GetPartyMemberByIndex(1);
    object oParty3 = GetPartyMemberByIndex(2);

    object oArmor = GetItemInSlot(INVENTORY_SLOT_BODY, oParty1);

    if (GetTag(oArmor) == "tat17_sandperdis")
    {
        AssignCommand(oParty1, ClearAllActions());
        AssignCommand(oParty1, ActionUnequipItem(oArmor));
        AssignCommand(oParty1, ActionDoCommand(SetItemNonEquippable(oArmor, TRUE)));
        EquipBasicClothing(oParty1);
    }
    oArmor = GetItemInSlot(INVENTORY_SLOT_BODY, oParty2);
    if (GetTag(oArmor) == "tat17_sandperdis")
    {
        AssignCommand(oParty2, ClearAllActions());
        AssignCommand(oParty2, ActionUnequipItem(oArmor));
        AssignCommand(oParty2, ActionDoCommand(SetItemNonEquippable(oArmor, TRUE)));
        EquipBasicClothing(oParty2);
    }
    oArmor = GetItemInSlot(INVENTORY_SLOT_BODY, oParty3);
    if (GetTag(oArmor) == "tat17_sandperdis")
    {
        AssignCommand(oParty3, ClearAllActions());
        AssignCommand(oParty3, ActionUnequipItem(oArmor));
        AssignCommand(oParty3, ActionDoCommand(SetItemNonEquippable(oArmor, TRUE)));
        EquipBasicClothing(oParty3);
    }

    ActionWait(1.0);

    object oItem = GetFirstItemInInventory(oPC);

    while (GetIsObjectValid(oItem) == TRUE)
    {
        if (GetTag(oItem) == "tat17_sandperdis")
        {
            SetItemNonEquippable(oItem, TRUE);
        }

        oItem = GetNextItemInInventory(oPC);
    }
}

void DestroySandpeopleDisguise()
{
    object oPC = GetFirstPC();
    object oParty1 = GetPartyMemberByIndex(0);
    object oParty2 = GetPartyMemberByIndex(1);
    object oParty3 = GetPartyMemberByIndex(2);

    object oArmor = GetItemInSlot(INVENTORY_SLOT_BODY, oParty1);

    if (GetTag(oArmor) == "tat17_sandperdis")
    {
        AssignCommand(oParty1, ClearAllActions());
        AssignCommand(oParty1, ActionUnequipItem(oArmor));
        DestroyObject(oArmor);
        //EquipBasicClothing(oParty1);
    }
    oArmor = GetItemInSlot(INVENTORY_SLOT_BODY, oParty2);
    if (GetTag(oArmor) == "tat17_sandperdis")
    {
        AssignCommand(oParty2, ClearAllActions());
        AssignCommand(oParty2, ActionUnequipItem(oArmor));
        DestroyObject(oArmor);
        //EquipBasicClothing(oParty2);
    }
    oArmor = GetItemInSlot(INVENTORY_SLOT_BODY, oParty3);
    if (GetTag(oArmor) == "tat17_sandperdis")
    {
        AssignCommand(oParty3, ClearAllActions());
        AssignCommand(oParty3, ActionUnequipItem(oArmor));
        DestroyObject(oArmor);
        //EquipBasicClothing(oParty3);
    }

    ActionWait(1.0);

    object oItem = GetFirstItemInInventory(oPC);

    while (GetIsObjectValid(oItem) == TRUE)
    {
        if (GetTag(oItem) == "tat17_sandperdis")
        {
            DestroyObject(oItem);
        }

        oItem = GetNextItemInInventory(oPC);
    }
}

void SandpeopleDisguiseUsable()
{
    object oPC = GetFirstPC();

    object oItem = GetFirstItemInInventory(oPC);

    while (GetIsObjectValid(oItem) == TRUE)
    {
        if (GetTag(oItem) == "tat17_sandperdis")
        {
            SetItemNonEquippable(oItem, FALSE);
        }

        oItem = GetNextItemInInventory(oPC);
    }
}

int GetTuskenContainerLocal(object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_02 for the the area tat_m20aa.

    return UT_GetPlotBooleanFlag(GetArea(oTarget), SW_PLOT_BOOLEAN_02);
}

void SetTuskenContainerLocal(int bValue, object oTarget = OBJECT_SELF)
{
    // This uses SW_PLOT_BOOLEAN_02 for the the area tat_m20aa.

    if (bValue == TRUE || bValue == FALSE)
    {
        UT_SetPlotBooleanFlag(GetArea(oTarget), SW_PLOT_BOOLEAN_02, bValue);
    }

    return;
}
