int StartingConditional()
{
    int bCondition = GetGlobalNumber("DAN_JON_STATE");

    return bCondition == 0 || bCondition == 1;
}
