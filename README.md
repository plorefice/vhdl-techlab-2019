# Introduction to Digital Logic Design using VHDL

This is the companion repository for Develer's techlab
"**_Introduction to Digital Logic Design using VHDL_**".

It contains documented code samples and exercises.

## Requirements

To use this repository, you'll need a VHDL analyzer/simulator. We'll use the FOSS
tool [GHDL](http://ghdl.free.fr), but feel free to use whatever you are comfortable
with. Binary releases of GHDL can be found [here](https://github.com/ghdl/ghdl/releases),
or you can build it from sources.

A waveform viewer capable of opening `.vcd` files is also recommended.
[GTKWave](http://gtkwave.sourceforge.net/) can be used for this purpose.

## Building the VHDL code

Code is organized in folders named according to their topic.

To build all VHDL code in every directory use `ghdl -c`:

```bash
$ ghdl -c */*.vhdl
```

This must be done every time the sources change, if the unit to be run is affected
by the changes.

## Running the VHDL code

To run a specific unit, use `ghdl -r` after building:

```bash
$ ghdl -r bit_eq_tb
```

To output a simulation waveform during a run, use the `--vcd` option:

```bash
$ ghdl -r bit_eq_tb --vcd=bit_eq.vcd
```

You can use `gtkwave` to open and analyze the waveform:

```bash
$ gtkwave bit_eq.vcd
```

If you can execute all the previous commands correctly, your environment has
been correcty set up.

## Known issues

### `gtkwave` command not working on macOS

This is a known problem when installing `gtkwave` using `brew`. To fix it, refer
to [this blogpost](https://ughe.github.io/2018/11/06/gtkwave-osx). In short:

```bash
$ cpan install Switch
$ perl -V:'installsitelib'
$ sudo cp /usr/local/Cellar/perl/5.*/lib/perl5/site_perl/5.*/Switch.pm /Library/Perl/5.*/
$ alias gktwave = /Applications/gtkwave.app/Contents/Resources/bin/gtkwave
```

The `gtkwave` command should now be working correctly.

### `ghdl` version

The above commands have been tested to work with `ghdl v0.36`.

It's likely that older versions will use a different syntax for compiling and running a design,
so either refer to those versions' manual or update.
