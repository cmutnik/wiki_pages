# SharePoint Wiki Page

HTML files run on SharePoint (SP), but they cant reference other pages on the same SP site.  In order to reference other pages, such as SP lists, you have to change a file extension from `html` to `aspx`.  The same code will not be able to retrieve SP lists, if uploaded in a `*.html` file.

The two files provided here have the same code.  [`howToPullSPData.html`](./howToPullSPData.html) is not able to access the SP list, designated as `var _p_url`, but [`howToPullSPData.aspx`](./howToPullSPData.aspx) is able to.  This code uses `ajax` to query SP and retrieve the list data.  To modify this code for future use: the URL, list name, and column names must be changed.

The desired URL is stored by the variable `_p_url`: 
```js
var _p_url="https://sharepoint.com/subsites/MyName/_api/web/lists/GetByTitle('my_first_SP_list')/items";
```
Any SP query URL will be of the form `<BaseURL and SubSites> + _api/web/lists/GetByTitle('<NAME OF THE LIST>')/items`.  The base URL and list name will change, but the other components will remain the same.  

Changing the column names are the only other modifications that needs to be made.  This example uses the column name 'column1':
```js
console.log(listItems[i].column1);
```
If columns are added to a SP list using the 'quick edit' feature, the names are often jumbled.  For example, a column named `XY Value` would register as `XY_x0020_Value`.  For this reason, it is best to add column names without using the 'quick edit' feature.<br>
If the column names are already set, they can be retrieved using either method:<br>
1. By entering the URL assigned to `_p_url` directly into your browsers address bar.  The data will be displayed using xml.  Just search the page for elements of SP list, to see the designation used to access that element.
2. Try hover over the column in list settings to see what the URL says the name is.  