----------------------------------------
----------------------------------------
------ Atomic units (from http://en.wikipedia.org/wiki/Atomic_units )
------ electron mass = elementary charge = reduced Planck's constant = Coulomb's constant = 1
----------------------------------------
---- Fundamental atomic units in SI
-- mass
electron_rest_mass =   9.10938291e-31; -- kg;
-- charge
elementary_charge =  1.602176565e-19; -- C;
-- angular momentum
reduced_Plancks_constant =  1.054571726e-34; --  J*s;
-- electric constant
Coulomb_force_constant =   8.9875517873681e9; -- kg*m^3*s^(-2)*C-^(-2);
----------------------------------------
---- Physical constants in atomic units
fine_structure_constant = 1/137;
classical_electron_radius = 5.32e-5;
proton_mass = 1836;
----------------------------------------
---- Physical constants in SI
boltzmann_constant = 1.3806488e-23; -- J/K ; from http://en.wikipedia.org/wiki/Boltzmann_constant
----------------------------------------
---- Derived atomic units in SI
-- length
--bohr_radius =    5.2917720859e-11; -- m  ;
--bohr_radius = reduced_Plancks_constant/(electron_rest_mass*speed_of_light*fine_structure_constant); -- m  ;
bohr_radius = reduced_Plancks_constant^2/(Coulomb_force_constant*electron_rest_mass*elementary_charge^2)
-- energy
--hartree_energy =     4.35974417e-18; -- J ;
--hartree_energy = fine_structure_constant^2*electron_rest_mass*speed_of_light*speed_of_light; -- J ;
hartree_energy = electron_rest_mass*elementary_charge^4*Coulomb_force_constant^2/reduced_Plancks_constant^2; -- J ;
-- time
--atomic_time =    2.418884326505e-17; -- s;
atomic_time = reduced_Plancks_constant/hartree_energy; -- s;
-- velocity
--atomic_velocity = 2.1876912633e6; -- m*s^(-1);
--atomic_velocity = fine_structure_constant*speed_of_light; -- m*s^(-1);
atomic_velocity = bohr_radius*hartree_energy/reduced_Plancks_constant; -- m*s^(-1);
-- force
--atomic_force = 8.2387225e-8; --  N;
atomic_force = hartree_energy/bohr_radius; --  N;
-- temperature
--atomic_temperature = 3.1577464e05; -- K  ;
atomic_temperature = hartree_energy/boltzmann_constant; -- K  ;
-- pressure
--atomic_pressure = 2.9421912e13; -- Pa  ;
atomic_pressure = hartree_energy/(bohr_radius^3); -- Pa  ;
-- electric field
--atomic_electric_field = 5.14220652e11; --  V*m^(-1);
atomic_electric_field = hartree_energy/(elementary_charge*bohr_radius); --  V*m^(-1);
-- electric dipole moment
--atomic_electric_dipole_moment = 8.47835326e-30; --  C*m;
atomic_electric_dipole_moment = elementary_charge*bohr_radius; --  C*m;
----------------------------------------
---- Conversions to atomic units
--ev = 0.03674932; -- (*"hartrees"*)
ev = elementary_charge/hartree_energy; -- J/C*e (*"hartrees"*)
--speed_of_light = 299792458; -- m*s^(-1)
speed_of_light = elementary_charge^2*Coulomb_force_constant/(reduced_Plancks_constant*fine_structure_constant); -- m*s^(-1) in SI units
--i_cm = atomic_time/speed_of_light; -- reciprocal centimetre to Hz to atomic_time^(-1)
i_cm = 1.23984e-4*ev; -- reciprocal centimetre to Hz to atomic_time^(-1)
