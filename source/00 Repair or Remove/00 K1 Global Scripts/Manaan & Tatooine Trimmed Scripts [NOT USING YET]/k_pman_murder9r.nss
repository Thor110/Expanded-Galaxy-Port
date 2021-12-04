int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("MAN_QUESTION_STATE") == 1) || (GetGlobalNumber("MAN_QUESTION_STATE") == 3) || (GetGlobalNumber("MAN_QUESTION_STATE") == 5) || (GetGlobalNumber("MAN_QUESTION_STATE") == 7) || (GetGlobalNumber("MAN_QUESTION_STATE") == 9) || (GetGlobalNumber("MAN_QUESTION_STATE") == 11) || (GetGlobalNumber("MAN_QUESTION_STATE") == 13) || (GetGlobalNumber("MAN_QUESTION_STATE") == 15));
    return iResult;
}
