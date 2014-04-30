class SlotInfo
    constructor: (data) ->
        @index = data.Index
        @fwversion = data.FirmwareVersion
        @cpu = 0
        @mode = "NA"
        @serialnum = data.SerialNum
        @model = data.Model
        @profile = data.ActiveProfile
        @portgroups = []

    GetData: ->
        data = {
            'id' : @index
            "software": @fwversion
            "cpu": @cpu
            "mode": @mode
            "serial_number": @serialnum
            'model' : @model
            "profile": @profile
        }
        return data

module.exports = SlotInfo
