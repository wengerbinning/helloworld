rm *.orig *.rej >/dev/null 2>&1
git checkout .

for patch in $(ls *.patch 2>/dev/null); do
    test $patch == "0.patch" && continue
    echo -e '\e[32m Applay \e[0m'$patch'\e[33m ...\e[0m'
    cat $patch | patch -f -p1  -d .
done