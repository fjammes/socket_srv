# socket_server
A socket server running on Altera CyclonIV NIOS

## Pre-requisite

* Setup usb connection between Linux and Altera CyclonIV
See http://www.fpga-dev.com/altera-usb-blaster-with-ubuntu/ to setup your usb connection between Linux and Altera CyclonIV

* Clone source code

  ```bash
  cd $HOME/src
  git clone git@github.com:fjammes/socket_srv.git
  ```
* Install quartus and add next line to your ~/.bashrc

  ```
  . $HOME/src/$HOME/src/env.sh
  ```

## Setup projet

* Load $HOME/src/socket_server/hw/fpga_config.sof on the board using quartus (quartus&: Tools->Programmer->Add file->Start)
  green led near ethernet port will light
* Close quartus
* eclipse&:
  ```
  File->New->NIOS II Application and BSP from Template->
  
    SOPC Information file name=$HOME/src/socket_server/hw/fpga_config2eclipse.sopcinfo
    
    Project Name: socket_srv
    
    Project location: $HOME/src/socket_srv
    
    Templates: Socket Server (RGMII)
    
  ->Finish
  ```
* Revert code to git repos version:

  ```bash
  git checkout -- *.c *.h
  ```
* Build bsp and project, then right-click on projet->Run As->Nios II Hardware
  or in console mode:

  ```bash
  # FIXME: doesn't work yet, have to retrieve NIOS II console
  make all
  make download-elf
  ```

* Make sure you use the correct ethernet port and then launch:
  ```bash
  telnet 134.158.124.188 30 
  ```
