tinymce.PluginManager.add("media",function(e,t){function n(e){return-1!=e.indexOf(".mp3")?"audio/mpeg":-1!=e.indexOf(".wav")?"audio/wav":-1!=e.indexOf(".mp4")?"video/mp4":-1!=e.indexOf(".webm")?"video/webm":-1!=e.indexOf(".ogg")?"video/ogg":""}function i(){function t(e){var t,o,a,r;t=n.find("#width")[0],o=n.find("#height")[0],a=t.value(),r=o.value(),n.find("#constrain")[0].checked()&&i&&c&&a&&r&&(e.control==t?(r=Math.round(a/i*r),o.value(r)):(a=Math.round(r/c*a),t.value(a))),i=a,c=r}var n,i,c,s;s=l(e.selection.getNode()),i=s.width,c=s.height,n=e.windowManager.open({title:"Insert media",data:s,bodyType:"tabpanel",body:[{title:"General",type:"form",onShowTab:function(){this.fromJSON(r(this.next().find("#embed").value()))},items:[{name:"source1",type:"filepicker",filetype:"image",size:40,autofocus:!0,label:"Source"},{name:"source2",type:"filepicker",filetype:"image",size:40,label:"Alternative source"},{name:"poster",type:"filepicker",filetype:"image",size:40,label:"Poster"},{type:"container",label:"Dimensions",layout:"flex",direction:"row",align:"center",spacing:5,items:[{name:"width",type:"textbox",maxLength:3,size:3,onchange:t},{type:"label",text:"x"},{name:"height",type:"textbox",maxLength:3,size:3,onchange:t},{name:"constrain",type:"checkbox",checked:!0,text:"Constrain proportions"}]}]},{title:"Embed",type:"panel",layout:"flex",direction:"column",align:"stretch",padding:10,spacing:10,onShowTab:function(){this.find("#embed").value(a(this.parent().toJSON()))},items:[{type:"label",text:"Paste your embed code below:"},{type:"textbox",flex:1,name:"embed",value:o(),multiline:!0,label:"Source"}]}],onSubmit:function(){e.insertContent(a(this.toJSON()))}})}function o(){var t=e.selection.getNode();return t.getAttribute("data-mce-object")?e.selection.getContent():void 0}function a(i){var o="";return i.source1||(tinymce.extend(i,r(i.embed)),i.source1)?(i.source1=e.convertURL(i.source1,"source"),i.source2=e.convertURL(i.source2,"source"),i.source1mime=n(i.source1),i.source2mime=n(i.source2),i.poster=e.convertURL(i.poster,"poster"),i.flashPlayerUrl=e.convertURL(t+"/moxieplayer.swf","movie"),i.embed?o=c(i.embed,i,!0):(tinymce.each(s,function(e){var t,n,o;if(t=e.regex.exec(i.source1)){for(o=e.url,n=0;t[n];n++)o=o.replace("$"+n,function(){return t[n]});i.source1=o,i.type=e.type,i.width=e.w,i.height=e.h}}),i.width=i.width||300,i.height=i.height||150,tinymce.each(i,function(t,n){i[n]=e.dom.encode(t)}),"iframe"==i.type?o+='<iframe src="'+i.source1+'" width="'+i.width+'" height="'+i.height+'"></iframe>':-1!=i.source1mime.indexOf("audio")?e.settings.audio_template_callback?o=e.settings.audio_template_callback(i):o+='<audio controls="controls" src="'+i.source1+'">'+(i.source2?'\n<source src="'+i.source2+'"'+(i.source2mime?' type="'+i.source2mime+'"':"")+" />\n":"")+"</audio>":o=e.settings.video_template_callback?e.settings.video_template_callback(i):'<video width="'+i.width+'" height="'+i.height+'"'+(i.poster?' poster="'+i.poster+'"':"")+' controls="controls">\n'+'<source src="'+i.source1+'"'+(i.source1mime?' type="'+i.source1mime+'"':"")+" />\n"+(i.source2?'<source src="'+i.source2+'"'+(i.source2mime?' type="'+i.source2mime+'"':"")+" />\n":"")+"</video>"),o):""}function r(e){var t={};return new tinymce.html.SaxParser({validate:!1,special:"script,noscript",start:function(e,n){t.source1||"param"!=e||(t.source1=n.map.movie),("iframe"==e||"object"==e||"embed"==e||"video"==e||"audio"==e)&&(t=tinymce.extend(n.map,t)),"source"==e&&(t.source1?t.source2||(t.source2=n.map.src):t.source1=n.map.src)}}).parse(e),t.source1=t.source1||t.src||t.data,t.source2=t.source2||"",t.poster=t.poster||"",t}function l(t){return t.getAttribute("data-mce-object")?r(e.serializer.serialize(t,{selection:!0})):{}}function c(e,t,n){function i(e,t){var n,i,o,a;for(n in t)if(o=""+t[n],e.map[n])for(i=e.length;i--;)a=e[i],a.name==n&&(o?(e.map[n]=o,a.value=o):(delete e.map[n],e.splice(i,1)));else o&&(e.push({name:n,value:o}),e.map[n]=o)}var o=new tinymce.html.Writer,a=0;return new tinymce.html.SaxParser({validate:!1,special:"script,noscript",comment:function(e){o.comment(e)},cdata:function(e){o.cdata(e)},text:function(e,t){o.text(e,t)},start:function(e,r,l){switch(e){case"video":case"object":case"img":case"iframe":i(r,{width:t.width,height:t.height})}if(n)switch(e){case"video":i(r,{poster:t.poster,src:""}),t.source2&&i(r,{src:""});break;case"iframe":i(r,{src:t.source1});break;case"source":if(a++,2>=a&&(i(r,{src:t["source"+a],type:t["source"+a+"mime"]}),!t["source"+a]))return}o.start(e,r,l)},end:function(e){if("video"==e&&n)for(var r=1;2>=r;r++)if(t["source"+r]){var l=[];l.map={},r>a&&(i(l,{src:t["source"+r],type:t["source"+r+"mime"]}),o.start("source",l,!0))}o.end(e)}},new tinymce.html.Schema({})).parse(e),o.getContent()}var s=[{regex:/youtu\.be\/([a-z1-9.-_]+)/,type:"iframe",w:425,h:350,url:"http://www.youtube.com/embed/$1"},{regex:/youtube\.com(.+)v=([^&]+)/,type:"iframe",w:425,h:350,url:"http://www.youtube.com/embed/$2"},{regex:/vimeo\.com\/([0-9]+)/,type:"iframe",w:425,h:350,url:"http://player.vimeo.com/video/$1?title=0&byline=0&portrait=0&color=8dc7dc"},{regex:/maps\.google\.([a-z]{2,3})\/maps\/(.+)msid=(.+)/,type:"iframe",w:425,h:350,url:'http://maps.google.com/maps/ms?msid=$2&output=embed"'}];e.on("ResolveName",function(e){var t;(t=e.target.getAttribute("data-mce-object"))&&(e.name=t)}),e.on("preInit",function(){var t=e.schema.getSpecialElements();tinymce.each("video audio iframe object".split(" "),function(e){t[e]=RegExp("</"+e+"[^>]*>","gi")}),e.schema.addValidElements("object[id|style|width|height|classid|codebase|*],embed[id|style|width|height|type|src|*],video[*],audio[*]");var n=e.schema.getBoolAttrs();tinymce.each("webkitallowfullscreen mozallowfullscreen allowfullscreen".split(" "),function(e){n[e]={}}),e.parser.addNodeFilter("iframe,video,audio,object,embed",function(t,n){for(var i,o,a,r,l,c,s,d=t.length;d--;){for(o=t[d],a=new tinymce.html.Node("img",1),a.shortEnded=!0,c=o.attributes,i=c.length;i--;)r=c[i].name,l=c[i].value,"width"!==r&&"height"!==r&&"style"!==r&&(("data"==r||"src"==r)&&(l=e.convertURL(l,r)),a.attr("data-mce-p-"+r,l));s=o.firstChild&&o.firstChild.value,s&&(a.attr("data-mce-html",escape(s)),a.firstChild=null),a.attr({width:o.attr("width")||"300",height:o.attr("height")||("audio"==n?"30":"150"),style:o.attr("style"),src:tinymce.Env.transparentSrc,"data-mce-object":n,"class":"mce-object mce-object-"+n}),o.replace(a)}}),e.serializer.addAttributeFilter("data-mce-object",function(e,t){for(var n,i,o,a,r,l,c=e.length;c--;){for(n=e[c],i=new tinymce.html.Node(n.attr(t),1),"audio"!=n.attr(t)&&i.attr({width:n.attr("width"),height:n.attr("height")}),i.attr({style:n.attr("style")}),a=n.attributes,o=a.length;o--;){var s=a[o].name;0===s.indexOf("data-mce-p-")&&i.attr(s.substr(11),a[o].value)}r=n.attr("data-mce-html"),r&&(l=new tinymce.html.Node("#text",3),l.raw=!0,l.value=unescape(r),i.append(l)),n.replace(i)}})}),e.on("ObjectSelected",function(e){"audio"==e.target.getAttribute("data-mce-object")&&e.preventDefault()}),e.on("objectResized",function(e){var t,n=e.target;n.getAttribute("data-mce-object")&&(t=n.getAttribute("data-mce-html"),t&&(t=unescape(t),n.setAttribute("data-mce-html",escape(c(t,{width:e.width,height:e.height})))))}),e.addButton("media",{tooltip:"Insert/edit video",onclick:i,stateSelector:"img[data-mce-object=video]"}),e.addMenuItem("media",{icon:"media",text:"Insert video",onclick:i,context:"insert",prependToContext:!0})});