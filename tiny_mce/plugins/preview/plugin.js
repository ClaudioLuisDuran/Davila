tinymce.PluginManager.add("preview",function(e){e.addCommand("mcePreview",function(){e.windowManager.open({title:"Preview",width:parseInt(e.getParam("plugin_preview_width","650"),10),height:parseInt(e.getParam("plugin_preview_height","500"),10),html:"<iframe src=\"javascript:''\"></iframe>",buttons:{text:"Close",onclick:function(){this.parent().parent().close()}},onPostRender:function(){var t,n=this.getEl("body").firstChild.contentWindow.document,i="";tinymce.each(tinymce.explode(e.settings.content_css),function(t){i+='<link type="text/css" rel="stylesheet" href="'+e.documentBaseURI.toAbsolute(t)+'">'}),t="<!DOCTYPE html><html><head>"+i+"</head>"+"<body>"+e.getContent()+"</body>"+"</html>",n.open(),n.write(t),n.close()}})}),e.addButton("preview",{title:"Preview",cmd:"mcePreview"}),e.addMenuItem("preview",{text:"Preview",cmd:"mcePreview",context:"view"})});