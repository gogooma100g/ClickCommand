root=/Users/on1530000001/Documents/example/ToDoMVVM
pAppId='com.example.gogooma100g.todomvvm'
sAppId='com.example.gogooma100g.todomvvm.stg'
dAppId='com.example.gogooma100g.todomvvm.dev'
mainActivityName='com.example.gogooma100g.todomvvm.MainActivity'

function setPrd() { appId="$pAppId"; }
function setStg() { appId="$sAppId"; }
function setDev() { appId="$dAppId"; }

cd "$root"