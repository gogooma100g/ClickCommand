root=/Users/on1530000001/Documents/example/ToDoMVP
pAppId='com.example.gogooma100g.todomvp'
sAppId='com.example.gogooma100g.todomvp.stg'
dAppId='com.example.gogooma100g.todomvp.dev'
mainActivityName='com.example.gogooma100g.todomvp.MainActivity'

function setPrd() { appId="$pAppId"; }
function setStg() { appId="$sAppId"; }
function setDev() { appId="$dAppId"; }

cd "$root"