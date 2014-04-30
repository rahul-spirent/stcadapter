class ChassisInfo
    constructor: (data) ->
        @partnum = data.PartNum
        @hostname = data.Hostname
        @slotcount = data.SlotCount
        @serialnumber = data.SerialNum
        @fwversion = data.FirmwareVersion
        @modules = []

    GetData: ->
        data = {
            'description' : @partnum
            'ip' : @hostname
            'firmware' : @fwversion
            'total_slots' : @slotcount
            'serial_number' : @serialnumber
        }
        return data

module.exports = ChassisInfo
