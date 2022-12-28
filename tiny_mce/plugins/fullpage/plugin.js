tinymce.PluginManager.add("fullpage",function(e){function t(){var t=n();e.windowManager.open({title:"Document properties",data:t,defaults:{type:"textbox",size:40},body:[{name:"title",label:"Title"},{name:"keywords",label:"Keywords"},{name:"description",label:"Description"},{name:"robots",label:"Robots"},{name:"author",label:"Author"},{name:"docencoding",label:"Encoding"}],onSubmit:function(e){i(tinymce.extend(t,e.data))}})}function n(){function t(e,t){var n=e.attr(t);return n||""}var n,i,a=o(),r={};return r.fontface=e.getParam("fullpage_default_fontface",""),r.fontsize=e.getParam("fullpage_default_fontsize",""),n=a.firstChild,7==n.type&&(r.xml_pi=!0,i=/encoding="([^"]+)"/.exec(n.value),i&&(r.docencoding=i[1])),n=a.getAll("#doctype")[0],n&&(r.doctype="<!DOCTYPE"+n.value+">"),n=a.getAll("title")[0],n&&n.firstChild&&(r.title=n.firstChild.value),d(a.getAll("meta"),function(e){var t,n=e.attr("name"),i=e.attr("http-equiv");n?r[n.toLowerCase()]=e.attr("content"):"Content-Type"==i&&(t=/charset\s*=\s*(.*)\s*/gi.exec(e.attr("content")),t&&(r.docencoding=t[1]))}),n=a.getAll("html")[0],n&&(r.langcode=t(n,"lang")||t(n,"xml:lang")),n=a.getAll("link")[0],n&&"stylesheet"==n.attr("rel")&&(r.stylesheet=n.attr("href")),n=a.getAll("body")[0],n&&(r.langdir=t(n,"dir"),r.style=t(n,"style"),r.visited_color=t(n,"vlink"),r.link_color=t(n,"link"),r.active_color=t(n,"alink")),r}function i(t){function n(e,t,n){e.attr(t,n?n:void 0)}function i(e){r.firstChild?r.insert(e,r.firstChild):r.append(e)}var a,r,l,s,g,m=e.dom;a=o(),r=a.getAll("head")[0],r||(s=a.getAll("html")[0],r=new u("head",1),s.firstChild?s.insert(r,s.firstChild,!0):s.append(r)),s=a.firstChild,t.xml_pi?(g='version="1.0"',t.docencoding&&(g+=' encoding="'+t.docencoding+'"'),7!=s.type&&(s=new u("xml",7),a.insert(s,a.firstChild,!0)),s.value=g):s&&7==s.type&&s.remove(),s=a.getAll("#doctype")[0],t.doctype?(s||(s=new u("#doctype",10),t.xml_pi?a.insert(s,a.firstChild):i(s)),s.value=t.doctype.substring(9,t.doctype.length-1)):s&&s.remove(),t.docencoding&&(s=null,d(a.getAll("meta"),function(e){"Content-Type"==e.attr("http-equiv")&&(s=e)}),s||(s=new u("meta",1),s.attr("http-equiv","Content-Type"),s.shortEnded=!0,i(s)),s.attr("content","text/html; charset="+t.docencoding)),s=a.getAll("title")[0],t.title?s||(s=new u("title",1),s.append(new u("#text",3)).value=t.title,i(s)):s&&s.remove(),d("keywords,description,author,copyright,robots".split(","),function(e){var n,o,r=a.getAll("meta"),l=t[e];for(n=0;r.length>n;n++)if(o=r[n],o.attr("name")==e)return l?o.attr("content",l):o.remove(),void 0;l&&(s=new u("meta",1),s.attr("name",e),s.attr("content",l),s.shortEnded=!0,i(s))}),s=a.getAll("link")[0],s&&"stylesheet"==s.attr("rel")?t.stylesheet?s.attr("href",t.stylesheet):s.remove():t.stylesheet&&(s=new u("link",1),s.attr({rel:"stylesheet",text:"text/css",href:t.stylesheet}),s.shortEnded=!0,i(s)),s=a.getAll("body")[0],s&&(n(s,"dir",t.langdir),n(s,"style",t.style),n(s,"vlink",t.visited_color),n(s,"link",t.link_color),n(s,"alink",t.active_color),m.setAttribs(e.getBody(),{style:t.style,dir:t.dir,vLink:t.visited_color,link:t.link_color,aLink:t.active_color})),s=a.getAll("html")[0],s&&(n(s,"lang",t.langcode),n(s,"xml:lang",t.langcode)),r.firstChild||r.remove(),l=new tinymce.html.Serializer({validate:!1,indent:!0,apply_source_formatting:!0,indent_before:"head,html,body,meta,title,script,link,style",indent_after:"head,html,body,meta,title,script,link,style"}).serialize(a),c=l.substring(0,l.indexOf("</body>"))}function o(){return new tinymce.html.DomParser({validate:!1,root_name:"#document"}).parse(c)}function a(t){function n(e){return e.replace(/<\/?[A-Z]+/g,function(e){return e.toLowerCase()})}var i,a,l,u,g=t.content,m="",f=e.dom;"raw"==t.format&&c||t.source_view&&e.getParam("fullpage_hide_in_source_view")||(g=g.replace(/<(\/?)BODY/gi,"<$1body"),i=g.indexOf("<body"),-1!=i?(i=g.indexOf(">",i),c=n(g.substring(0,i+1)),a=g.indexOf("</body",i),-1==a&&(a=g.length),t.content=g.substring(i+1,a),s=n(g.substring(a))):(c=r(),s="\n</body>\n</html>"),l=o(),d(l.getAll("style"),function(e){e.firstChild&&(m+=e.firstChild.value)}),u=l.getAll("body")[0],u&&f.setAttribs(e.getBody(),{style:u.attr("style")||"",dir:u.attr("dir")||"",vLink:u.attr("vlink")||"",link:u.attr("link")||"",aLink:u.attr("alink")||""}),f.remove("fullpage_styles"),m&&(f.add(e.getDoc().getElementsByTagName("head")[0],"style",{id:"fullpage_styles"},m),u=f.get("fullpage_styles"),u.styleSheet&&(u.styleSheet.cssText=m)))}function r(){var t,n="",i="";return e.getParam("fullpage_default_xml_pi")&&(n+='<?xml version="1.0" encoding="'+e.getParam("fullpage_default_encoding","ISO-8859-1")+'" ?>\n'),n+=e.getParam("fullpage_default_doctype","<!DOCTYPE html>"),n+="\n<html>\n<head>\n",(t=e.getParam("fullpage_default_title"))&&(n+="<title>"+t+"</title>\n"),(t=e.getParam("fullpage_default_encoding"))&&(n+='<meta http-equiv="Content-Type" content="text/html; charset='+t+'" />\n'),(t=e.getParam("fullpage_default_font_family"))&&(i+="font-family: "+t+";"),(t=e.getParam("fullpage_default_font_size"))&&(i+="font-size: "+t+";"),(t=e.getParam("fullpage_default_text_color"))&&(i+="color: "+t+";"),n+="</head>\n<body"+(i?' style="'+i+'"':"")+">\n"}function l(t){t.selection||t.source_view&&e.getParam("fullpage_hide_in_source_view")||(t.content=tinymce.trim(c)+"\n"+tinymce.trim(t.content)+"\n"+tinymce.trim(s))}var c,s,d=tinymce.each,u=tinymce.html.Node;e.addCommand("mceFullPageProperties",t),e.addButton("fullpage",{title:"Document properties",cmd:"mceFullPageProperties"}),e.addMenuItem("fullpage",{text:"Document properties",cmd:"mceFullPageProperties",context:"file"}),e.on("BeforeSetContent",a),e.on("GetContent",l)});