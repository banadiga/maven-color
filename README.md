Output color highlighting for Maven 
==============================

It works by wrapping your Maven command and then inserting ANSI colour codes in the output.

Also added few aliases for short call.
* **mvnc** - for run "mvn" with color highlighting
* **mci** - for run "mvn clean install" with color highlighting

**Note:** any extra params for **mvnc** will proxy as params for **mvn**

To install
------------------------

Put the file in a handy directory (like *~/.aliases*) **add** a link to it in your *.bashrc* (or other shell's initialization file)

**Or** run the folowing bash command one by one to do automaticly

* Make a place for the script to live 

```bash
mkdir -p ${HOME}/.aliases 
```

* Download last version

```bash
wget https://raw.github.com/banadiga/maven-color/master/maven-color.sh \
  --output-document=${HOME}/.aliases/maven-color.sh
```

* Add to RC file

```bash
echo "[[ -s \"${HOME}/.aliases/maven-color.sh\" ]] && source \"${HOME}/.aliases/maven-color.sh\"" \
  >> ${HOME}/.bashrc
```

* Ro re-read your bash configuration

```bash
. ${HOME}/.bashrc
```


To update
------------------------

Download new version with raplase old file **and** re-read your bash configuration

**Or** run the folowing bash command one by one to do automaticly

* Download last version

```bash
wget https://raw.github.com/banadiga/maven-color/master/maven-color.sh \
  --output-document=${HOME}/.aliases/maven-color.sh
```

* To re-read your bash configuration

```bash
. ${HOME}/.bashrc
```

