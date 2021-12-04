int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("MAN_QUESTION_STATE") == 0) || (GetGlobalNumber("MAN_QUESTION_STATE") == 1) || (GetGlobalNumber("MAN_QUESTION_STATE") == 2) || (GetGlobalNumber("MAN_QUESTION_STATE") == 3) || (GetGlobalNumber("MAN_QUESTION_STATE") == 8) || (GetGlobalNumber("MAN_QUESTION_STATE") == 9) || (GetGlobalNumber("MAN_QUESTION_STATE") == 10) || (GetGlobalNumber("MAN_QUESTION_STATE") == 11));

    return iResult;
}
