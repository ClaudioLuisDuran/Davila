tinymce.PluginManager.add("contextmenu",function(e){var t;e.on("contextmenu",function(n){var o;if(n.preventDefault(),o=e.settings.contextmenu||"link image inserttable | cell row column deletetable",t)t.show();else{var i=[];tinymce.each(o.split(/[ ,]/),function(t){var n=e.menuItems[t];"|"==t&&(n={text:t}),n&&(n.shortcut="",i.push(n))});for(var a=0;i.length>a;a++)"|"==i[a].text&&(0===a||a==i.length-1)&&i.splice(a,1);t=new tinymce.ui.Menu({items:i,context:"contextmenu"}),t.renderTo(document.body)}var r=tinymce.DOM.getPos(e.getContentAreaContainer());r.x+=n.clientX,r.y+=n.clientY,t.moveTo(r.x,r.y),e.on("remove",function(){t.remove(),t=null})})});