with (import <nixpkgs> {});
let
  my-python-packages = python-packages: with python-packages; [
    tkinter
    numpy
    natsort
    scikitimage
    matplotlib
    watchdog
  ];
  python-with-my-packages = python3.withPackages my-python-packages;
in
mkShell {
  buildInputs = [
    python-with-my-packages
  ];
}
