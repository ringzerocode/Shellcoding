# Shellcoding
Some useful shellcoding utilities.



-------------------------
INSTALL PWNTOOLS (Linux):
-------------------------

sudo apt-get update

apt-get install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential

python3 -m pip install --upgrade pip

python3 -m pip install --upgrade pwntools


-----------------------------------------------
1) GENERATE EXE FROM ASSEMBLY HELLOWORLD:
-----------------------------------------------

An optimized version of assembly x86-64 hello world that can be executed as shellcode.

./assembler.sh hello.s


-------------------------------
2) EXTRACT SHELLCODE FROM EXE :
-------------------------------

![Selezione_002](https://user-images.githubusercontent.com/118491337/202797879-02acb158-c381-44e9-9388-56755de218d8.png)

Once you have the executable you can transforms it in its shellcode form.
It will generate a string of shellcode that can be used as payload.
N.B.: hello.s was adapted to be executed as shellcode, null characters, variables and direct references to memory address have been removed. 

USAGE : 

python3 shellcoder.py hello

BASH VERSION:

./shellcoder.sh hello


-----------------------------------
3) LOAD SHELLCODE IN TARGET SYSTEM:
-----------------------------------

![Selezione_004](https://user-images.githubusercontent.com/118491337/202798173-91e139da-e141-4bc0-b188-768db201428a.png)

Once you have the string of shellcode you can execute on target system using this script:

USAGE:

python3 loader.py '4831db66bb79215348bb422041636164656d5348bb48656c6c6f204854534889e64831c0b0014831ff40b7014831d2b2120f054831c0043c4030ff0f05';


---------------
4) ASSEMBLER.PY:
---------------

It will assembles shellcode into a file that can be executed.

USAGE:

python assembler.py '4831db66bb79215348bb422041636164656d5348bb48656c6c6f204854534889e64831c0b0014831ff40b7014831d2b2120f054831c0043c4030ff0f05' 'hello2' 


sudo chmod +x hello2
./hello2


