void main()
{
    SetGlobalNumber("MAN_SELJUD1_STATE", 0);
    SetGlobalNumber("MAN_SELJUD2_STATE", 0);
    SetGlobalNumber("MAN_SELJUD3_STATE", 0);
    SetGlobalNumber("MAN_SELJUD4_STATE", 0);
    SetGlobalNumber("MAN_SELJUD5_STATE", 0);
    int nIdx = 1;
    int bLocked = TRUE;
    object oJudge = GetObjectByTag("man26_seljud" + IntToString(nIdx));
    while(GetIsObjectValid(oJudge))
    {
        SetLockOrientationInDialog(oJudge,bLocked);
        nIdx++;
        oJudge = GetObjectByTag("man26_seljud" + IntToString(nIdx));
    }
    SetLockOrientationInDialog(GetObjectByTag("man26_sithac"),bLocked);
    SetLockOrientationInDialog(GetFirstPC(),bLocked);
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

}
