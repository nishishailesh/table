function sync_with_that(me,that_element_id)
{
    //alert(me.getAttribute('data-type'));
    target=document.getElementById(that_element_id);
    target.value=me.value
    var event = new Event('change');
    target.dispatchEvent(event);
}

function  find_from_dd(me,idd)
{
        var option;
        target=document.getElementById(idd);
        //alert(me.value);
        var selectLength = document.getElementById(idd).length;
        for(i=0; i<selectLength;i++)
        {
                if (target[i].text.toLowerCase().search(me.value.toLowerCase())!=-1) 
                {
                        //alert(target[i].text);
                        //target.selectedIndex=i;
                        //return;
                        option = document.createElement("option");
                        option.text = target[i].text
                        option.value = target[i].value
                        target.prepend(option); 
                        i++;
                }
                else
                {

                }
        }
        target.selectedIndex=0;
        //alert("No record found having >>>>"+me.value+"<<<<");
}
    
function run_ajax(str,rid)
{
    //create object
    xhttp = new XMLHttpRequest();
    
    //4=request finished and response is ready
    //200=OK
    //when readyState status is changed, this function is called
    //responceText is HTML returned by the called-script
    //it is best to put text into an element
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        //document.getElementById(rid).innerHTML = document.getElementById(rid).innerHTML+this.responseText;
        document.getElementById(rid).innerHTML = this.responseText;
      }
    };
    //Setting FORM data
    xhttp.open("POST", "display_child.php", true);
    
    //Something required ad header
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    
    // Submitting FORM
    xhttp.send(str);
    
    //used to debug script
    //alert("Used to check if script reach here");
}
function make_post_string(fname,fvalue,tname,session_name)
{
    //k=encodeURIComponent(t.id);                   //to encode almost everything
    //v=encodeURIComponent(t.value);                    //to encode almost everything
    post='fname='+fname+'&fvalue='+fvalue+'&tname='+tname+'&session_name='+session_name;
    return post;                            
}

function do_work(fname,fvalue,tname,session_name)
{
    //alert("doing work");
    str=make_post_string(fname,fvalue,tname,session_name);
    //alert(post);
    run_ajax(str,'element_for_child');
}
