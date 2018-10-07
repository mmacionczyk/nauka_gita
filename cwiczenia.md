Witaj tester!
tester@tester-m:~$ ^C
tester@tester-m:~$ ls
Desktop    Downloads  Music        myfile.txt  pojazdy  Public     Videos
Documents  Michalina  mydirectory  Pictures    polska   Templates
tester@tester-m:~$ cd polska
tester@tester-m:~/polska$ mkdir produkty
tester@tester-m:~/polska$ cd produkty
tester@tester-m:~/polska/produkty$ mkdir mleczne
tester@tester-m:~/polska/produkty$ cd mleczne
tester@tester-m:~/polska/produkty/mleczne$ touch produkty.txt
tester@tester-m:~/polska/produkty/mleczne$ tree
.
└── produkty.txt

0 directories, 1 file
tester@tester-m:~/polska/produkty/mleczne$ atom produkty.txt
tester@tester-m:~/polska/produkty/mleczne$ cd..
cd..: command not found
tester@tester-m:~/polska/produkty/mleczne$ cd ..
tester@tester-m:~/polska/produkty$ mkdir slodycze
tester@tester-m:~/polska/produkty$ cd slodycze
tester@tester-m:~/polska/produkty/slodycze$ touch produkty.txt
tester@tester-m:~/polska/produkty/slodycze$ cd ..
tester@tester-m:~/polska/produkty$ tree
.
├── mleczne
│   └── produkty.txt
└── slodycze
    └── produkty.txt

2 directories, 2 files
tester@tester-m:~/polska/produkty$ atom produkty.txt
tester@tester-m:~/polska/produkty$ cd ..
tester@tester-m:~/polska$ cd produkty
tester@tester-m:~/polska/produkty$ tree
.
├── mleczne
│   └── produkty.txt
├── produkty.txt
└── slodycze
    └── produkty.txt

2 directories, 3 files
tester@tester-m:~/polska/produkty$ rm produkty.txt
tester@tester-m:~/polska/produkty$ tree
.
├── mleczne
│   └── produkty.txt
└── slodycze
    └── produkty.txt

2 directories, 2 files
tester@tester-m:~/polska/produkty$ cat produkty.txt
cat: produkty.txt: No such file or directory
tester@tester-m:~/polska/produkty$ ls
mleczne  slodycze
tester@tester-m:~/polska/produkty$ cd mleczne
tester@tester-m:~/polska/produkty/mleczne$ cat produkty.txt
mlekowita, 1
laciate, 2
tester@tester-m:~/polska/produkty/mleczne$ cd..
cd..: command not found
tester@tester-m:~/polska/produkty/mleczne$ cd ..
tester@tester-m:~/polska/produkty$ cd slodycze
tester@tester-m:~/polska/produkty/slodycze$ cat produkty.txt
tester@tester-m:~/polska/produkty/slodycze$ cat produkty.txt
wedel ,10
goplana, 5
tester@tester-m:~/polska/produkty/slodycze$ cat produkty.txt | -f1

Command '-f1' not found, did you mean:

  command 'if1' from deb ctsim

Try: sudo apt install <deb name>

tester@tester-m:~/polska/produkty/slodycze$ cd ..
tester@tester-m:~/polska/produkty$ cd mleczne
tester@tester-m:~/polska/produkty/mleczne$ cat produkty.txt | cut "-d", - "f1"
cut: you must specify a list of bytes, characters, or fields
Try 'cut --help' for more information.
tester@tester-m:~/polska/produkty/mleczne$ cat produkty.txt | cut "-d", - "f1"/produkty/mleczne
cut: you must specify a list of bytes, characters, or fields
Try 'cut --help' for more information.
tester@tester-m:~/polska/produkty/mleczne$ cat produkty.txt | cut "-d", - "f1"
cut: you must specify a list of bytes, characters, or fields
Try 'cut --help' for more information.
tester@tester-m:~/polska/produkty/mleczne$ cd ..
tester@tester-m:~/polska/produkty$ cmd | paste -sd + - |bc

Command 'cmd' not found, but there are 16 similar ones.

tester@tester-m:~/polska/produkty$ <cmd> | paste -sd + - |bc
bash: syntax error near unexpected token `|'
tester@tester-m:~/polska/produkty$  | paste -sd + - |bc
bash: syntax error near unexpected token `|'
tester@tester-m:~/polska/produkty$ cd ..
tester@tester-m:~/polska$ cd ..
