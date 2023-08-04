int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("MAN_QUESTION_STATE") == 0) || (GetGlobalNumber("MAN_QUESTION_STATE") == 1) || (GetGlobalNumber("MAN_QUESTION_STATE") == 4) || (GetGlobalNumber("MAN_QUESTION_STATE") == 5) || (GetGlobalNumber("MAN_QUESTION_STATE") == 8) || (GetGlobalNumber("MAN_QUESTION_STATE") == 9) || (GetGlobalNumber("MAN_QUESTION_STATE") == 13) || (GetGlobalNumber("MAN_QUESTION_STATE") == 14));

    return iResult;
}
