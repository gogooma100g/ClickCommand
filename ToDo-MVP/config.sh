# your android project path
root=/Users/on1530000001/Documents/example/ToDoMVP

# package names of your app
pAppId='com.example.gogooma100g.todomvp'
sAppId='com.example.gogooma100g.todomvp.stg'
dAppId='com.example.gogooma100g.todomvp.dev'

# for starting your app
mainActivityName='com.example.gogooma100g.todomvp.MainActivity'

cd "$root"

# for setting a package name
function setPrd() { appId="$pAppId"; }
function setStg() { appId="$sAppId"; }
function setDev() { appId="$dAppId"; }

# You can grant or revoke permissions that you entered on your app after installation and before starting to use it
permissions=(
"android.permission.WRITE_EXTERNAL_STORAGE"
"android.permission.CALL_PHONE"
"android.permission.CAMERA"
)