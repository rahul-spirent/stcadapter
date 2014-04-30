class ChassisInfo
    constructor: (data) ->
        @_part_num = data.PartNum
        @_hostname = data.Hostname
        @_slot_count = data.SlotCount
        @_serial_number = data.SerialNum
        @_fw_version = data.FirmwareVersion
        @Modules = []

    Get_Data: ->
        data = {
            'description' : @_part_num
            'ip' : @_hostname
            'firmware' : @_fw_version
            'total_slots' : @_slot_count
            'serial_number' : @_serial_number
        }
        return data

module.exports = ChassisInfo
