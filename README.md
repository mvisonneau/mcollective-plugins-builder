# mcollective-plugins-builder

Get a working package for EL and DEB based hosts for Puppet > 4

## Usage

- Clone this repo
- Build the container

```
docker build -t mvisonneau/mcollective-plugins-builder .
```

- Compile the packages

```
docker run -it --rm -v ~/:/dist --env VERSION=1.0 mvisonneau/mcollective-plugins-builder
```

- You'll get two packages

- `mcollective-plugins_1.0_amd64.deb`
- `mcollective-plugins-1.0-1.x86_64.rpm`

## Available ENV variables

- `VERSION` : REQUIRED / Version of your package

## Included plugins

- filemgr
- nettest
- package
- puppet
- service
- shell

## Limitation

- It's only compile for x64, but it shouldn't be too hard to make it work for x86 if needed
