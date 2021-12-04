int StartingConditional()
{
    int iResult;

    iResult = (IsNPCPartyMember(NPC_CANDEROUS) && (GetGlobalBoolean("MAN_MANDAL_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("MAN_MANDAL_DONE", TRUE);

    return iResult;
}
