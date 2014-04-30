class PortGroupInfo
    constructor: (data) ->
        @_index = data.Index
        @_reserved = data.OwnershipState
        @_owner_id = data.OwnerUserId
        @_cpu_cores = data.CpuCores
        @_memory_in_mb = data.TotalMemoryInMb
        @_test_pacakge = data.TestPackage
        @_test_package_version = data.TestPackageVersion
        @_capacity_unit = 10

    _get_reserve_status: ->
        if @_reserved == 'OWNERSHIP_STATE_AVAILABLE'
            return 'Available'
        else if @_owner_id?.length > 0
            return @_owner_id
        else
            return 'stcadapter@Error'
    
    _get_memory_in_kb:  ->
        return @_memory_in_mb * 1000

    _get_software: ->
        return @_test_pacakge + @_test_package_version

    _get_capacity: ->
        return @_cpu_cores * @_capacity_unit

    Get_Data: ->
        data = {
            'id' : @_index
            'reserved' : @_get_reserve_status()
            "cores": @_cpu_cores
            "memory": @_get_memory_in_kb()
            "software": @_get_software()
            "capacity": @_get_capacity
        }
        return data
            

module.exports = PortGroupInfo
