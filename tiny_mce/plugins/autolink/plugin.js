tinymce.PluginManager.add("autolink",function(t){function e(t){i(t,-1,"(",!0)}function n(t){i(t,0,"",!0)}function o(t){i(t,-1,"",!1)}function i(t,e,n){var o,i,a,r,l,s,d,c,u;if(o=t.selection.getRng(!0).cloneRange(),5>o.startOffset){if(c=o.endContainer.previousSibling,!c){if(!o.endContainer.firstChild||!o.endContainer.firstChild.nextSibling)return;c=o.endContainer.firstChild.nextSibling}if(u=c.length,o.setStart(c,u),o.setEnd(c,u),5>o.endOffset)return;i=o.endOffset,r=c}else{if(r=o.endContainer,3!=r.nodeType&&r.firstChild){for(;3!=r.nodeType&&r.firstChild;)r=r.firstChild;3==r.nodeType&&(o.setStart(r,0),o.setEnd(r,r.nodeValue.length))}i=1==o.endOffset?2:o.endOffset-1-e}a=i;do o.setStart(r,i>=2?i-2:0),o.setEnd(r,i>=1?i-1:0),i-=1;while(" "!=""+o&&""!=""+o&&160!=(""+o).charCodeAt(0)&&i-2>=0&&""+o!=n);if(""+o==n||160==(""+o).charCodeAt(0)?(o.setStart(r,i),o.setEnd(r,a),i+=1):0===o.startOffset?(o.setStart(r,0),o.setEnd(r,a)):(o.setStart(r,i),o.setEnd(r,a)),s=""+o,"."==s.charAt(s.length-1)&&o.setEnd(r,a-1),s=""+o,d=s.match(/^(https?:\/\/|ssh:\/\/|ftp:\/\/|file:\/|www\.|(?:mailto:)?[A-Z0-9._%+\-]+@)(.+)$/i),d&&("www."==d[1]?d[1]="http://www.":/@$/.test(d[1])&&!/^mailto:/.test(d[1])&&(d[1]="mailto:"+d[1]),l=t.selection.getBookmark(),t.selection.setRng(o),t.execCommand("createlink",!1,d[1]+d[2]),t.selection.moveToBookmark(l),t.nodeChanged(),tinymce.Env.webkit)){t.selection.collapse(!1);var f=Math.min(r.length,a+1);o.setStart(r,f),o.setEnd(r,f),t.selection.setRng(o)}}t.on("keydown",function(e){return 13==e.keyCode?o(t):void 0}),tinymce.Env.ie||(t.on("keypress",function(n){return 41==n.which?e(t):void 0}),t.on("keyup",function(e){return 32==e.keyCode?n(t):void 0}))});