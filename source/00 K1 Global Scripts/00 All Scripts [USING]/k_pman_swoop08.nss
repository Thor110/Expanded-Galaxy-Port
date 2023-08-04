// ADD: met yuka on tatooine

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("MAN_YUKAF_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("MAN_YUKAF_DONE", TRUE);

    return iResult;
}
