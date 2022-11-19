int StartingConditional()
{
    int iResult;

    iResult = GetIsObjectValid(GetItemPossessedBy(GetPCSpeaker(), "W_SITHKEY"));

    return iResult;
}
