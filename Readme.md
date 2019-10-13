# Description

The open-source project is an [infrastructure as code](https://en.wikipedia.org/wiki/Infrastructure_as_code) and a full [self-documenting code](https://en.wikipedia.org/wiki/Self-documenting_code). It contains:
- docker and docker-compose definitions
- infrastructure secrets/credentials definitions for [GoatCLI](https://github.com/goatcms/goatcli)
- bash script to automate simple tasks
- tooltips and sniped codes

Share your infrastructure too :-)

# Why share an infrastructure code?
- Open-source software comes with a great advantage since it can be installed for free.
- Open-source software help companies and peoples save time.
- **You can review** my code.
- **You can develop** with me.

# Install dependencies
## GoatCLI
GoatCLI is a newly code generator (scaffolding), dependency management and secret management console tool.  It makes possible to insert and manage your secrets by interactive command.
### Install
Require:
- [golang](https://golang.org/doc/install)
- [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
```bash:
mkdir -p $GOPATH/src/github.com/goatcms
cd $GOPATH/src/github.com/goatcms
git clone https://github.com/goatcms/goatcli.git
cd goatcms
# It requires v.0.2 version (it is still experimental branch and will be added to master later)
git checkout v0.2
go install
```

# Build project
```bash:
git clone https://github.com/SebastianPozoga/home-infrastructure.git
cd home-infrastructure
goatcli build
```

# Tooltips and sniped codes
- [hardware/server machine configuration](readme/hardware.md)
