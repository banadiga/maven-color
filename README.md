Output color highlighting for Maven 
==============================

It works by wrapping your Maven command and then inserting ANSI colour codes in the output.

The script is intended to be run on CLI shell startup. 

In addition to the coloring function, it creates the following aliases:
* **mvnc** - to run "mvn" with color highlighting
* **mci** - to run "mvn clean install" with color highlighting
* **mcist** - to run "mci -Dmaven.test.skip=true -Dmaven.it.skip=true" with color highlighting

**Note:** any extra params for **mvnc** will be proxied to **mvn**

To install
------------------------

Put the file in a handy directory (like *~/.aliases*) **add** a link to it in your *.bashrc* (or other shell's initialization file)

The following set of commands will do the job:

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

* Re-read your bash configuration

```bash
. ${HOME}/.bashrc
```


To update
------------------------

Download new version replacing old file **and** re-read your bash configuration:

The following set of commands will do the job:

* Download last version

```bash
wget https://raw.github.com/banadiga/maven-color/master/maven-color.sh \
  --output-document=${HOME}/.aliases/maven-color.sh
```

* To re-read your bash configuration

```bash
. ${HOME}/.bashrc
```

