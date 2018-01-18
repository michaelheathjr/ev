# Easy VVV / EV
Easy Vagrant - A simple tool to create WordPress sites using VVV

Easy VVV is a simple tool that makes creating sites with VVV very easy. It's inspired by bradp's VV (Variable VVV). Unfortunately, VV was not maintained as VVV progressed and VV itself no longer adheres to the VVV "way" of creating sites. EV is a continuation of those same efforts to make VVV easy for the new VVV 2.0. That means that it's very simple to use the new features of VVV without having to use workarounds.

Another goal of EV is to make porting from using VV extremely easy. This is something we're currently working on but will accomplish in the next month.

** Easy VVV is in beta at the moment and is still under construction. Plans are to have it fully usable and stable by the end January 2018. **

# Table of Contents

- [Installation](#installation)
  - [OS X Installation](#os-x-installation)
  - [Homebrew](#homebrew)
  - [Linux Installation](#linux-installation)
- [Commands](#commands)
- [TODO](#TODO)


## Installation

### OS X Installation

If you have [Homebrew](http://brew.sh/) installed, use:

	$ brew install michaelheathjr/ev/ev

Otherwise, clone this repository and edit your `$PATH` to include the `ev` core file:

1. Clone this repo: `git clone https://github.com/michaelheathjr/ev.git`
1. Add the `ev` core script to your shell's `$PATH`:
    * If you're using `bash`: ``touch ~/.bash_profile && echo "export PATH=\$PATH:`pwd`/ev" >> ~/.bash_profile``

### Homebrew

### Linux Installation

## Commands

## TODO
- allow to be used child directories
- no wp site setup
- wp-multi-site setup
- Add multiple sites at once
- Allow directory to be forced
- Add arguments to site creation
- Automatically Port from VV
- --debug-ev 			            Outputs all debugging info needed for bug reporting
- --force-path, -fp 		      Override ev auto-VVV locating
- --force-sites-folder, -fsf 	Override sites folder directory locating
- --use_defaults		          Accept all default options and skip the wizard
- make listing sites show if it's in vvv-custom.yml (green if good red if not)
- make command to backup custom-vvv.yml yourself


