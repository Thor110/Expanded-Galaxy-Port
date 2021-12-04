int StartingConditional()
{
    int iResult;

    iResult = ((GetIsObjectValid(GetItemPossessedBy(GetPCSpeaker(), "W_DDATA")) == TRUE) && (GetGlobalBoolean("MAN_SITHKEY_DONE")) && (GetGlobalBoolean("MAN_REPTECH1_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("MAN_REPTECH1_DONE", TRUE);

    return iResult;
}
