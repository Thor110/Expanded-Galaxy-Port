void main() {
	//if((GetIsPC(GetEnteringObject()) == 1)){
		AssignCommand(GetFirstPC(), ActionStartConversation(GetObjectByTag("DarthMalak", 0), "scene_06", 0, 0, 1, "", "", "", "", "", ""));
		PlayRoomAnimation("StuntRoom40d", 1);
	//}
}

