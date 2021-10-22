

C_TEXT:C284($Reponse)
ARRAY TEXT:C222(tt_response; 0)
"http://127.0.0.1:9050/api/robots?device=0726376396843&group_id=QrhToBdY78hyFIdBbgrpHs3"

$Phrase:="http://127.0.0.1:9050/api/robots?device="+zdevice+"&group_id="+zID_Group
// http://127.0.0.1:9050/api/robot/state?device_id=0726376396843 ID&group_id=chqhpv33Zg4U6mjr_0_10125
HTTP Get:C1157($Phrase; $Reponse)

MyOb_reponse:=JSON Parse:C1218($Reponse)

$nb_device:=MyOb_reponse.data.robots.length

If ($nb_device#0) & (ta_Device#0)
	ta_IDRobot{ta_Device}:=MyOb_reponse.data.robots[0].id
	ta_RobotName{ta_Device}:=MyOb_reponse.data.robots[0].name
	
	zID_Robot:=ta_IDRobot{ta_Device}
	zRobotName:=ta_RobotName{ta_Device}
End if 
