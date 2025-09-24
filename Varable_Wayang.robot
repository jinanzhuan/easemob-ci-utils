*** Variables ***
# ${WsUrl}    wss://webdemo.agora.io:8083/iov/websocket/dual?topic=
# ${WsUrl}    ws://180.184.175.123:2000/iov/websocket/dual?topic=
${WsUrl}    ws://127.0.0.1:8083/iov/websocket/dual?topic=
&{Wayang5Res}        WSUrl=${WsUrl}    topic=IOS12    device=IOS    WSconn=    WShandle=    alias=    consolealias=
&{Wayang4Res}        WSUrl=${WsUrl}    topic=Android123    device=Android    WSconn=    WShandle=    alias=    consolealias=
&{Wayang3Res}        WSUrl=${WsUrl}    topic=iOS2    device=Mobile   WSconn=    WShandle=    alias=    consolealias=
&{Wayang2Res}        WSUrl=${WsUrl}    topic=iOS1    device=Mobile   WSconn=    WShandle=    alias=    consolealias=
&{Wayang1Res}        WSUrl=${WsUrl}    topic=iOS    device=Mobile   WSconn=    WShandle=    alias=    consolealias=
${savecasepath}    ./jsoncase
&{WSproperties}    timeout=5    delay=10    retry=4
${fakerlocale}    zh_CN
&{SDKBVlist}    nicknamemin=${1}    nicknamemax=${100}    usernamemin=${1}    usernamemax=${64}    passwordmin=${1}
@{deluserlist}
${testusernum}    3
&{GroupBVlist}    groupNamemax=${1024}    groupDescMax=${4096}    groupIdMax=${64}
${invalidLetters}    ~!@#$%^&*()+`={}|[]\:";'<>?,/
${validLetters}    _.-
${validString}    1234567890abcdefghijklmnopqrstuvwxyz_.-
${wayangprename}    1wayang