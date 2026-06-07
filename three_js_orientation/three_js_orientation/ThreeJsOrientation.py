# AUTO GENERATED FILE - DO NOT EDIT

import typing  # noqa: F401
from typing_extensions import TypedDict, NotRequired, Literal # noqa: F401
from dash.development.base_component import Component, _explicitize_args

ComponentType = typing.Union[
    str,
    int,
    float,
    Component,
    None,
    typing.Sequence[typing.Union[str, int, float, Component, None]],
]

NumberType = typing.Union[
    typing.SupportsFloat, typing.SupportsInt, typing.SupportsComplex
]


class ThreeJsOrientation(Component):
    """A ThreeJsOrientation component.


Keyword arguments:

- id (string; optional)

- activeTime (number; required)

- cameraFollowModel (boolean; default False)

- data (string; required)

- headingOffset (number; default 0)

- headingSign (number; default 1)

- modelFile (string; default "")

- pitchOffset (number; default 0)

- pitchSign (number; default 1)

- rollOffset (number; default 0)

- rollSign (number; default 1)

- rotationOrder (list of strings; default ["roll", "pitch", "heading"])

- textureFile (string; optional)"""
    _children_props = []
    _base_nodes = ['children']
    _namespace = 'three_js_orientation'
    _type = 'ThreeJsOrientation'


    def __init__(
        self,
        id: typing.Optional[typing.Union[str, dict]] = None,
        data: typing.Optional[str] = None,
        activeTime: typing.Optional[NumberType] = None,
        modelFile: typing.Optional[str] = None,
        textureFile: typing.Optional[str] = None,
        style: typing.Optional[typing.Any] = None,
        pitchOffset: typing.Optional[NumberType] = None,
        rollOffset: typing.Optional[NumberType] = None,
        headingOffset: typing.Optional[NumberType] = None,
        pitchSign: typing.Optional[NumberType] = None,
        rollSign: typing.Optional[NumberType] = None,
        headingSign: typing.Optional[NumberType] = None,
        rotationOrder: typing.Optional[typing.Sequence[str]] = None,
        cameraFollowModel: typing.Optional[bool] = None,
        **kwargs
    ):
        self._prop_names = ['id', 'activeTime', 'cameraFollowModel', 'data', 'headingOffset', 'headingSign', 'modelFile', 'pitchOffset', 'pitchSign', 'rollOffset', 'rollSign', 'rotationOrder', 'style', 'textureFile']
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'activeTime', 'cameraFollowModel', 'data', 'headingOffset', 'headingSign', 'modelFile', 'pitchOffset', 'pitchSign', 'rollOffset', 'rollSign', 'rotationOrder', 'style', 'textureFile']
        self.available_wildcard_properties =            []
        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs and excess named props
        args = {k: _locals[k] for k in _explicit_args}

        for k in ['activeTime', 'data']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')

        super(ThreeJsOrientation, self).__init__(**args)

setattr(ThreeJsOrientation, "__init__", _explicitize_args(ThreeJsOrientation.__init__))
