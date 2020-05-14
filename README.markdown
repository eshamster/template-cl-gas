# A template to write GAS by Common Lisp (Parenscript)

`template-cl-gas` is a [Roswell](https://github.com/snmsts/roswell) template to write GAS by Common Lisp (Parenscript).

----

## Installation

[Roswell](https://github.com/roswell/roswell) and [npm](https://www.npmjs.com/) are required.

At first, clone this repository and import the template.

```bash
$ git clone https://github.com/eshamster/template-cl-gas.git
$ cd template-cl-gas/src
$ ros template import
```

If you successfully import, `cl-gas` template can be seen as the following.

```bash
$ ros template checkout
current default is "default"

candidates:
default
cl-gas
```

Next, install a required system that is not registered to the quicklisp repository.

```bash
$ ros install eshamster/ps-experiment
```

## Usage

1. Create a directory under a directory that quicklisp can find.
   ```bash
   $ cd ~/.roswell/local-projects
   $ mkdir sample-cl-gas
   ```
2. Initialize a project by `clasp create`
   ```bash
   $ cd ~/.roswell/local-projects/sample-cl-gas
   $ clasp create sample-cl-gas --type standalone
   $ find .
   .
   ./.clasp.json
   ./appsscript.json
   ```
3. Export `cl-gas` template to the same directory
   ```bash
   $ cd ~/.roswell/local-projects/sample-cl-gas
   $ ros init cl-gas sample-cl-gas \
         --license LLGPL \
         --description "This is a sample using template-cl-gas."
   $ find .
   .
   ./.clasp.json
   ./appsscript.json
   ./.gitignore
   ./.claspignore
   ./.clasp.json.in
   ./src
   ./src/main.lisp
   ./src/compile.lisp
   ./roswell.init.cl-gas.asd
   ./main.lisp
   ./compile.ros
   ./sample-cl-gas.asd
   ./README.markdown
   ./Makefile
   ```

See [README in the src directory](src/README.markdown) for usage after creating a project.

## Author

* eshamster (hamgoostar@gmail.com)

## Copyright

Copyright (c) 2020 eshamster (hamgoostar@gmail.com)

## License

Licensed under the MIT License.
