// ADD: player met Zoriis on tatooine

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("MAN_ZORIISF_DONE") == FALSE);
    if (iResult)
        SetGlobalNumber("MAN_ZORIISF_DONE", TRUE);

    return iResult;
}
