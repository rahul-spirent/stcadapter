class SlotInfo
    constructor: (data) ->
        @_index = data.Index
        @_fw_version = data.FirmwareVersion
        @_cpu = 0
        @_mode = "NA"
        @_serial_num = data.SerialNum
        @_model = data.Model
        @_profile = data.ActiveProfile
        @Portgroups = []

    Get_Data: ->
        data = {
            'id' : @_index
            "software": @_fw_version
            "cpu": @_cpu
            "mode": @_mode
            "serial_number": @_serial_num
            'model' : @_model
            "profile": @_profile
        }
        return data

module.exports = SlotInfo
