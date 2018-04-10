function getRandomInt(min, max)
{
    return Math.floor(Math.random() * (max - min + 1)) + min;
}
function view_page(page)
{
       var qs=page+"?random="+getRandomInt(1, 99999);
       $("#view").empty().html('<center><img src="loading.gif" width="50px" height="50px" /><h4>Loading</h4></center>');
       $("#view").load(qs);
}
function view_page_qs(page)
{
       var qs=page;
       $("#view").empty().html('<center><img src="loading.gif" width="50px" height="50px" /><h4>Loading</h4></center>');
       $("#view").load(qs);
}
function view_page_qs_1(page,spanid)
{
        var span_id='#'+spanid;
       var qs=page+"&random="+getRandomInt(1, 99999);
       $(span_id).empty().html('<center><img src="loading.gif" width="50px" height="50px" /><h4>Loading</h4></center>');
       $(span_id).load(qs);
}