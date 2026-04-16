*** Variables ***
# ${WsUrl}    ws://180.184.175.123:2000/iov/websocket/dual?topic=
${WsUrl}    ws://localhost:2000/iov/websocket/dual?topic=
&{Wayang1Res}        WSUrl=${WsUrl}    topic=${WAYANG_TOPIC0}    device=Mobile    WSconn=    WShandle=    alias=    consolealias=
&{Wayang2Res}        WSUrl=${WsUrl}    topic=${WAYANG_TOPIC1}    device=Mobile   WSconn=    WShandle=    alias=    consolealias=
&{Wayang3Res}        WSUrl=${WsUrl}    topic=${WAYANG_TOPIC2}    device=Mobile    WSconn=    WShandle=    alias=    consolealias=
&{Wayang4Res}        WSUrl=${WsUrl}    topic=${WAYANG_TOPIC3}    device=Mobile   WSconn=    WShandle=    alias=    consolealias=
&{Wayang5Res}        WSUrl=${WsUrl}    topic=${WAYANG_TOPIC4}    device=Mobile   WSconn=    WShandle=    alias=    consolealias=
${savecasepath}    ./jsoncase
${wayang_cache_wait_grace}    0
&{WSproperties}    timeout=${wayang_timeout}    delay=${wayang_delay}    retry=${wayang_retry}    cache_wait_grace=${wayang_cache_wait_grace}
${fakerlocale}    zh_CN
&{SDKBVlist}    nicknamemin=${1}    nicknamemax=${100}    usernamemin=${1}    usernamemax=${64}    passwordmin=${1}    
@{deluserlist}
${testusernum}    2
&{GroupBVlist}    groupNamemax=${1024}    groupDescMax=${4096}    groupIdMax=${64}
${invalidLetters}    ~!@#$%^&*()+`={}|[]\:";'<>?,/
${validLetters}    _.-
${validString}    1234567890abcdefghijklmnopqrstuvwxyz_.-
${wayangprename}    1wayang
