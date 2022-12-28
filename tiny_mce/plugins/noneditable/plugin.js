tinymce.PluginManager.add("noneditable",function(e){function t(){function t(e){var t;if(1===e.nodeType){if(t=e.getAttribute(c),t&&"inherit"!==t)return t;if(t=e.contentEditable,"inherit"!==t)return t}return null}function n(e){for(var n;e;){if(n=t(e))return"false"===n?e:null;e=e.parentNode}}function i(e){for(;e;){if(e.id===g)return e;e=e.parentNode}}function o(e){var t;if(e)for(t=new r(e,e),e=t.current();e;e=t.next())if(3===e.nodeType)return e}function a(n,i){var o,a;return"false"===t(n)&&m.isBlock(n)?(f.select(n),void 0):(a=m.createRng(),"true"===t(n)&&(n.firstChild||n.appendChild(e.getDoc().createTextNode(" ")),n=n.firstChild,i=!0),o=m.create("span",{id:g,"data-mce-bogus":!0},h),i?n.parentNode.insertBefore(o,n):m.insertAfter(o,n),a.setStart(o.firstChild,1),a.collapse(!0),f.setRng(a),o)}function l(e){var t,n,a,r;if(e)t=f.getRng(!0),t.setStartBefore(e),t.setEndBefore(e),n=o(e),n&&n.nodeValue.charAt(0)==h&&(n=n.deleteData(0,1)),m.remove(e,!0),f.setRng(t);else for(a=i(f.getStart());(e=m.get(g))&&e!==r;)a!==e&&(n=o(e),n&&n.nodeValue.charAt(0)==h&&(n=n.deleteData(0,1)),m.remove(e,!0)),r=e}function d(){function e(e,n){var i,o,a,l,c;if(i=s.startContainer,o=s.startOffset,3==i.nodeType){if(c=i.nodeValue.length,o>0&&c>o||(n?o==c:0===o))return}else{if(!(i.childNodes.length>o))return n?null:e;var d=!n&&o>0?o-1:o;i=i.childNodes[d],i.hasChildNodes()&&(i=i.firstChild)}for(a=new r(i,e);l=a[n?"prev":"next"]();){if(3===l.nodeType&&l.nodeValue.length>0)return;if("true"===t(l))return l}return e}var i,o,c,s,d;l(),c=f.isCollapsed(),i=n(f.getStart()),o=n(f.getEnd()),(i||o)&&(s=f.getRng(!0),c?(i=i||o,(d=e(i,!0))?a(d,!0):(d=e(i,!1))?a(d,!1):f.select(i)):(s=f.getRng(!0),i&&s.setStartBefore(i),o&&s.setEndAfter(o),f.setRng(s)))}function u(o){function a(e,t){for(;e=e[t?"previousSibling":"nextSibling"];)if(3!==e.nodeType||e.nodeValue.length>0)return e}function c(e,t){f.select(e),f.collapse(t)}function u(o){function a(e){for(var t=c;t;){if(t===e)return;t=t.parentNode}m.remove(e),d()}function r(){var i,r,l=e.schema.getNonEmptyElements();for(r=new tinymce.dom.TreeWalker(c,e.getBody());(i=o?r.prev():r.next())&&!l[i.nodeName.toLowerCase()]&&!(3===i.nodeType&&tinymce.trim(i.nodeValue).length>0);)if("false"===t(i))return a(i),!0;return n(i)?!0:!1}var l,c,s,u;if(f.isCollapsed()){if(l=f.getRng(!0),c=l.startContainer,s=l.startOffset,c=i(c)||c,u=n(c))return a(u),!1;if(3==c.nodeType&&(o?s>0:c.nodeValue.length>s))return!0;if(1==c.nodeType&&(c=c.childNodes[s]||c),r())return!1}return!0}var g,h,p,y,v=o.keyCode;if(p=f.getStart(),y=f.getEnd(),g=n(p)||n(y),g&&(112>v||v>124)&&v!=s.DELETE&&v!=s.BACKSPACE){if((tinymce.isMac?o.metaKey:o.ctrlKey)&&(67==v||88==v||86==v))return;if(o.preventDefault(),v==s.LEFT||v==s.RIGHT){var b=v==s.LEFT;if(e.dom.isBlock(g)){var x=b?g.previousSibling:g.nextSibling,C=new r(x,x),w=b?C.prev():C.next();c(w,!b)}else c(g,b)}}else if(v==s.LEFT||v==s.RIGHT||v==s.BACKSPACE||v==s.DELETE){if(h=i(p)){if(v==s.LEFT||v==s.BACKSPACE)if(g=a(h,!0),g&&"false"===t(g)){if(o.preventDefault(),v!=s.LEFT)return m.remove(g),void 0;c(g,!0)}else l(h);if(v==s.RIGHT||v==s.DELETE)if(g=a(h),g&&"false"===t(g)){if(o.preventDefault(),v!=s.RIGHT)return m.remove(g),void 0;c(g,!1)}else l(h)}if((v==s.BACKSPACE||v==s.DELETE)&&!u(v==s.BACKSPACE))return o.preventDefault(),!1}}var m=e.dom,f=e.selection,g="mce_noneditablecaret",h="﻿";e.on("mousedown",function(n){var i=e.selection.getNode();"false"===t(i)&&i==n.target&&d()}),e.on("mouseup keyup",d),e.on("keydown",u)}function n(t){var n=a.length,i=t.content,r=tinymce.trim(o);if("raw"!=t.format){for(;n--;)i=i.replace(a[n],function(t){var n=arguments,o=n[n.length-2];return o>0&&'"'==i.charAt(o-1)?t:'<span class="'+r+'" data-mce-content="'+e.dom.encode(n[0])+'">'+e.dom.encode("string"==typeof n[1]?n[1]:n[0])+"</span>"});t.content=i}}var i,o,a,r=tinymce.dom.TreeWalker,l="contenteditable",c="data-mce-"+l,s=tinymce.util.VK;i=" "+tinymce.trim(e.getParam("noneditable_editable_class","mceEditable"))+" ",o=" "+tinymce.trim(e.getParam("noneditable_noneditable_class","mceNonEditable"))+" ",a=e.getParam("noneditable_regexp"),a&&!a.length&&(a=[a]),e.on("PreInit",function(){t(),a&&e.on("BeforeSetContent",n),e.parser.addAttributeFilter("class",function(e){for(var t,n,a=e.length;a--;)n=e[a],t=" "+n.attr("class")+" ",-1!==t.indexOf(i)?n.attr(c,"true"):-1!==t.indexOf(o)&&n.attr(c,"false")}),e.serializer.addAttributeFilter(c,function(e){for(var t,n=e.length;n--;)t=e[n],a&&t.attr("data-mce-content")?(t.name="#text",t.type=3,t.raw=!0,t.value=t.attr("data-mce-content")):(t.attr(l,null),t.attr(c,null))}),e.parser.addAttributeFilter(l,function(e){for(var t,n=e.length;n--;)t=e[n],t.attr(c,t.attr(l)),t.attr(l,null)})})});