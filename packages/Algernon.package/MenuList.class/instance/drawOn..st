visibility
drawOn: aCanvas
| theCanvas | 
theCanvas := aCanvas asAlphaBlendingCanvas: 0.8. 
super drawOn: theCanvas.