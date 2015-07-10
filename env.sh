# Altera setup
# source it in your ~/.bashrc

QUARTUS_PATH=/space/tomuvol
export QSYS_ROOTDIR="$QUARTUS_PATH/altera/15.0/quartus/sopc_builder/bin"
export ALTERAOCLSDKROOT="$QUARTUS_PATH/altera/15.0/hld"

QUARTUS_BIN="$QUARTUS_PATH/altera/15.0/quartus/bin"
GNU_BIN="$QUARTUS_PATH/altera/15.0/nios2eds/bin/gnu/H-x86_64-pc-linux-gnu/bin"
NIOS_BIN="$QUARTUS_PATH/altera/15.0/nios2eds/bin"
SDK_BIN="$QUARTUS_PATH/altera/15.0/nios2eds/sdk2/bin"

export PATH="$QUARTUS_BIN:$GNU_BIN:$NIOS_BIN:$SDK_BIN:$PATH"
