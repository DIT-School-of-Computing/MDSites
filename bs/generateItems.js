function generateItems() {
    var out = "";
    var i;
    for(i = 0; i < 5; i++) {
        out += '<li><a href="' + i + '.html">' + i + '</a></li>';
    }
    document.getElementById("facetapi-facet-apachesolrsolr-block-im-field-education-level").innerHTM=out;
}