#statically use these boards
BRD1="max32655_board_2"
BRD2="rsl15_1"

# Get Board files
RS_FILE=~/Workspace/Resource_Share/boards_config.json
echo "The board info are stored in ${RS_FILE}."
echo

#MAX32665

BRD1_DAP_SN=$(getBoardItem ${RS_FILE} ${BRD1} "DAP_sn")
echo BRD1_DAP_SN: ${BRD1_DAP_SN}
BRD1_HCI=$(getBoardItem ${RS_FILE} ${BRD1} "hci_id")
echo BRD1_HCI: ${BRD1_HCI}
BRD1_SW_MODEL=$(getBoardItem ${RS_FILE} ${BRD1} "sw_model")
echo BRD1_SW_MODEL: ${BRD1_SW_MODEL}
BRD1_SW_ST=$(getBoardItem ${RS_FILE} ${BRD1} "sw_state")
echo BRD1_SW_ST: ${BRD1_SW_ST}
echo

#RSL15
BRD2_DESC=$(getBoardItem ${RS_FILE} ${BRD2} "desc")
echo $BRD2_DESC

BRD2_DAP_SN=$(getBoardItem ${RS_FILE} ${BRD2} "DAP_sn")
echo BRD2_DAP_SN: ${BRD2_DAP_SN}

BRD2_HCI=$(getBoardItem ${RS_FILE} ${BRD2} "hci_id")
echo BRD2_HCI: ${BRD2_HCI}

BRD2_SW_MODEL=$(getBoardItem ${RS_FILE} ${BRD2} "sw_model")
echo BRD2_SW_MODEL: ${BRD2_SW_MODEL}

BRD2_SW_ST=$(getBoardItem ${RS_FILE} ${BRD2} "sw_state")
echo BRD2_SW_ST: ${BRD2_SW_ST}
echo



#lock the resources
echo "Try to lock the hardware resources."
python3 ~/Workspace/Resource_Share/Resource_Share.py -l -t 3600 /home/$USER/Workspace/Resource_Share/mc_rf_sw.txt
python3 ~/Workspace/Resource_Share/Resource_Share.py -l -t 3600 /home/$USER/Workspace/Resource_Share/${BRD1}.txt
python3 ~/Workspace/Resource_Share/Resource_Share.py -l -t 3600 /home/$USER/Workspace/Resource_Share/${BRD2}.txt

