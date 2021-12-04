int StartingConditional()
{
    int iResult;

    iResult = ((GetIsObjectValid(GetItemPossessedBy(GetPCSpeaker(), "W_SITHKEY")) == TRUE) && (GetGlobalBoolean("MAN_REPTECH1_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("MAN_REPTECH1_DONE", TRUE);

    return iResult;
}
