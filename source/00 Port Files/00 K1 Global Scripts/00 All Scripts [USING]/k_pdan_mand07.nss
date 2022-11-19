int StartingConditional()
{
    int nState = GetGlobalNumber("DAN_MAND_STATE");
    return nState > 1 && nState < 5;
}
