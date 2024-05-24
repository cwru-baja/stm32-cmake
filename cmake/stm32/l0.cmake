set(STM32_L0_TYPES 
    L010x4 L010x6 L010x8 L010xB L011xx L021xx L031xx L041xx
    L051xx L052xx L053xx L061xx L062xx L063xx L071xx L072xx
    L073xx L081xx L082xx L083xx
)
set(STM32_L0_TYPE_MATCH 
    "L010.4" "L010.6" "L010.8" "L010.B" "L011.." "L021.." "L031.." "L041.."
    "L051.." "L052.." "L053.." "L061.." "L062.." "L063.." "L071.." "L072.."
    "L073.." "L081.." "L082.." "L083.."
)
set(STM32_L0_RAM_SIZES 
     2K  8K  8K 20K  2K  2K  8K  8K
     8K  8K  8K  8K  8K  8K 20K 20K
    20K 20K 20K 20K
)
set(STM32_L0_CCRAM_SIZES 
     0K  0K  0K  0K  0K  0K  0K  0K
     0K  0K  0K  0K  0K  0K  0K  0K
     0K  0K  0K  0K  
)

stm32_util_create_family_targets(L0)

target_compile_options(STM32::L0 INTERFACE 
    -mcpu=cortex-m0plus
)
target_link_options(STM32::L0 INTERFACE 
    -mcpu=cortex-m0plus
)

list(APPEND STM32_ALL_DEVICES
    L010C6
    L010F4
    L010K4
    L010K8
    L010R8
    L010RB
    L011D3
    L011D4
    L011E3
    L011E4
    L011F3
    L011F4
    L011G3
    L011G4
    L011K3
    L011K4
    L021D4
    L021F4
    L021G4
    L021K4
    L031C4
    L031C6
    L031E4
    L031E6
    L031F4
    L031F6
    L031G4
    L031G6
    L031K4
    L031K6
    L041C6
    L041E6
    L041F6
    L041G6
    L041K6
    L051C6
    L051C8
    L051K6
    L051K8
    L051R6
    L051R8
    L051T6
    L051T8
    L052C6
    L052C8
    L052K6
    L052K8
    L052R6
    L052R8
    L052T6
    L052T8
    L053C6
    L053C8
    L053R6
    L053R8
    L062C8
    L062K8
    L063C8
    L063R8
    L071C8
    L071CB
    L071CZ
    L071K8
    L071KB
    L071KZ
    L071RB
    L071RZ
    L071V8
    L071VB
    L071VZ
    L072CB
    L072CZ
    L072KB
    L072KZ
    L072RB
    L072RZ
    L072V8
    L072VB
    L072VZ
    L073CB
    L073CZ
    L073RB
    L073RZ
    L073V8
    L073VB
    L073VZ
    L081CB
    L081CZ
    L081KZ
    L082CZ
    L082KZ
    L083CB
    L083CZ
    L083RB
    L083RZ
    L083V8
    L083VB
    L083VZ
)

list(APPEND STM32_SUPPORTED_FAMILIES_LONG_NAME
    STM32L0
)

list(APPEND STM32_FETCH_FAMILIES L0)

set(CUBE_L0_VERSION  v1.12.0)
set(CMSIS_L0_VERSION v1.9.1)
set(HAL_L0_VERSION   v1.10.4)
