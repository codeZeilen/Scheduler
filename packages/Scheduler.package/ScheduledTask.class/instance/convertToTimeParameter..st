private
convertToTimeParameter: parameter

	^ [parameter asDateAndTime] on: Error do: [Time readFrom: parameter readStream]