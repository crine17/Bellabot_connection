

C_TEXT:C284($Reponse)
ARRAY TEXT:C222(tt_response; 0)
//"http://127.0.0.1:9050/api/robots?device=0726376396843&group_id=QrhToBdY78hyFIdBbgrpHs3"

//$Phrase:="http://127.0.0.1:9050/api/robot/status?device_id="+zdevice+" ID&robot_id="+zID_Robot
$Phrase:="http://127.0.0.1:9050/api/robot/state?device_id="+zdevice+"&group_id="+zGroup+"&timeout=5&count=5"
//http://127.0.0.1:9050/api/robot/state?device_id=0726376396843 ID&group_id=chqhpv33Zg4U6mjr_0_10125
// http://127.0.0.1:9050/api/robot/status?device_id=0726376396843 ID&robot_id=d41243c356ea


HTTP Get:C1157($Phrase; $Reponse)

MyOb_reponse:=JSON Parse:C1218($Reponse)
