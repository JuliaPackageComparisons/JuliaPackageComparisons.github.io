+++
title = "Physical Constants"
+++

# Physical Constants

\toc

## Overview

Several packages collect physical constants.


## Packages

### PhysicalConstants.jl
{{badge PhysicalConstants}}

>Collection of fundamental physical constants with uncertainties. It supports arbitrary-precision constants.

This is part of the [JuliaPhysics](https://github.com/JuliaPhysics) organization.
It contains data from 3 datasets[^1] each as it's own submodule: `PhysicalConstants.CODATA2014`, `PhysicalConstants.CODATA2018`, `PhysicalConstants.CODATA2022`.

List of constants 24: [CODATA2022](https://juliaphysics.github.io/PhysicalConstants.jl/dev/constants/).


| Long name                             | Short | Value                  | Unit           |
|---------------------------------------|-------|------------------------|----------------|
| AtomicMassConstant                    | m_u   | 1.66053906892e-27      | kg             |
| AvogadroConstant                      | N_A   | 6.02214076e23          | mol^-1         |
| BohrMagneton                          | μ_B   | 9.2740100657e-24       | J T^-1         |
| BohrRadius                            | a_0   | 5.29177210544e-11      |                |
| BoltzmannConstant                     | k_B   | 1.380649e-23           | J K^-1         |
| CharacteristicImpedanceOfVacuum       | Z_0   | 376.730313412          |                |
| ElectronMass                          | m_e   | 9.1093837139e-31       | kg             |
| ElementaryCharge                      | e     | 1.602176634e-19        |                |
| FineStructureConstant                 | α     | 0.0072973525643        |                |
| MolarGasConstant                      | R     | 8.31446261815324       | J K^-1 mol^-1  |
| NeutronMass                           | m_n   | 1.67492750056e-27      | kg             |
| NewtonianConstantOfGravitation        | G     | 6.6743e-11             | m^3 kg^-1 s^-2 |
| PlanckConstant                        | h     | 6.62607015e-34         | J s            |
| ProtonMass                            | m_p   | 1.67262192595e-27      | kg             |
| ReducedPlanckConstant                 | ħ     | 1.0545718176461565e-34 | J s            |
| RydbergConstant                       | R_∞   | 1.0973731568157e7      | m^-1           |
| SpeedOfLightInVacuum                  | c_0   | 2.99792458e8           | m s^-1         |
| StandardAccelerationOfGravitation     | g_n   | 9.80665                | m s^-2         |
| StandardAtmosphere                    | atm   | 101325.0               | Pa             |
| StefanBoltzmannConstant               | σ     | 5.6703744191844294e-8  | W K^-4 m^-2    |
| ThomsonCrossSection                   | σ_e   | 6.6524587051e-29       | m^2            |
| VacuumElectricPermittivity            | ε_0   | 8.8541878188e-12       | F m^-1         |
| VacuumMagneticPermeability            | μ_0   | 1.25663706127e-6       | N A^-2         |
| WienFrequencyDisplacementLawConstant  | b′    | 5.878925757646825e10   | Hz K^-1        |
| WienWavelengthDisplacementLawConstant | b     | 0.0028977719551851727  | K m            |

[PhysicalConstants.jl](https://juliaphysics.github.io/PhysicalConstants.jl) was started in 2018 by [giordano](https://github.com/giordano). He is still the main contributor with a few commits by 6 other developers[^1].

### PeriodicTable.jl
{{badge PeriodicTable}}

>Periodic Table for Julians! 🔥 

This is part of the [JuliaPhysics](https://github.com/JuliaPhysics) organization.
Use this i fyou just need standard data on elements: name, appearance, atomic_mass, boil, category, color, density, discovered_by, melt, molar_heat, named_by, number, period, phase, source, spectral_img, summary, symbol, xpos, ypos, shells.


[PeriodicTable.jl](https://github.com/JuliaPhysics/PeriodicTable.jl) was started in 2018 by [rahulkp220](https://github.com/rahulkp220). Since then, it has mainly been maintained by [carstenbauer](https://github.com/carstenbauer) with contributions from 9 others[^1].

### Mendeleev.jl
{{badge Mendeleev}}

>A Julia package for accessing chemical elements data. 

This contains (almost) all the same data as [PeriodicTable.jl](https://github.com/JuliaPhysics/PeriodicTable.jl) plus some more: <https://eben60.github.io/Mendeleev.jl/elements_data_fields/>. 
Use this if you need more data on the elements.

[Mendeleev.jl](https://github.com/Eben60/Mendeleev.jl) was started in 2022 by [Eben60](https://github.com/Eben60) who is also the top 3 contributor to [PeriodicTable.jl](https://github.com/JuliaPhysics/PeriodicTable.jl). It has only had few updates since 2022 and not by others[^1].


### IsotopeTable.jl
{{badge IsotopeTable}}

>Table of Isotopes for Julians. Interoperable with `PeriodicTable.jl` 

[IsotopeTable.jl](https://github.com/Gregstrq/IsotopeTable.jl) was done in 2022 by [Gregstrq](https://github.com/Gregstrq)[^1]. Use this if you need more precise isotope data.

### Unitful.jl
{{badge Unitful}}

The [Unitful.jl](https://github.com/PainterQubits/Unitful.jl) package also contains 19 physical constants in [this section](https://painterqubits.github.io/Unitful.jl/dev/defaultunits/#Physical-constants):

| Const | Value                              | Description                           |
|-------|------------------------------------|---------------------------------------|
| G     | 6.674,30 × 10^-11 m^3 / (kg × s^2) | universal gravitational constant      |
| Na    | 6.022,140,76 × 10^23 / mol.        | Avogadro's constant                   |
| R     | Na × k                             | the molar gas constant,               |
| R∞    | 1.097,373,156,8160 × 10^-7 / m     | Rydberg constant,                     |
| Z0    | μ0 × c                             | impedance of free space               |
| c0    | 2.997,924,58 × 10^8 m/s            | speed of light in a vacuum            |
| gn    | 9.806,65 m / s^2                   | nominal acceleration due to gravity   |
| h     | 6.626,070,15 × 10^-34 J × s        | Planck's constant                     |
| k     | 1.380,649 × 10^-23 J / K           | Boltzmann constant                    |
| me    | 9.109,383,7015 × 10^-31 kg         | rest mass of an electron              |
| mn    | 1.674,927,498,04 × 10^-27 kg       | rest mass of a neutron                |
| mp    | 1.672,621,923,69 × 10^-27 kg       | rest mass of a proton                 |
| q     | 1.602,176,634 × 10^-19 C           | charge of a single electron           |
| ħ     | h / 2π.                            | reduced Planck constant               |
| Φ0    | h / (2 × q)                        | superconducting magnetic flux quantum |
| ε0 ϵ0 | 1 / (μ0 × c^2)                     | vacuum permittivity constant          |
| μ0    | 4π × 10^-7 H / m                   | vacuum permeability constant          |
| μB    | q × ħ / (2 × me)                   | Bohr magneton                         |
| σ     | π^2 × k^4 / (60 × ħ^3 × c^2)       | Stefan-Boltzmann constant             |

Those from [PhysicalConstants.jl](https://juliaphysics.github.io/PhysicalConstants.jl) that are missing here are:

* Bohr Radius
* Standard atmospheric pressure
* Fine Structure Constant
* Thomson Cross Section
* Wien Frequency Displacement Law Constant
* Wien Wavelength Displacement Law Constant

The unique one here is:
* Superconducting magnetic flux quantum

[Unitful.jl](https://github.com/PainterQubits/Unitful.jl) was started in 2016 by [ajkeller34](https://github.com/ajkeller34). 
It is currently mainly maintained by [sostock](https://github.com/sostock) and has contributions from 76 developers[^1].

## Star History
{{star_history PhysicalConstants PeriodicTable Mendeleev IsotopeTable Unitful}}

[^1]: By 2025-07-15.
