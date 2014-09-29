# Rainbow

Generate a rainbow of colors.

Based off Krazy Dad's [annoying rainbow colors in javascript tutorial](http://krazydad.com/tutorials/makecolors.php)

## Usage

    var colorGenerator = new Rainbow.ColorGenerator({
      minInputValue: 0,
      maxInputValue: 100,
      center: 128,
      width: 127,
      phaseStart: 0,
      phaseInterval: 2,
      phaseIntervalMultipliers: [0, 1, 2],
      frequency: 2.4
    });

    // Color in RGB format for CSS, e.g., 'rgb(0,21,34)'.
    //
    // As you increase the input number you will cycle through the rainbow.
    //
    colorGenerator.getColorRgb(0);

    // Color as int
    colorGenerator.getColor(0);

