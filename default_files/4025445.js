function SymbolSearch(bookID)
{

  var f = document.forms['frmSymbolSearch'];
  var url="https://www.google.com/search?q=site:github.com/ncbi/template " + f.__symbol.value;

  window.open(url,'_newtab');
  
  return false;
}
;

function SymbolSearchKeyPress(bookID,e)
{
 var nav = ( navigator.appName == "Netscape" ) ? true : false;
 var msie = ( navigator.appName.indexOf("Microsoft") != -1 ) ? true : false;
 var k = 0;

 if( nav ) { k = e.which; }
 else if( msie ) { k = e.keyCode; }
 if( k==13 ) SymbolSearch(bookID);
}

;
