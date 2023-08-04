int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("MAN_ELORAS_DONE") == TRUE) && ((GetGlobalNumber("MAN_QUESTION_STATE") == 0) || (GetGlobalNumber("MAN_QUESTION_STATE") == 1) || (GetGlobalNumber("MAN_QUESTION_STATE") == 2) || (GetGlobalNumber("MAN_QUESTION_STATE") == 3) || (GetGlobalNumber("MAN_QUESTION_STATE") == 4) || (GetGlobalNumber("MAN_QUESTION_STATE") == 5) || (GetGlobalNumber("MAN_QUESTION_STATE") == 6) || (GetGlobalNumber("MAN_QUESTION_STATE") == 7)));

    return iResult;
}
