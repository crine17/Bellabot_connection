
C_LONGINT:C283($nb_device)
C_TEXT:C284($Reponse; $Phrase)
C_OBJECT:C1216(MyOb_reponse)

$Phrase:="http://127.0.0.1:9050/api/robot/groups?device="+zdevice
HTTP Get:C1157($Phrase; $Reponse)

MyOb_reponse:=JSON Parse:C1218($Reponse)
$nb_device:=MyOb_reponse.data.robotGroups.length

If ($nb_device#0)
	$i:=0
	$j:=1
	For each ($item; MyOb_reponse.data.robotGroups)
		ta_IDGroup{$j}:=MyOb_reponse.data.robotGroups[$i].id
		ta_Group{$j}:=MyOb_reponse.data.robotGroups[$i].name
		ta_Boutique{$j}:=MyOb_reponse.data.robotGroups[$i].shop_name
		
		
		
		// Get Robot in group
		$Phrase:="http://127.0.0.1:9050/api/robots?device="+zdevice+"&group_id="+ta_IDGroup{$j}
		HTTP Get:C1157($Phrase; $Reponse)
		
		MyOb_reponse:=JSON Parse:C1218($Reponse)
		
		$nb_device:=MyOb_reponse.data.robots.length
		
		If ($nb_device#0) & (ta_Device#0)
			ta_IDRobot{ta_Device}:=MyOb_reponse.data.robots[0].id
			ta_RobotName{ta_Device}:=MyOb_reponse.data.robots[0].name
			
			zID_Robot:=ta_IDRobot{ta_Device}
			zRobotName:=ta_RobotName{ta_Device}
		End if 
		
		$i:=$i+1
		$j:=$j+1
	End for each 
	
	zID_Group:=ta_IDGroup{ta_Device}
	zGroup:=ta_Group{ta_Device}
	zBoutique:=ta_Boutique{ta_Device}
End if 