void main() {
//object oEnd01_sceneobj01 = GetObjectByTag("end01_sceneobj01", 0);
DelayCommand(0.5, SetDialogPlaceableCamera(22));
//ExecuteScript("k_pend_newjump", GetFirstPC(), 0xFFFFFFFF);
//DelayCommand(2.2, ActionResumeConversation());
AssignCommand(GetObjectByTag("end_trask"), DelayCommand(2.2, ActionResumeConversation()));
//AssignCommand(GetObjectByTag("end01_sceneobj01"), DelayCommand(2.2, ActionResumeConversation()));
}

