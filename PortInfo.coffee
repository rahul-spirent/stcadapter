class PortInfo
	constructor: (data) ->
		@_index = data.Index
		@_enabled = data.Enabled

	_get_displayname: ->
		return "Eth #{(@index - 1}"
		
	Get_Data: ->
		data : {
			'number' : @_index			
			'link' : 'NONE'
			'enabled' : @_enabled
			'speed' : '10000'
			'duplex' : 'Full Duplex'
			'mac' : ''
			'media' : 'Fiber'
			'displayName' : _get_displayname()
		}