# AUTO GENERATED FILE - DO NOT EDIT

#' @export
threeJsOrientation <- function(id=NULL, activeTime=NULL, cameraFollowModel=NULL, data=NULL, headingOffset=NULL, headingSign=NULL, modelFile=NULL, pitchOffset=NULL, pitchSign=NULL, rollOffset=NULL, rollSign=NULL, rotationOrder=NULL, style=NULL, textureFile=NULL) {
    
    props <- list(id=id, activeTime=activeTime, cameraFollowModel=cameraFollowModel, data=data, headingOffset=headingOffset, headingSign=headingSign, modelFile=modelFile, pitchOffset=pitchOffset, pitchSign=pitchSign, rollOffset=rollOffset, rollSign=rollSign, rotationOrder=rotationOrder, style=style, textureFile=textureFile)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'ThreeJsOrientation',
        namespace = 'three_js_orientation',
        propNames = c('id', 'activeTime', 'cameraFollowModel', 'data', 'headingOffset', 'headingSign', 'modelFile', 'pitchOffset', 'pitchSign', 'rollOffset', 'rollSign', 'rotationOrder', 'style', 'textureFile'),
        package = 'threeJsOrientation'
        )

    structure(component, class = c('dash_component', 'list'))
}
