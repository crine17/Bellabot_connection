//%attributes = {}

C_OBJECT:C1216(MyOb_reponse)
C_LONGINT:C283($nb_device)
C_TEXT:C284($Reponse)
ARRAY TEXT:C222(tt_response; 0)

HTTP Get:C1157("http://127.0.0.1:9050/api/devices"; $Reponse)

MyOb_reponse:=JSON Parse:C1218($Reponse)
$nb_device:=MyOb_reponse.data.devices.length

If ($nb_device#0)
	ARRAY TEXT:C222(ta_Device; $nb_device)
	ARRAY TEXT:C222(ta_Name; $nb_device)
	ARRAY TEXT:C222(ta_Region; $nb_device)
	ARRAY TEXT:C222(ta_IDGroup; $nb_device)
	ARRAY TEXT:C222(ta_Group; $nb_device)
	ARRAY TEXT:C222(ta_Boutique; $nb_device)
	ARRAY TEXT:C222(ta_IDRobot; $nb_device)
	ARRAY TEXT:C222(ta_RobotName; $nb_device)
	
	
	$i:=0
	$j:=1
	For each ($item; MyOb_reponse.data.devices)
		ta_Device{$j}:=MyOb_reponse.data.devices[$i].deviceId
		ta_Name{$j}:=MyOb_reponse.data.devices[$i].name
		ta_Region{$j}:=MyOb_reponse.data.devices[$i].region
		$i:=$i+1
		$j:=$j+1
	End for each 
	
Else 
	ARRAY TEXT:C222(ta_Device; 0)
	ARRAY TEXT:C222(ta_IDGroup; 0)
	ARRAY TEXT:C222(ta_Group; 0)
	ARRAY TEXT:C222(ta_Boutique; 0)
	ARRAY TEXT:C222(ta_IDRobot; 0)
	ARRAY TEXT:C222(ta_RobotName; 0)
	zdevice:=""
	zName:=""
	zRegion:=""
	zID_Group:=""
	zGroup:=""
	zBoutique:=""
	zID_Robot:=""
	zRobotName:=""
End if 
