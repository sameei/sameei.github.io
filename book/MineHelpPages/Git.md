
### Git Sub Module

```shell
$ git submodule [--quiet] add [-b <branch>] [-f|--force] [--name <name>] [--reference <repository>] [--] <repository> [<path>]
$ git submodule add -b master -f --name TheName git@github.com:veryimportantproject/sample-data.git
$ git submodule update --init --recursive
```
- (more)[https://git-scm.com/book/en/v2/Git-Tools-Submodules]

### Git Rebase

### Git Flow

### Git Config

```yaml
[alias]
	co = checkout
	st = status
	ci = commit
	br = branch
	lg = log --graph --decorate --oneline
	lg-detail = log --graph
	review-mr = fetch origin merge-requests/$1/head:mr-$1
	review-br = pull origin rv-$1:$1

[filter "lfs"]
	clean = git-lfs clean -- %f
	smudge = git-lfs smudge -- %f
	process = git-lfs filter-process
	required = true

[user]
	name = A Name
	email = an@email.?

[url "git@github.com:"]
  insteadOf = https://github.com/

[http]
	proxy = http://localhost:9009

[https]
	proxy = http://localhost:9009
```

### Keys for Multiple Github Account

generate keys :
```
$ ssh-keygen -t rsa
```

in `~/.ssh/config` :

```
Host user-first
  HostName github.com
  User git
  proxycommand socat - PROXY:localhost:%h:%p,proxyport=9009
  IdentityFile ~/path/to/akey
  IdentitiesOnly yes


Host user-second
  HostName github.com
  User git
  proxycommand socat - PROXY:localhost:%h:%p,proxyport=9009
  IdentityFile ~/path/to/another/key
  IdentitiesOnly yes
```

then use :
```
$ git clone git@user-first:organization/project.git
```


