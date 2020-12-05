# Boltzmann Machine (BM)
* The code is an implementation within the MATLAB of the Standard Boltzmann Machine model.
* The Implementation is based on Ackley, David H., Geoffrey E. Hinton, and Terrence J. Sejnowski 's paper ***A Learning Algorithm for Boltzmann Machines, Cognitive Science 9.1 (1985).***


# Summery
[Boltzmann Machines](https://en.wikipedia.org/wiki/Boltzmann_machine) are very similar to [Hopfield Networks (HNs)](https://en.wikipedia.org/wiki/Hopfield_network) where some units are marked as input and others consider as hidden units. Input units become output as soon as each hidden unit update its state (during training, a Boltzmann Machine updates its cells one by one (not in parallel) in a random order (same as Hopfield Networks)).

![Boltzmann Machine (BM)](https://upload.wikimedia.org/wikipedia/commons/7/7a/Boltzmannexamplev1.png)

## Getting Started

### Dependencies

* MATLAB (Almost any versions)

### Installing

* Download repository and extract it.
* Open folder in MATLAB. (No needs for additional files or data)

### Executing program

* Run [test.m](./test.m) to see the results of the paper's experiments.

## Note 

The full model and code logic existed in the single class file [BoltzmannMachine.m](./BoltzmannMachine.m)

## Authors

- [Kamaledin Ghiasi-Shirazi](http://profsite.um.ac.ir/~k.ghiasi/)
- Amir Ahooye Atashin

## License

This project is licensed under the MIT License - see the LICENSE file for details
