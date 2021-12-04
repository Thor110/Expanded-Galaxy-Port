int StartingConditional()
{
    int iResult;

    iResult = ((IsNPCPartyMember(NPC_CANDEROUS) == TRUE) && (GetGlobalBoolean("MAN_ECHANIF_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("MAN_ECHANIF_DONE", TRUE);

    return iResult;
}
