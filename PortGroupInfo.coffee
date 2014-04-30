class PortGroupInfo
    constructor: (data) ->
        @index = data.Index
        @reserved = data.OwnershipState
        @cpucores = data.CpuCores
        @memoryinkb = data.TotalMemoryInMb * 1000
        @pacakgeversion = data.TestPackage + data.TestPackageVersion
    GetData: ->
        data = {
            'id' : @index
            'reserved' : @reserved
            "cores": @cpucores
            "memory": @memoryinkb
            "software": @pacakgeversion
            "capacity": 10
        }
        return data

module.exports = PortGroupInfo
