
<!-- Make sure you have a link to the jquery file
https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js
-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- If you want to call the data using a function activated by clicking text on your webpage, just uncomment the function in the script below 
		using href="javascript:void(0);" just makes the text look like a link (blue and underlined)
<a href="javascript:void(0);" onclick="getData()">Click here and check console</a>
-->

<a>Check Console</a>

<script>
//function getData() {
		/* set URL of the SP list
		*	Format: 
		*		var _p_url= <BaseURL_and_SubSites> + _api/web/lists/GetByTitle('<NAME OF THE LIST>')/items
		*/
		var _p_url="https://sharepoint.com/subsites/MyName/_api/web/lists/GetByTitle('my_first_SP_list')/items";
	
		$.ajax({
			url: _p_url,
			type: "GET",
			headers: {
				"accept": "application/json;odata=verbose",
			},
			success: onSuccess,
			error: onError
		});

		function onError(error) {
			console.log(error);
			console.log(JSON.stringify(error));
		}
	
	function onSuccess(data){
		// Assigns all the items to the variable listItems and then loops through all of them.
		// You use column names to grab the right part of the data, but sometimes the actual column name is weird
		
		var listItems = data.d.results;
		for (var i = 0; i < listItems.length; i++){
			//console.log(listItems[i].NAMEOFCOLUMN);
			//GET OTHER COLUMN NAMES, AND REF THEM LIKE 'Title'
			console.log(listItems[i].column1);
		}
	}
//close getData function
//}

</script>