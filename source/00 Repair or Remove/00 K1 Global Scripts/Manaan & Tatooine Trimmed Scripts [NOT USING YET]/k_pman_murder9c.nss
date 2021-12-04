int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("MAN_SUNAFFD_DONE") == TRUE) && ((GetGlobalNumber("MAN_QUESTION_STATE") == 0) || (GetGlobalNumber("MAN_QUESTION_STATE") == 2) || (GetGlobalNumber("MAN_QUESTION_STATE") == 4) || (GetGlobalNumber("MAN_QUESTION_STATE") == 6) || (GetGlobalNumber("MAN_QUESTION_STATE") == 8) || (GetGlobalNumber("MAN_QUESTION_STATE") == 10) || (GetGlobalNumber("MAN_QUESTION_STATE") == 12) || (GetGlobalNumber("MAN_QUESTION_STATE") == 14)));

    return iResult;
}
