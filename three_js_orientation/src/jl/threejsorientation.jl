# AUTO GENERATED FILE - DO NOT EDIT

export threejsorientation

"""
    threejsorientation(;kwargs...)

A ThreeJsOrientation component.

Keyword arguments:
- `id` (String; optional)
- `activeTime` (Real; required)
- `cameraFollowModel` (Bool; optional)
- `data` (String; required)
- `headingOffset` (Real; optional)
- `headingSign` (Real; optional)
- `modelFile` (String; optional)
- `pitchOffset` (Real; optional)
- `pitchSign` (Real; optional)
- `rollOffset` (Real; optional)
- `rollSign` (Real; optional)
- `rotationOrder` (Array of Strings; optional)
- `style` (Dict; optional)
- `textureFile` (String; optional)
"""
function threejsorientation(; kwargs...)
        available_props = Symbol[:id, :activeTime, :cameraFollowModel, :data, :headingOffset, :headingSign, :modelFile, :pitchOffset, :pitchSign, :rollOffset, :rollSign, :rotationOrder, :style, :textureFile]
        wild_props = Symbol[]
        return Component("threejsorientation", "ThreeJsOrientation", "three_js_orientation", available_props, wild_props; kwargs...)
end

