# CNAB bundle for WSL distro

## Prerequesites
1. Have Windows 10 Insiders [18305](https://docs.microsoft.com/en-us/windows/wsl/release-notes#build-18305) minimum
   - It will work in the Windows 10 1903 release (no Insider need)
2. Have a WSL [store distro installed](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
3. Have [Porter installed](https://porter.sh/install/)
4. Have the `docker cli` installed on WSL
   - You can also work with `docker.exe` directly by setting the variable `DOCKER_SOURCE=docker.exe`
5. The path of both `DISTRO_SOURCE` and `DISTRO_PATH` **must be** on the Windows filesystem (/mnt/c/...)
   - In my config, I created a symlink `/github` to `/mnt/c/github`

## Install a new distro
The only limitation here is: the distro needs to be in a container registry (read for 99%: https://hub.docker.com)

**Test online**
- If you only want to try it out with Alpine you can also run: 
```
curl https://raw.githubusercontent.com/nunix/wslcnab/master/cnab-setenv.sh | bash -s install
```

**Run offline**
1. Clone the repository: 
```
git clone https://github.com/nunix/wslcnab.git
```
2. Modify the values in `cnab-setenv.sh` script:
   - `DISTRO_IMAGE`: name of the container image **and** the version can be added: `export DOCKER_IMAGE=ubuntu:19.04`
   - `DISTRO_NAME`: name of your distro, **MUST BE UNIQUE**, which will be listed/called by `wsl.exe`
3. Install a new distro
```
./cnab-setenv.sh install
```
4. Uninstall your distro
```
./cnab-setenv.sh uninstall
```

Enjoy!
