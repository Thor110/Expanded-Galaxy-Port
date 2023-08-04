//checks to see if the sentry droid is still active
int StartingConditional()
{

    return GetIsObjectValid(GetObjectByTag("man28_shield")) &&
           GetGlobalBoolean("MAN_OFF_SEN") == FALSE;
}
