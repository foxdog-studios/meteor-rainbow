class @Rainbow.ColorGenerator
  constructor: (options = {}) ->
    options = _.defaults options,
      minInputValue: 0
      maxInputValue: 100
      center: 128
      width: 127
      phaseStart: 0
      phaseInterval: 2
      phaseIntervalMultipliers: [0, 1, 2]
    options.range = options.maxInputValue - options.minInputValue
    @_frequency = options.frequency or Math.PI * 2 / options.range / 2
    @_center = options.center
    @_width = options.width
    @_phaseStart = options.phaseStart
    @_phaseInterval = options.phaseInterval
    @_phaseIntervalMultipliers = options.phaseIntervalMultipliers

  _getColorChannel: (input, offset) ->
    Math.round(Math.sin(@_frequency * input + offset) * @_width + @_center)

  _getColor: (input) ->
    [red, green, blue] = for _, i in 'rgb'
      phase = @_phaseStart + @_phaseInterval * @_phaseIntervalMultipliers[i]
      @_getColorChannel(input, phase)
    red: red
    green: green
    blue: blue

  getColorRgb: (input) ->
    colors = @_getColor(input)
    "rgb(#{colors.red},#{colors.green},#{colors.blue})"

  getColorInt: (input) ->
    colors = @_getColor(input)
    (colors.red << 0xf0) + (colors.green << 0x08) + (colors.blue)

