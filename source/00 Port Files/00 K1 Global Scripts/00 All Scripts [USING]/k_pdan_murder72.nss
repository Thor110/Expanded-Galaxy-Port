void main()
{
   // SetGlobalFadeIn(0.0,2.0);
    AssignCommand(GetObjectByTag("dan14_bolook"),ActionMoveToObject(GetObjectByTag("POST_dan14_bolook01")));
    AssignCommand(GetObjectByTag("dan14_handon"),ActionMoveToObject(GetObjectByTag("POST_dan14_handon01")));
    AssignCommand(GetObjectByTag("dan14_idroid"),ActionMoveToObject(GetObjectByTag("POST_dan14_idroid01")));
    AssignCommand(GetObjectByTag("dan14_rickard"),ActionMoveToObject(GetObjectByTag("POST_dan14_rickard01")));
}
