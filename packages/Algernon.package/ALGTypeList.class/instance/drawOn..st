drawing
drawOn: aCanvas
| theCanvas | 
theCanvas := aCanvas asAlphaBlendingCanvas: 0.0. 
super drawOn: theCanvas.