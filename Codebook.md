#Introduction

The scripts in this repository perform the following:
1. Calculate how much memory is required to  read the file into R
2. Reads the requested subset of the data into R
3. Coverts the first two columns into Date/Time formats
4. Creates the requested plot
5. Saves the plot to PNG

#Variables
The data has the has the following variables:

1. Date: Date in format dd/mm/yyyy
2. Time: time in format hh:mm:ss
3. Global_active_power: household global minute-averaged active power (in kilowatt)
4. Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
5. Voltage: minute-averaged voltage (in volt)
6. Global_intensity: household global minute-averaged current intensity (in ampere)
7. Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a    dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
8. Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a 9. washing-machine, a tumble-drier, a refrigerator and a light.
10.Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an    air-conditioner.
