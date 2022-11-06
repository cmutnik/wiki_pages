# JavaScript Basics

----
### Read in File
To read in a file and print its contents to the HTML page, look in [`readinfile/`](./readinfile/) and [`readinfileUsingCSS/`](./readinfileUsingCSS/).

In [`readinfile/`](./readinfile/):<br>
The page [`ChooseFileToReadAndPrint.html`](./readinfile/ChooseFileToReadAndPrint.html) 
calls the JS script [`app.js`](./readinfile/app.js) and allows a user to choose the file they want to read-in. Then, the scripts takes the contents of the chosen file and prints them to the HTML page.<br>
To remove the text box and print directly on the HTML page, change `textarea` to `pre`, in the following line:
```html
<textarea id="fileContents"></textarea>
```
<!-- Changing `textarea` to `pre`, in the following line:
```html
<textarea id="fileContents"></textarea>
```
removes the text box and just prints directly to the HTML page. -->

----
### Read in File and Print to Console
Use [`readinPrintConsole/index.html`](readinPrintConsole/index.html)

----
### Read File Using ajax
The script [`ajax_textFromURL.html`](./ajax_textFromURL.html) shows how to read in files, using `ajax`.<br>
NOTE:<br>
You cannot read in local files with this method.  You must read in files hosted online.  This script uses example files hosted by github:
```js
var _url='https://raw.githubusercontent.com/cmutnik/wiki_pages/master/bah/js_basics/sampledata/sample3.csv';
//...
url: _url,
```

----
### Read in SharePoint List
Instructions and an explanation can be found on the [SharePoint page README.](./SharePoint/README.md)