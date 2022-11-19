int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("MAN_YORTALK_DONE") == FALSE) && (GetGlobalBoolean("KOR_FINAL_TEST") == TRUE));
    if (iResult)
        SetGlobalBoolean("MAN_YORTALK_DONE", TRUE);

    return iResult;
}
