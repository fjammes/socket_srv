# socket_srv
A socket server running on Altera CyclonIV NIOS

1. load $HOME/src/socket_server/hw/fpga_config.sof with quatus (quartus&: Tools->Programmer->Add file->Start)
   green led near ethernet port will light
   close quartus
2. eclipse&: File->New->NIOS II Application and BSP from Template->
	SOPC Information file name=$HOME/src/socket_server/sw/fpga_config2eclipse.sopcinfo
	Projet Name: socket_server
	Templates: Socket Server (RGMII)i
   ->Finish
3. Overwrite code with current git repos
