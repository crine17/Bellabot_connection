

If (ta_Device#0)
	If (ta_Device{ta_Device}#"")
		zDevice:=ta_Device{ta_Device}
		zName:=ta_Name{ta_Device}
		zRegion:=ta_Region{ta_Device}
		zID_Group:=ta_IDGroup{ta_Device}
		zGroup:=ta_Group{ta_Device}
		zBoutique:=ta_Boutique{ta_Device}
		zID_Robot:=ta_IDRobot{ta_Device}
		zRobotName:=ta_RobotName{ta_Device}
		
	Else 
		zName:=""
		zRegion:=""
		zID_Group:=""
		zGroup:=""
		zBoutique:=""
		zID_Robot:=""
		zRobotName:=""
	End if 
	
End if 
